/**
 * 
 */
package org.iita.trainingunit.staff.action;

import java.util.Date;

import org.iita.crm.model.ActionLog;
import org.iita.security.Authorize;
import org.iita.trainingunit.staff.model.StaffDevelopment.APPROVALSTATUS;
import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation.EVALUATIONSTATUS;
import org.iita.trainingunit.staff.service.StaffService;

import com.opensymphony.xwork2.Action;

/**
 * @author ken
 *
 */
public class DispatchStaffDevelopmentAction extends ViewStaffDevelopmentAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @param taService
	 */
	public DispatchStaffDevelopmentAction(StaffService staffService) {
		super(staffService);
	}

	/**
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() {
		if (this.sd != null) {
			
			//Takes care of evaluation due		
			if (this.sd.getOwner().getId().equals(getUser().getId())){
				if(this.sd.getApprovalStatus().equals(APPROVALSTATUS.APPROVED)){
					if(this.sd.isEvaluationDue()){
						if(this.sd.getEvaluation()!=null){
							if(!this.sd.getEvaluation().getEvaluationStatus().equals(EVALUATIONSTATUS.FINALIZED))
								return "evaluation";
						}else
							return "evaluation";
					}
				}
			}
			
			if (this.sd.getOwner().getId().equals(getUser().getId())) {
				// user owns the TA
				switch (this.sd.getApprovalStatus()) {
				case REJECTED:
					return "editable";

				case SUPERVISOR:
					if (this.sd.getSupervisor()!=null){
						if(this.sd.getSupervisor().getId().equals(getUser().getId()))
							
						return "supervisor";
					} 
					return "readonly";
				
				case WAITINGFORHOD:
					System.out.println("HOD return: " + this.sd.getHod().getId());
					if (this.sd.getHod()!=null){
						if (this.sd.getHod().getId().equals(getUser().getId())) 
						System.out.println("HOD return: " + this.sd.getHod().getId());
						return "hod";
					}
					return "readonly";
					
				case WAITINGFORCDO:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId())) 
							return "cdo";
					} else if (Authorize.hasRole(getUser(), "ROLE_TRAININGUNITHEAD")) {
						return "cdo";
					} 
					return "readonly";
				
				case WAITINGFORCOMMITTEE:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId()))
							return "cmt";
					} else if (Authorize.hasRole(getUser(), "ROLE_COMMITTEE")) {
						return "cmt";
					} 
					return "readonly";
					
				case WAITINGFORDDGPCD:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId()))
							return "ddg";
					} else if (Authorize.hasRole(getUser(), "ROLE_DDGPCD")) {
						return "ddg";
					} 
					return "readonly";
					
				case APPROVED:
					if (this.sd.getOwner() != null	&& this.sd.getOwner().getId().equals(getUser().getId())) {
						if (this.sd.getEndDate().before(new Date())){
							if(this.sd.getEvaluation()!=null){
								if(this.sd.getEvaluation().getEvaluationStatus().equals(EVALUATIONSTATUS.OPEN))
									return "evaluation";
								else
									return "readonly";
							}else
								return "evaluation";
						}else
							return "readonly";
					}else
						return "readonly";
				case REPORTFILED:
				default:
					return "readonly";
				}
			} else {
				// somebody else's application
				if(this.sd.getApprovalStatus()!=null){
				switch (this.sd.getApprovalStatus()) {
				case SUPERVISOR:
					if (this.sd.getSupervisor()!=null){
						if (this.sd.getSupervisor().getId().equals(getUser().getId())) 
						return "supervisor";
					}
					return "readonly";
				
				case WAITINGFORHOD:
					LOG.info("HOD return: " + this.sd.getHod().getId());
					if (this.sd.getHod()!=null){
						if (this.sd.getHod().getId().equals(getUser().getId()))
						System.out.println("DIRECTOR return: " + this.sd.getHod().getId());
						return "hod";
					} 
					return "readonly";
				
				case WAITINGFORCDO:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId()))
						return "cdo";
					} else if (Authorize.hasRole(getUser(), "ROLE_TRAININGUNITHEAD")) {
						return "cdo";
					} 
					return "readonly";
					
				case WAITINGFORCOMMITTEE:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId()))
						return "cmt";
					} else if (Authorize.hasRole(getUser(), "ROLE_COMMITTEE")) {
						return "cmt";
					} 
					return "readonly";
				
				case WAITINGFORDDGPCD:
					if (this.sd.getNextApprover()!=null){
						if (this.sd.getNextApprover().getId().equals(getUser().getId()))
						return "ddg";
					} else if (Authorize.hasRole(getUser(), "ROLE_DDGPCD")) {
						return "ddg";
					} 
					return "readonly";
					
				case APPROVED:
					if (this.sd.getOwner() != null	&& this.sd.getOwner().getId().equals(getUser().getId())) {
						if (this.sd.getEndDate().before(new Date())){
							if(this.sd.getEvaluation()!=null){
								if(this.sd.getEvaluation().getEvaluationStatus().equals(EVALUATIONSTATUS.OPEN))
									return "evaluation";
								else
									return "readonly";
							}else
								return "evaluation";
						}else
							return "readonly";
					}else
						return "readonly";
				case REPORTFILED:
					return "readonly";

				default:
					boolean isAllowed = false;
					for (ActionLog alog : this.sd.getActionLog()) {
						if (alog.getUser().equals(getUser())){
							isAllowed = true;
							break;
						}
					} 
					if(isAllowed)
						return "readonly";
					else {
						//clearSd();
						addActionError("You are not allowed to access details of the requested staff training and development application.");
						return Action.ERROR;
					}
				}
				}else{
					addActionError("Approval status cannot be null at this stage.");
					return Action.ERROR;
				}
			}
		} else {
			addActionError("No such Staff Training and Development application.");
			return Action.ERROR;
		}
	}
}

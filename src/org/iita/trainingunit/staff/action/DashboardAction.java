/**
 * 
 */
package org.iita.trainingunit.staff.action;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.iita.security.model.User;
import org.iita.security.service.UserService;
import org.iita.trainingunit.applications.service.impl.CDOApplicationException;
import org.iita.trainingunit.service.TrainingUnitService;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.model.StaffDevelopment.APPROVALSTATUS;
import org.iita.trainingunit.staff.model.StaffDevelopment.STATUS;
import org.iita.trainingunit.staff.service.StaffService;
import org.iita.util.PagedResult;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.conversion.annotations.TypeConversion;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;

/** * @author ken
 *
 */
public class DashboardAction extends org.iita.crm.action.DashboardAction implements Preparable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//private TrainingUnitService service;
	private StaffService staffService;
	private UserService userService;
	private PagedResult<StaffDevelopment> paged;
	private int startAt=0, maxResults=50;
	private StaffDevelopment staffDev;
	private Long id;
	private List<User> supervisors;
	private List<User> hods;
	private String comment;
	
	public DashboardAction(TrainingUnitService trainingUnitService, StaffService staffService, UserService userService) {
		super(trainingUnitService);
		//this.service = trainingUnitService;
		this.staffService = staffService;
		this.userService = userService;
	}
	
	public PagedResult<StaffDevelopment> getPaged() {
		return paged;
	}
	
	public int getStartAt() {
		return startAt;
	}
	
	public void setStartAt(int startAt) {
		this.startAt = startAt;
	}
	
	public void setMaxResults(int maxResults) {
		this.maxResults = maxResults;
	}
	
	/**
	 * @see org.iita.struts.BaseAction#execute()
	 */
	@Override
	public void prepare() {
		super.prepare();
		try {
			if(getUser().hasRole("ROLE_ADMIN") || getUser().hasRole("ROLE_MANAGER") || getUser().hasRole("ROLE_TRAININGUNITHEAD"))
				this.paged = this.staffService.getApplications(this.startAt, this.maxResults);
			else
				this.paged = this.staffService.getApplications(this.getUser(), this.startAt, this.maxResults);
		} catch (CDOApplicationException e) {
			addActionError(e.getMessage());
		}
		
		if(this.id != null) 
			this.staffDev = this.staffService.loadApplication(this.id);
		
		if(this.staffDev!=null){
			this.supervisors = (List<User>) this.staffService.findByRole("ROLE_SUPERVISOR", getUser(), (this.staffDev.getSupervisor()!=null)?this.staffDev.getSupervisor():null);
			this.hods = (List<User>) this.staffService.findByRole("ROLE_HOD", getUser(), (this.staffDev.getHod()!=null)?this.staffDev.getHod():null);
		}else{
			this.supervisors = (List<User>) this.staffService.findByRole("ROLE_SUPERVISOR", getUser(), null);
			this.hods = (List<User>) this.staffService.findByRole("ROLE_HOD", getUser(), null);
		}
		
	}
	
	/**
	 * @see org.iita.struts.BaseAction#execute()
	 */
	@Override
	public String execute() {
		super.execute();
		
		return Action.SUCCESS;
	}
	
	/**
	 * @see org.iita.struts.BaseAction#execute()
	 */
	public String edit() {
		if(this.id != null) 
			this.staffDev = this.staffService.loadApplication(this.id);
		
		return Action.SUCCESS;
	}
	
	//Allows continues updates
	public String save(){
		this.staffDev.setApprovalStatus(null);
		this.staffService.saveApplication(this.staffDev);
		return "input";
	}
	
	//Finalizes submission and deprives further updates
	@Validations(requiredStrings = { 
			@RequiredStringValidator(fieldName = "staffDev.lastName", trim = true, message = "Input your last name")
			,@RequiredStringValidator(fieldName = "staffDev.firstName", message = "Input your first name")
			, @RequiredStringValidator(fieldName = "staffDev.designation", message = "Specify your designation")
			, @RequiredStringValidator(fieldName = "staffDev.payGrade", message = "Specify your pay grade") 
			, @RequiredStringValidator(fieldName = "staffDev.unit", message = "Specify your unit/program")
			, @RequiredStringValidator(fieldName = "staffDev.dutyStation", message = "Specify your duty station")
			, @RequiredStringValidator(fieldName = "staffDev.hub", message = "Specify your hub")
			, @RequiredStringValidator(fieldName = "staffDev.gender", message = "Specify your gender")
			, @RequiredStringValidator(fieldName = "staffDev.highestQualify", message = "Enter your highest qualification")
			, @RequiredStringValidator(fieldName = "staffDev.jobDescription", message = "Enter your job description")
			, @RequiredStringValidator(fieldName = "staffDev.trainingType", message = "Specify training type")
			, @RequiredStringValidator(fieldName = "staffDev.mandateCrop", message = "Specify mandate crop")
			, @RequiredStringValidator(fieldName = "staffDev.researchSubject", message = "Specify research subject")
			, @RequiredStringValidator(fieldName = "staffDev.applyCourse", message = "Specify course applying for")
			, @RequiredStringValidator(fieldName = "staffDev.desiredQualify", message = "Specify desired qualification")
			, @RequiredStringValidator(fieldName = "staffDev.organizer", message = "Specify the organizer")
			, @RequiredStringValidator(fieldName = "staffDev.location", message = "Specify course location")
			, @RequiredStringValidator(fieldName = "staffDev.country", message = "Specify country for the training")
			, @RequiredStringValidator(fieldName = "staffDev.purpose", message = "Specify purpose of the course")
			, @RequiredStringValidator(fieldName = "staffDev.objectives", message = "Specify course objectives")
			, @RequiredStringValidator(fieldName = "staffDev.professionalNeeds", message = "Specify how does the course meet your professional needs")
			, @RequiredStringValidator(fieldName = "staffDev.completion", message = "Specify how you intend to use your new skills after the completion of the course")
			, @RequiredStringValidator(fieldName = "staffDev.addedValue", message = "Specify if course will bring added value to IITA/Unit")
			, @RequiredStringValidator(fieldName = "staffDev.otherFundingSource", message = "Specify other source of funding")}
			, requiredFields = { @RequiredFieldValidator(fieldName = "staffDev.directorate", message = "Specify your directorate")
			, @RequiredFieldValidator(fieldName = "supervisor", message = "Specify your supervisor")
			, @RequiredFieldValidator(fieldName = "hod", message = "Specify your Head of Unit")
			, @RequiredFieldValidator(fieldName = "staffDev.startDate", message = "Specify course start date")
			, @RequiredFieldValidator(fieldName = "staffDev.endDate", message = "Specify course end date")
			, @RequiredFieldValidator(fieldName = "staffDev.tuitionFee", message = "Specify tuition fee")
			, @RequiredFieldValidator(fieldName = "staffDev.visaFee", message = "Specify visa fee")
			, @RequiredFieldValidator(fieldName = "staffDev.flightShuttleFee", message = "Specify flight/shuttle fee")
			, @RequiredFieldValidator(fieldName = "staffDev.perDiem", message = "Specify per diem")
			, @RequiredFieldValidator(fieldName = "staffDev.otherFees", message = "Specify your other fees")
			, @RequiredFieldValidator(fieldName = "staffDev.totalAmtRequest", message = "Specify total amount request")})
	public String apply(){
		if(this.staffDev.getStatus().equals(STATUS.NEW) || this.staffDev.getStatus().equals(APPROVALSTATUS.REJECTED)){
			this.staffDev.setStatus(STATUS.SUBMITTED);
			this.staffDev.setApprovalStatus(APPROVALSTATUS.SUPERVISOR);
			
			this.staffDev.setNextApprover(this.staffDev.getSupervisor());
			
			this.staffService.saveApplication(this.staffDev);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " filed!");
		}else{
			addActionMessage("Request with status: " + this.staffDev.getStatus() + " cannot be submitted afresh!");
		}
		return Action.SUCCESS;
	}

	//Supervisor endorses application
	public String endorse(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.SUPERVISOR) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			this.staffDev.setApprovalStatus(APPROVALSTATUS.WAITINGFORHOD);
			this.staffDev.setNextApprover(this.staffDev.getHod());
			this.staffDev=this.staffService.supervisorApplication(this.staffDev);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " endorsed!");
		}else{
			addActionMessage("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
			return Action.ERROR;
		}
		return Action.SUCCESS;
	}
	
	//Head of Unit approves application
	public String approveHod(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORHOD) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			//Only Talent grant would go through Committee Approval
			if(this.staffDev.getTrainingType().equalsIgnoreCase("Talent (Internal)")){
				this.staffDev.setApprovalStatus(APPROVALSTATUS.WAITINGFORCOMMITTEE);
				// find Committee Representatives
				List<User> cmtList = this.userService.findByRole("ROLE_COMMITTEE");
				if (cmtList != null && cmtList.size() > 0) {
					for (User cmt : cmtList) {
						this.staffDev.setNextApprover(cmt);
						break;
					}
				}
			}else{
				this.staffDev.setApprovalStatus(APPROVALSTATUS.WAITINGFORCDO);
			}
			
			this.staffDev=this.staffService.hodApproveApplication(this.staffDev, this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " approved by HOD!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
			return Action.ERROR;
		}
		return Action.SUCCESS;
	}
	
	//Head of Unit rejects application
	public String rejectHod(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORHOD) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			//this.staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.staffDev=this.staffService.hodRejectApplication(this.staffDev, this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " rejected by HOD!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
			return Action.ERROR;
		}
		return Action.SUCCESS;
	}
	
	//Committee Rep approves application
	public String approveCommittee(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCOMMITTEE) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			this.staffDev.setApprovalStatus(APPROVALSTATUS.WAITINGFORCDO);
			List<User> cmtList = this.userService.findByRole("ROLE_TRAININGUNITHEAD");
			if (cmtList != null && cmtList.size() > 0) {
				for (User cmt : cmtList) {
					this.staffDev.setNextApprover(cmt);
					break;
				}
			}
			this.staffDev=this.staffService.cmtApproveApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " approved by Committee Representative!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	//Committee Rep rejects application
	public String rejectCommittee(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCOMMITTEE) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			//this.staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.staffDev=this.staffService.cmtRejectApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " rejected by Committee Representative!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	//CDO Head approves application
	public String approveCDOHead(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCDO) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			/*if(staffDev.getTrainingType().equalsIgnoreCase("Talent (Internal)")){
				this.staffDev.setApprovalStatus(APPROVALSTATUS.WAITINGFORDDGPCD);
				List<User> cmtList = this.userService.findByRole("ROLE_DDGPCD");
				if (cmtList != null && cmtList.size() > 0) {
					for (User cmt : cmtList) {
						this.staffDev.setNextApprover(cmt);
						break;
					}
				}
			}else{*/
				this.staffDev.setApprovalStatus(APPROVALSTATUS.APPROVED);
				this.staffDev.setNextApprover(null);
			//}
			
			this.staffDev=this.staffService.cdoApproveApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " approved by Head CDO!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	//CDO Head rejects application
	public String rejectCDOHead(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCDO) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			//this.staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.staffDev=this.staffService.cdoRejectApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " rejected by Head CDO!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	
	//DDG PCD approves application
	public String approveDDG(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORDDGPCD) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			this.staffDev.setApprovalStatus(APPROVALSTATUS.APPROVED);
			this.staffDev.setNextApprover(null);
			this.staffDev=this.staffService.ddgApproveApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " approved by DDG PCD!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	//DDG PCD rejects application
	public String rejectDDG(){
		if(this.staffDev.getStatus().equals(STATUS.SUBMITTED) && this.staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORDDGPCD) && this.staffDev.getNextApprover().getId().equals(getUser().getId())){
			//this.staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.staffDev=this.staffService.ddgRejectApplication(this.staffDev, getUser(), this.comment);
			addActionMessage("Application request with status " + this.staffDev.getStatus() + " rejected by DDG PCD!");
		}else{
			addActionError("Access to " + this.staffDev.getOwner().getFullName() + " application denied!");
		}
		return Action.SUCCESS;
	}
	
	//Initializes new application form
	public String createNew(){
		this.staffDev = this.staffService.createNew(getUser());
		if(this.staffDev!=null)
			this.id = this.staffDev.getId();
		
		return "new";
	}

	//Allows delete when STATUS is NEW
	public String delete(){
		if(this.id!=0){
			if(this.staffService.deleteApplication(this.id)==true)
				addActionMessage("Application deleted successfully!");
			else
				addActionMessage("Application could not be deleted! Check STATUS & try again.");
		}
		return Action.SUCCESS;
	}
	

	/**
	 * @param staffDev the staffDev to set
	 */
	public void setStaffDev(StaffDevelopment staffDev) {
		this.staffDev = staffDev;
	}

	/**
	 * @return the staffDev
	 */
	public StaffDevelopment getStaffDev() {
		return staffDev;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * @return the supervisors
	 */
	public List<User> getSupervisors() {
		if (this.staffDev != null && this.staffDev.getSupervisor() != null && !this.supervisors.contains(this.staffDev.getSupervisor())) {
			this.supervisors.add(0, this.staffDev.getSupervisor());
			Collections.sort(this.supervisors, new Comparator<User>() {
				@Override
				public int compare(User o1, User o2) {
					if (o1.getLastName() == null)
						return o1.getUsername().compareTo(o2.getUsername());
					else
						return o1.getLastName().compareTo(o2.getLastName());
				}
			});
		}
		return this.supervisors;
	}
	
	/**
	 * @return the hods
	 */
	public List<User> getHods() {
		if (this.staffDev != null && this.staffDev.getHod() != null && !this.hods.contains(this.staffDev.getHod())) {
			this.hods.add(0, this.staffDev.getHod());
			Collections.sort(this.hods, new Comparator<User>() {
				@Override
				public int compare(User o1, User o2) {
					if (o1.getLastName() == null)
						return o1.getUsername().compareTo(o2.getUsername());
					else
						return o1.getLastName().compareTo(o2.getLastName());
				}
			});
		}
		return this.hods;
	}
	
	/**
	 * @return the supervisor
	 */
	@TypeConversion(converter = "genericConverter")
	public User getSupervisor() {
		return this.staffDev == null ? null : this.staffDev.getSupervisor();
	}

	/**
	 * @param supervisor the supervisor to set
	 */
	public void setSupervisor(User supervisor) {
		if (this.staffDev != null)
			this.staffDev.setSupervisor(supervisor);
	}
	
	/**
	 * @return the hod
	 */
	@TypeConversion(converter = "genericConverter")
	public User getHod() {
		return this.staffDev == null ? null : this.staffDev.getHod();
	}

	/**
	 * @param hod the hod to set
	 */
	public void setHod(User hod) {
		if (this.staffDev != null)
			this.staffDev.setHod(hod);
	}

	/**
	 * @param comment the comment to set
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}

	/**
	 * @return the comment
	 */
	public String getComment() {
		return comment;
	}

}

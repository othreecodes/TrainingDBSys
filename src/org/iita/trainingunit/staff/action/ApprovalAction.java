/**
 * 
 */
package org.iita.trainingunit.staff.action;

import java.util.List;

import org.iita.security.model.User;
import org.iita.trainingunit.applications.service.impl.CDOApplicationException;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.service.StaffService;

import com.opensymphony.xwork2.Action;

/**
 * @author ken
 *
 */
public class ApprovalAction extends ListStaffDevelopmentAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public ApprovalAction(StaffService staffService) {
		super(staffService);
	}

	@Override
	public String execute() {
		try {
			//System.out.println("Try it here");
			this.paged = this.staffService.getAwaitingApproval(getUser(), startAt, maxResults);
		} catch (CDOApplicationException e) {
			//System.out.println("Try it here error");
			addActionError(e.getMessage());
			return Action.ERROR;
		}
		
		if (this.paged.getTotalHits() == 1){
			//System.out.println("Try it here: HIT= " + this.paged.getTotalHits());
			return "single";
		}
		return Action.SUCCESS;
	}
	
	public List<User> waitingFor(StaffDevelopment staffDev) {
		return this.staffService.getWaitingFor(staffDev);
	}
}

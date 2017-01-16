/**
 * 
 */
package org.iita.trainingunit.staff.action;

import org.iita.struts.BaseAction;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.service.StaffService;
import org.iita.util.PagedResult;

/**
 * @author ken
 *
 */
public class ListStaffDevelopmentAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected StaffService staffService;
	protected int startAt = 0, maxResults = 50;
	protected PagedResult<StaffDevelopment> paged;

	public ListStaffDevelopmentAction(StaffService staffService) {
		this.staffService = staffService;
	}

	public PagedResult<StaffDevelopment> getPaged() {
		return paged;
	}

	public void setStartAt(int startAt) {
		this.startAt = startAt;
	}
}

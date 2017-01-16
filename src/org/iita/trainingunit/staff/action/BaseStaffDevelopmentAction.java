/**
 * 
 */
package org.iita.trainingunit.staff.action;

import org.iita.struts.BaseAction;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.service.StaffService;

/**
 * @author ken
 *
 */
public abstract class BaseStaffDevelopmentAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected StaffService staffService = null;
	private Long id = null;
	
	protected StaffDevelopment sd = null;
	protected StaffDevelopment staffDev = null;

	public BaseStaffDevelopmentAction(StaffService staffService) {
		super();
		this.staffService = staffService;
	}

	@Override
	public void prepare() {
		LOG.trace("prepare() called");
		//System.out.println("prepare() called ID " + this.id);
		if (this.id != null) {
			this.sd = this.staffService.load(id);
			//System.out.println("TA: " + this.ta);
		}
	}

	/**
	 * @param id
	 */
	public void setId(Long id) {
		this.id = id;
	}
	
	/**
	 * @return the Id
	 */
	public Long getId() {
		return id;
	}
	
	/**
	 * @return the staff development application
	 */
	public StaffDevelopment getSd() {
		return sd;
	}
	
	/**
	 * @return the staff development application
	 */
	public StaffDevelopment getStaffDev() {
		return sd;
	}

}

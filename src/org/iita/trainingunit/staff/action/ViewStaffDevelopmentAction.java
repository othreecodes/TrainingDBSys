/**
 * 
 */
package org.iita.trainingunit.staff.action;

import org.iita.trainingunit.staff.service.StaffService;


/**
 * @author ken
 *
 */
public class ViewStaffDevelopmentAction extends BaseStaffDevelopmentAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String objMet;
	private String skillEnhanced;
	private String appliedPractice;
	private String valueRole;
	private String additionalComments;

	public ViewStaffDevelopmentAction(StaffService staffService) {
		super(staffService);
	}
	
	public void prepare(){
		super.prepare();
		if(getSd()!=null){
			if(getSd().getEvaluation()!=null){
				this.objMet = getSd().getEvaluation().getObjMet().toString();
				this.skillEnhanced = getSd().getEvaluation().getSkillEnhanced().toString();
				this.appliedPractice = getSd().getEvaluation().getAppliedPractice().toString();
				this.valueRole = getSd().getEvaluation().getValueRole().toString();
				this.additionalComments = getSd().getEvaluation().getAdditionalComments();
			}
		}
	}


	/**
	 * @return the objMet
	 */
	public String getObjMet() {
		return objMet;
	}


	/**
	 * @return the skillEnhanced
	 */
	public String getSkillEnhanced() {
		return skillEnhanced;
	}


	/**
	 * @return the appliedPractice
	 */
	public String getAppliedPractice() {
		return appliedPractice;
	}

	/**
	 * @return the valueRole
	 */
	public String getValueRole() {
		return valueRole;
	}


	/**
	 * @return the additionalComments
	 */
	public String getAdditionalComments() {
		return additionalComments;
	}
}

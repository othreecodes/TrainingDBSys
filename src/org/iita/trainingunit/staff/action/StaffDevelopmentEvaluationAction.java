/**
 * 
 */
package org.iita.trainingunit.staff.action;

import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation;
import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation.EVALUATIONSTATUS;
import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation.STATUS;
import org.iita.trainingunit.staff.service.StaffService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import com.opensymphony.xwork2.validator.annotations.Validations;


/**
 * @author ken
 *
 */
public class StaffDevelopmentEvaluationAction extends BaseStaffDevelopmentAction implements Preparable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String objMet;
	private String skillEnhanced;
	private String appliedPractice;
	private String valueRole;
	private String additionalComments;
	private Long evaluationId;

	public StaffDevelopmentEvaluationAction(StaffService staffService) {
		super(staffService);
	}
	
	/**
	 * @param objMet the objMet to set
	 */
	public void setObjMet(String objMet) {
		this.objMet = objMet;
	}

	/**
	 * @return the objMet
	 */
	public String getObjMet() {
		return objMet;
	}

	/**
	 * @param skillEnhanced the skillEnhanced to set
	 */
	public void setSkillEnhanced(String skillEnhanced) {
		this.skillEnhanced = skillEnhanced;
	}

	/**
	 * @return the skillEnhanced
	 */
	public String getSkillEnhanced() {
		return skillEnhanced;
	}

	/**
	 * @param appliedPractice the appliedPractice to set
	 */
	public void setAppliedPractice(String appliedPractice) {
		this.appliedPractice = appliedPractice;
	}

	/**
	 * @return the appliedPractice
	 */
	public String getAppliedPractice() {
		return appliedPractice;
	}

	/**
	 * @param valueRole the valueRole to set
	 */
	public void setValueRole(String valueRole) {
		this.valueRole = valueRole;
	}

	/**
	 * @return the valueRole
	 */
	public String getValueRole() {
		return valueRole;
	}

	/**
	 * @param additionalComments the additionalComments to set
	 */
	public void setAdditionalComments(String additionalComments) {
		this.additionalComments = additionalComments;
	}

	/**
	 * @return the additionalComments
	 */
	public String getAdditionalComments() {
		return additionalComments;
	}

	/**
	 * @param evaluationId the evaluationId to set
	 */
	public void setEvaluationId(Long evaluationId) {
		this.evaluationId = evaluationId;
	}

	/**
	 * @return the evaluationId
	 */
	public Long getEvaluationId() {
		return evaluationId;
	}
	
	public void prepare(){
		if(getId()!=null)
			this.sd = this.staffService.load(getId());
		
		if(this.sd.getEvaluation()!=null)
			this.evaluationId = this.sd.getEvaluation().getId();
	}
	
	public String show(){
		if(getId()!=null)
			this.sd = this.staffService.load(getId());
		
		if(this.sd!=null)
			if(this.sd.getEvaluation()!=null){
				this.evaluationId = this.sd.getEvaluation().getId();
				this.objMet = this.sd.getEvaluation().getObjMet().toString();
				this.skillEnhanced = this.sd.getEvaluation().getSkillEnhanced().toString();
				this.appliedPractice = this.sd.getEvaluation().getAppliedPractice().toString();
				this.valueRole = this.sd.getEvaluation().getValueRole().toString();
				this.additionalComments = this.sd.getEvaluation().getAdditionalComments();				
			}
		return "input";
	}

	public String save(){
		StaffDevelopmentEvaluation evaluation = new StaffDevelopmentEvaluation();
		//System.out.println("SD id: " + this.sd.getId());
		
		if(this.sd.getEvaluation()!=null){
			//System.out.println("SD Evaluation id: " + this.sd.getEvaluation().getId());
			evaluation = this.sd.getEvaluation();
			evaluation.setAdditionalComments(this.additionalComments);
			evaluation.setStaffdevelopment(this.sd);
			
			if(this.objMet!=null){
				if(this.objMet.equals("STRONGLYAGREE"))
					evaluation.setObjMet(STATUS.SRONGLYAGREE);
				else if(this.objMet.equals("AGREE"))
					evaluation.setObjMet(STATUS.AGREE);
				else if(this.objMet.equals("DISAGREE"))
					evaluation.setObjMet(STATUS.DISAGREE);
				else if(this.objMet.equals("NEUTRAL"))
					evaluation.setObjMet(STATUS.NEUTRAL);
				else if(this.objMet.equals("STRONGLYDISAGREE"))
					evaluation.setObjMet(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.appliedPractice!=null){
				if(this.appliedPractice.equals("STRONGLYAGREE"))
					evaluation.setAppliedPractice(STATUS.SRONGLYAGREE);
				else if(this.appliedPractice.equals("AGREE"))
					evaluation.setAppliedPractice(STATUS.AGREE);
				else if(this.appliedPractice.equals("DISAGREE"))
					evaluation.setAppliedPractice(STATUS.DISAGREE);
				else if(this.appliedPractice.equals("NEUTRAL"))
					evaluation.setAppliedPractice(STATUS.NEUTRAL);
				else if(this.appliedPractice.equals("STRONGLYDISAGREE"))
					evaluation.setAppliedPractice(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.valueRole!=null){
				if(this.valueRole.equals("STRONGLYAGREE"))
					evaluation.setValueRole(STATUS.SRONGLYAGREE);
				else if(this.valueRole.equals("AGREE"))
					evaluation.setValueRole(STATUS.AGREE);
				else if(this.valueRole.equals("DISAGREE"))
					evaluation.setValueRole(STATUS.DISAGREE);
				else if(this.valueRole.equals("NEUTRAL"))
					evaluation.setValueRole(STATUS.NEUTRAL);
				else if(this.valueRole.equals("STRONGLYDISAGREE"))
					evaluation.setValueRole(STATUS.STRONGLYDISAGREE);
			}
			
			evaluation.setEvaluationStatus(EVALUATIONSTATUS.OPEN);
			
			if(this.valueRole!=null){
				if(this.skillEnhanced.equals("STRONGLYAGREE"))
					evaluation.setSkillEnhanced(STATUS.SRONGLYAGREE);
				else if(this.skillEnhanced.equals("AGREE"))
					evaluation.setSkillEnhanced(STATUS.AGREE);
				else if(this.skillEnhanced.equals("DISAGREE"))
					evaluation.setSkillEnhanced(STATUS.DISAGREE);
				else if(this.skillEnhanced.equals("NEUTRAL"))
					evaluation.setSkillEnhanced(STATUS.NEUTRAL);
				else if(this.skillEnhanced.equals("STRONGLYDISAGREE"))
					evaluation.setSkillEnhanced(STATUS.STRONGLYDISAGREE);
			}
			
			this.sd = this.staffService.saveEvaluation(evaluation);
		}else{
			//System.out.println("SD Evaluation id: null");
			evaluation.setAdditionalComments(this.additionalComments);
			evaluation.setStaffdevelopment(this.sd);
			
			if(this.objMet!=null){
				if(this.objMet.equals("STRONGLYAGREE"))
					evaluation.setObjMet(STATUS.SRONGLYAGREE);
				else if(this.objMet.equals("AGREE"))
					evaluation.setObjMet(STATUS.AGREE);
				else if(this.objMet.equals("DISAGREE"))
					evaluation.setObjMet(STATUS.DISAGREE);
				else if(this.objMet.equals("NEUTRAL"))
					evaluation.setObjMet(STATUS.NEUTRAL);
				else if(this.objMet.equals("STRONGLYDISAGREE"))
					evaluation.setObjMet(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.appliedPractice!=null){
				if(this.appliedPractice.equals("STRONGLYAGREE"))
					evaluation.setAppliedPractice(STATUS.SRONGLYAGREE);
				else if(this.appliedPractice.equals("AGREE"))
					evaluation.setAppliedPractice(STATUS.AGREE);
				else if(this.appliedPractice.equals("DISAGREE"))
					evaluation.setAppliedPractice(STATUS.DISAGREE);
				else if(this.appliedPractice.equals("NEUTRAL"))
					evaluation.setAppliedPractice(STATUS.NEUTRAL);
				else if(this.appliedPractice.equals("STRONGLYDISAGREE"))
					evaluation.setAppliedPractice(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.valueRole!=null){
				if(this.valueRole.equals("STRONGLYAGREE"))
					evaluation.setValueRole(STATUS.SRONGLYAGREE);
				else if(this.valueRole.equals("AGREE"))
					evaluation.setValueRole(STATUS.AGREE);
				else if(this.valueRole.equals("DISAGREE"))
					evaluation.setValueRole(STATUS.DISAGREE);
				else if(this.valueRole.equals("NEUTRAL"))
					evaluation.setValueRole(STATUS.NEUTRAL);
				else if(this.valueRole.equals("STRONGLYDISAGREE"))
					evaluation.setValueRole(STATUS.STRONGLYDISAGREE);
			}
			
			evaluation.setEvaluationStatus(EVALUATIONSTATUS.OPEN);
			
			if(this.skillEnhanced!=null){
				if(this.skillEnhanced.equals("STRONGLYAGREE"))
					evaluation.setSkillEnhanced(STATUS.SRONGLYAGREE);
				else if(this.skillEnhanced.equals("AGREE"))
					evaluation.setSkillEnhanced(STATUS.AGREE);
				else if(this.skillEnhanced.equals("DISAGREE"))
					evaluation.setSkillEnhanced(STATUS.DISAGREE);
				else if(this.skillEnhanced.equals("NEUTRAL"))
					evaluation.setSkillEnhanced(STATUS.NEUTRAL);
				else if(this.skillEnhanced.equals("STRONGLYDISAGREE"))
					evaluation.setSkillEnhanced(STATUS.STRONGLYDISAGREE);
			}
			
			this.sd = this.staffService.saveEvaluation(evaluation);
		}
		
		return Action.SUCCESS;
	}
	
	@Validations(requiredStrings = { 
			@RequiredStringValidator(fieldName = "objMet", trim = true, message = "Specify if training objectives were met")
			,@RequiredStringValidator(fieldName = "skillEnhanced", message = "Specify if training enhanced your knowledge and skill")
			, @RequiredStringValidator(fieldName = "appliedPractice", message = "Specify if information could be applied to practice")
			, @RequiredStringValidator(fieldName = "valueRole", message = "Specify if course will be of value to you in your role") 
			, @RequiredStringValidator(fieldName = "additionalComments", message = "Enter any additional comments. Specify if not applicable")
			})
	public String finalized(){
		StaffDevelopmentEvaluation evaluation = new StaffDevelopmentEvaluation();
		System.out.println("Finalizing");
		
		if(evaluationId!=null){
			evaluation = this.sd.getEvaluation();
			evaluation.setAdditionalComments(this.additionalComments);
			evaluation.setStaffdevelopment(this.sd);
			
			if(this.objMet!=null){
				if(this.objMet.equals("STRONGLYAGREE"))
					evaluation.setObjMet(STATUS.SRONGLYAGREE);
				else if(this.objMet.equals("AGREE"))
					evaluation.setObjMet(STATUS.AGREE);
				else if(this.objMet.equals("DISAGREE"))
					evaluation.setObjMet(STATUS.DISAGREE);
				else if(this.objMet.equals("NEUTRAL"))
					evaluation.setObjMet(STATUS.NEUTRAL);
				else if(this.objMet.equals("STRONGLYDISAGREE"))
					evaluation.setObjMet(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.appliedPractice!=null){
				if(this.appliedPractice.equals("STRONGLYAGREE"))
					evaluation.setAppliedPractice(STATUS.SRONGLYAGREE);
				else if(this.appliedPractice.equals("AGREE"))
					evaluation.setAppliedPractice(STATUS.AGREE);
				else if(this.appliedPractice.equals("DISAGREE"))
					evaluation.setAppliedPractice(STATUS.DISAGREE);
				else if(this.appliedPractice.equals("NEUTRAL"))
					evaluation.setAppliedPractice(STATUS.NEUTRAL);
				else if(this.appliedPractice.equals("STRONGLYDISAGREE"))
					evaluation.setAppliedPractice(STATUS.STRONGLYDISAGREE);
			}
			
			if(this.valueRole!=null){
				if(this.valueRole.equals("STRONGLYAGREE"))
					evaluation.setValueRole(STATUS.SRONGLYAGREE);
				else if(this.valueRole.equals("AGREE"))
					evaluation.setValueRole(STATUS.AGREE);
				else if(this.valueRole.equals("DISAGREE"))
					evaluation.setValueRole(STATUS.DISAGREE);
				else if(this.valueRole.equals("NEUTRAL"))
					evaluation.setValueRole(STATUS.NEUTRAL);
				else if(this.valueRole.equals("STRONGLYDISAGREE"))
					evaluation.setValueRole(STATUS.STRONGLYDISAGREE);
			}
			
			evaluation.setEvaluationStatus(EVALUATIONSTATUS.FINALIZED);
			
			if(this.skillEnhanced!=null){
				if(this.skillEnhanced.equals("STRONGLYAGREE"))
					evaluation.setSkillEnhanced(STATUS.SRONGLYAGREE);
				else if(this.skillEnhanced.equals("AGREE"))
					evaluation.setSkillEnhanced(STATUS.AGREE);
				else if(this.skillEnhanced.equals("DISAGREE"))
					evaluation.setSkillEnhanced(STATUS.DISAGREE);
				else if(this.skillEnhanced.equals("NEUTRAL"))
					evaluation.setSkillEnhanced(STATUS.NEUTRAL);
				else if(this.skillEnhanced.equals("STRONGLYDISAGREE"))
					evaluation.setSkillEnhanced(STATUS.STRONGLYDISAGREE);
			}
			
			this.sd = this.staffService.finalizeEvaluation(evaluation);
			System.out.println("Finalized out");
		}
		
		if(this.sd.getEvaluation().getEvaluationStatus().equals(EVALUATIONSTATUS.FINALIZED)){
			addActionMessage("Evaluation finalized!");
			return "finalized";
		}else{
			addActionError("ERROR: Evaluation yet to be finalized!");
			return "error";
		}
	}
}

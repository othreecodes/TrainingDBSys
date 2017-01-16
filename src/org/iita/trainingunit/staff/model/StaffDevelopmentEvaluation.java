/**
 * 
 */
package org.iita.trainingunit.staff.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToOne;

import org.iita.entity.VersionedEntity;

/**
 * @author ken
 *
 */
@Entity
public class StaffDevelopmentEvaluation extends VersionedEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String additionalComments;
	private STATUS objMet = null;
	private STATUS skillEnhanced = null;
	private STATUS appliedPractice = null;
	private STATUS valueRole = null;
	private StaffDevelopment staffdevelopment = null;
	private EVALUATIONSTATUS evaluationStatus; 
	
	public enum STATUS {SRONGLYAGREE, AGREE, DISAGREE, NEUTRAL, STRONGLYDISAGREE}
	
	public enum EVALUATIONSTATUS {OPEN, FINALIZED}

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
	 * @param objMet the objMet to set
	 */
	public void setObjMet(STATUS objMet) {
		this.objMet = objMet;
	}

	/**
	 * @return the objMet
	 */
	@Enumerated(EnumType.STRING)
	public STATUS getObjMet() {
		return objMet;
	}

	/**
	 * @param skillEnhanced the skillEnhanced to set
	 */
	public void setSkillEnhanced(STATUS skillEnhanced) {
		this.skillEnhanced = skillEnhanced;
	}

	/**
	 * @return the skillEnhanced
	 */
	@Enumerated(EnumType.STRING)
	public STATUS getSkillEnhanced() {
		return skillEnhanced;
	}

	/**
	 * @param appliedPractice the appliedPractice to set
	 */
	public void setAppliedPractice(STATUS appliedPractice) {
		this.appliedPractice = appliedPractice;
	}

	/**
	 * @return the appliedPractice
	 */
	@Enumerated(EnumType.STRING)
	public STATUS getAppliedPractice() {
		return appliedPractice;
	}

	/**
	 * @param valueRole the valueRole to set
	 */
	public void setValueRole(STATUS valueRole) {
		this.valueRole = valueRole;
	}

	/**
	 * @return the valueRole
	 */
	@Enumerated(EnumType.STRING)
	public STATUS getValueRole() {
		return valueRole;
	}

	/**
	 * @param staffdevelopment the staffdevelopment to set
	 */
	public void setStaffdevelopment(StaffDevelopment staffdevelopment) {
		this.staffdevelopment = staffdevelopment;
	}

	/**
	 * @return the staffdevelopment	 
	 */
	@OneToOne(cascade = {}, optional = false)
	public StaffDevelopment getStaffdevelopment() {
		return staffdevelopment;
	}

	/**
	 * @param evaluationStatus the evaluationStatus to set
	 */
	public void setEvaluationStatus(EVALUATIONSTATUS evaluationStatus) {
		this.evaluationStatus = evaluationStatus;
	}

	/**
	 * @return the evaluationStatus
	 */
	@Enumerated(EnumType.STRING)
	public EVALUATIONSTATUS getEvaluationStatus() {
		return evaluationStatus;
	}
}

package org.iita.trainingunit.facilities.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

import org.hibernate.search.annotations.Indexed;
import org.iita.crm.model.AddressContact;
import org.iita.crm.model.ApplicationTag;
import org.iita.crm.model.EmailContact;
import org.iita.crm.model.EntityTag;
import org.iita.crm.model.Person;
import org.iita.crm.model.Person.Gender;
import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.applications.model.ApplicantsBioData;
import org.iita.trainingunit.applications.model.Application;
import org.iita.trainingunit.applications.model.Approval;
import org.iita.trainingunit.applications.model.EducationAndTraining;
import org.iita.trainingunit.model.Funding;

/**
 * @author othreecodes
 *
 */
 
@Entity
public class UseOfFacilities extends VersionedEntity  {
	
	/**
	 * 
	 */
	
	private static final long serialVersionUID = -4716770161488107676L;
	private ApplicantsBioData cdoBioData;
	private String synopsis;
	private String objective;
	private String facilitesRequired;
	private int months;
	private Date start;
	
	private String previousCollaborations;
	private String iitaContacts;
	private Funding sourceOfFunding;
	
	private Approval approval;

	/**
	 * @return the cdoBioData
	 */
	public ApplicantsBioData getCdoBioData() {
		return cdoBioData;
	}

	/**
	 * @param cdoBioData the cdoBioData to set
	 */
	public void setCdoBioData(ApplicantsBioData cdoBioData) {
		this.cdoBioData = cdoBioData;
	}

	/**
	 * @return the synopsis
	 */
	public String getSynopsis() {
		return synopsis;
	}

	/**
	 * @param synopsis the synopsis to set
	 */
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	/**
	 * @return the objective
	 */
	public String getObjective() {
		return objective;
	}

	/**
	 * @param objective the objective to set
	 */
	public void setObjective(String objective) {
		this.objective = objective;
	}

	/**
	 * @return the facilitesRequired
	 */
	public String getFacilitesRequired() {
		return facilitesRequired;
	}

	/**
	 * @param facilitesRequired the facilitesRequired to set
	 */
	public void setFacilitesRequired(String facilitesRequired) {
		this.facilitesRequired = facilitesRequired;
	}

	/**
	 * @return the months
	 */
	public int getMonths() {
		return months;
	}

	/**
	 * @param months the months to set
	 */
	public void setMonths(int months) {
		this.months = months;
	}

	/**
	 * @return the start
	 */
	public Date getStart() {
		return start;
	}

	/**
	 * @param start the start to set
	 */
	public void setStart(Date start) {
		this.start = start;
	}

	 
	/**
	 * @return the previousCollaborations
	 */
	public String getPreviousCollaborations() {
		return previousCollaborations;
	}

	/**
	 * @param previousCollaborations the previousCollaborations to set
	 */
	public void setPreviousCollaborations(String previousCollaborations) {
		this.previousCollaborations = previousCollaborations;
	}

	/**
	 * @return the iitaContacts
	 */
	public String getIitaContacts() {
		return iitaContacts;
	}

	/**
	 * @param iitaContacts the iitaContacts to set
	 */
	public void setIitaContacts(String iitaContacts) {
		this.iitaContacts = iitaContacts;
	}

	/**
	 * @return the sourceOfFunding
	 */
	@ManyToOne(cascade = {}, optional = true)
	public Funding getSourceOfFunding() {
		return sourceOfFunding;
	}

	/**
	 * @param sourceOfFunding the sourceOfFunding to set
	 */
	public void setSourceOfFunding(Funding sourceOfFunding) {
		this.sourceOfFunding = sourceOfFunding;
	}

	/**
	 * @return the approval
	 */
	public Approval getApproval() {
		return approval;
	}

	/**
	 * @param approval the approval to set
	 */
	public void setApproval(Approval approval) {
		this.approval = approval;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
	
	
}

package org.iita.trainingunit.facilities.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

import org.iita.crm.model.AddressContact;
import org.iita.crm.model.EmailContact;
import org.iita.crm.model.Person;
import org.iita.crm.model.Person.Gender;
import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.applications.model.ApplicantsBioData;
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
	
	private List<Collaboration> previousCollaborations;
	private List<IITAContacts> iitaContacts;
	private Funding sourceOfFunding;
	
	private Approval approval;

	public ApplicantsBioData getCdoBioData() {
		return cdoBioData;
	}

	public void setCdoBioData(ApplicantsBioData cdoBioData) {
		this.cdoBioData = cdoBioData;
	}

	public String getSynopsis() {
		return synopsis;
	}

	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}

	public String getObjective() {
		return objective;
	}

	public void setObjective(String objective) {
		this.objective = objective;
	}

	public String getFacilitesRequired() {
		return facilitesRequired;
	}

	public void setFacilitesRequired(String facilitesRequired) {
		this.facilitesRequired = facilitesRequired;
	}

	public int getMonths() {
		return months;
	}

	public void setMonths(int months) {
		this.months = months;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	@OneToMany(cascade = CascadeType.ALL)
	public List<Collaboration> getPreviousCollaborations() {
		return previousCollaborations;
	}

	public void setPreviousCollaborations(List<Collaboration> previousCollaborations) {
		this.previousCollaborations = previousCollaborations;
	}

	@OneToMany(cascade = CascadeType.ALL)
	public List<IITAContacts> getIitaContacts() {
		return iitaContacts;
	}

	public void setIitaContacts(List<IITAContacts> iitaContacts) {
		this.iitaContacts = iitaContacts;
	}

	public Funding getSourceOfFunding() {
		return sourceOfFunding;
	}

	public void setSourceOfFunding(Funding sourceOfFunding) {
		this.sourceOfFunding = sourceOfFunding;
	}

	public Approval getApproval() {
		return approval;
	}

	public void setApproval(Approval approval) {
		this.approval = approval;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}

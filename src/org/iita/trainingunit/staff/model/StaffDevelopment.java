package org.iita.trainingunit.staff.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.persistence.Transient;

import org.iita.crm.model.ActionLog;
import org.iita.entity.VersionedEntity;
import org.iita.security.UserAccess;
import org.iita.security.model.User;
import org.joda.time.Period;
import org.joda.time.PeriodType;

@Entity
public class StaffDevelopment extends VersionedEntity implements UserAccess {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User owner;
	private User nextApprover = null;
	private String referenceNumber;

	private String firstName;
	private String middleName;
	private String lastName;
	private String maidenName;
	
	private String gender;
	
	private String payGrade;
	private String designation;
	
	private String unit;
	private String dutyStation;
	
	private String directorate;
	private String hub;
	
	private User supervisor = null;
	private User hod = null;
	
	private String highestQualify;
	private String jobDescription;
	private String trainingType;
	private String applyCourse;
	private String desiredQualify;
	private String organizer;
	private String location;
	private String country;
	
	//private String duration;
	private Date startDate;
	private Date endDate;
	
	private String purpose;
	private String objectives;
	private String professionalNeeds;
	private String completion;
	private String addedValue;
	
	private Double tuitionFee;
	private Double visaFee;
	private Double flightShuttleFee;
	private Double perDiem;
	private Double otherFees;
	//private Double total;
	
	private Double totalAmtRequest;
	private String otherFundingSource;
	
	private String supportApplicant;
	private String replacementStaff;
	
	private STATUS status = STATUS.NEW;
	private APPROVALSTATUS approvalStatus = null;
	public enum STATUS {NEW, SUBMITTED}
	public enum APPTYPE {STAFFDEVELOPMENT, TALENTGRANT}
	private APPTYPE appType = APPTYPE.TALENTGRANT;
	public enum APPROVALSTATUS {SUPERVISOR, REJECTED, APPROVED, REPORTFILED, WAITINGFORHOD, WAITINGFORCOMMITTEE, WAITINGFORCDO, WAITINGFORDDGPCD}
	private List<ActionLog> actionLog = new ArrayList<ActionLog>();
	
	private List<StaffDevelopmentDocument> documents;
	private StaffDevelopmentEvaluation evaluation;
	
	private String researchSubject;
	private String mandateCrop;
	
	/**
	 * @return the owner
	 */
	@ManyToOne(optional = false, cascade = {})
	public User getOwner() {
		return owner;
	}
	/**
	 * @param owner the owner to set
	 */
	public void setOwner(User owner) {
		this.owner = owner;
	}
	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the maidenName
	 */
	public String getMaidenName() {
		return maidenName;
	}
	/**
	 * @param maidenName the maidenName to set
	 */
	public void setMaidenName(String maidenName) {
		this.maidenName = maidenName;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the payGrade
	 */
	public String getPayGrade() {
		return payGrade;
	}
	/**
	 * @param payGrade the payGrade to set
	 */
	public void setPayGrade(String payGrade) {
		this.payGrade = payGrade;
	}
	/**
	 * @return the designation
	 */
	public String getDesignation() {
		return designation;
	}
	/**
	 * @param designation the designation to set
	 */
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	/**
	 * @return the unit
	 */
	public String getUnit() {
		return unit;
	}
	/**
	 * @param unit the unit to set
	 */
	public void setUnit(String unit) {
		this.unit = unit;
	}
	/**
	 * @return the dutyStation
	 */
	public String getDutyStation() {
		return dutyStation;
	}
	/**
	 * @param dutyStation the dutyStation to set
	 */
	public void setDutyStation(String dutyStation) {
		this.dutyStation = dutyStation;
	}
	/**
	 * @return the directorate
	 */
	public String getDirectorate() {
		return directorate;
	}
	/**
	 * @param directorate the directorate to set
	 */
	public void setDirectorate(String directorate) {
		this.directorate = directorate;
	}
	/**
	 * @return the hub
	 */
	public String getHub() {
		return hub;
	}
	/**
	 * @param hub the hub to set
	 */
	public void setHub(String hub) {
		this.hub = hub;
	}
	
	/**
	 * @return the supervisor
	 */
	/**
	 * @return the supervisor
	 */
	@ManyToOne(optional = true, cascade = {})
	public User getSupervisor() {
		return supervisor;
	}
	/**
	 * @param supervisor the supervisor to set
	 */
	public void setSupervisor(User supervisor) {
		this.supervisor = supervisor;
	}
	
	/**
	 * @return the nextApprover
	 */
	/**
	 * @return the nextApprover
	 */
	@ManyToOne(optional = true, cascade = {})
	public User getNextApprover() {
		return nextApprover;
	}
	/**
	 * @param nextApprover the supervisor to set
	 */
	public void setNextApprover(User nextApprover) {
		this.nextApprover = nextApprover;
	}
	
	/**
	 * @return the hod
	 */
	/**
	 * @return the hod
	 */
	@ManyToOne(optional = true, cascade = {})
	public User getHod() {
		return hod;
	}
	/**
	 * @param hod the hod to set
	 */
	public void setHod(User hod) {
		this.hod = hod;
	}
	
	/**
	 * @return the highestQualify
	 */
	public String getHighestQualify() {
		return highestQualify;
	}
	/**
	 * @param highestQualify the highestQualify to set
	 */
	public void setHighestQualify(String highestQualify) {
		this.highestQualify = highestQualify;
	}
	/**
	 * @param jobDescription the jobDescription to set
	 */
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	/**
	 * @return the jobDescription
	 */
	public String getJobDescription() {
		return jobDescription;
	}
	/**
	 * @return the trainingType
	 */
	public String getTrainingType() {
		return trainingType;
	}
	/**
	 * @param trainingType the trainingType to set
	 */
	public void setTrainingType(String trainingType) {
		this.trainingType = trainingType;
	}
	/**
	 * @return the applyCourse
	 */
	public String getApplyCourse() {
		return applyCourse;
	}
	/**
	 * @param applyCourse the applyCourse to set
	 */
	public void setApplyCourse(String applyCourse) {
		this.applyCourse = applyCourse;
	}
	/**
	 * @return the desiredQualify
	 */
	public String getDesiredQualify() {
		return desiredQualify;
	}
	/**
	 * @param desiredQualify the desiredQualify to set
	 */
	public void setDesiredQualify(String desiredQualify) {
		this.desiredQualify = desiredQualify;
	}
	/**
	 * @return the organizer
	 */
	public String getOrganizer() {
		return organizer;
	}
	/**
	 * @param organizer the organizer to set
	 */
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}
	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}
	/**
	 * @return the country
	 */
	public String getCountry() {
		return country;
	}
	/**
	 * @param country the country to set
	 */
	public void setCountry(String country) {
		this.country = country;
	}
	/**
	 * @return the duration
	 */
	@Transient
	public String getDuration() {
		if (this.endDate != null && startDate != null) {
			Period period = new Period(startDate.getTime(), endDate.getTime(), PeriodType.days());
			int years = period.getYears();
			int months = period.getMonths();
			int weeks = period.getWeeks();
			int days = period.getDays()+1;
			
			if (years > 0)
				return years + (years == 1 ? " year" : " years");
			else if (months > 0)
				return months + (months == 1 ? " month" : " months");
			else if (weeks > 0)
				return weeks + (weeks == 1 ? " week" : " weeks");
			else if (days > 0)
				return days + (days == 1 ? " day" : " days");
			else {
				int hours = period.getHours();
				return hours + (hours == 1 ? " hour" : " hours");
			}
		} else
			return "N/A";
	}

	/**
	 * @return the startDate
	 */
	public Date getStartDate() {
		return startDate;
	}
	/**
	 * @param startDate the startDate to set
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	/**
	 * @return the endDate
	 */
	public Date getEndDate() {
		return endDate;
	}
	/**
	 * @param endDate the endDate to set
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	/**
	 * @return the purpose
	 */
	public String getPurpose() {
		return purpose;
	}
	/**
	 * @param purpose the purpose to set
	 */
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	/**
	 * @return the objectives
	 */
	public String getObjectives() {
		return objectives;
	}
	/**
	 * @param objectives the objectives to set
	 */
	public void setObjectives(String objectives) {
		this.objectives = objectives;
	}
	/**
	 * @return the professionalNeeds
	 */
	public String getProfessionalNeeds() {
		return professionalNeeds;
	}
	/**
	 * @param professionalNeeds the professionalNeeds to set
	 */
	public void setProfessionalNeeds(String professionalNeeds) {
		this.professionalNeeds = professionalNeeds;
	}
	/**
	 * @return the completion
	 */
	public String getCompletion() {
		return completion;
	}
	/**
	 * @param completion the completion to set
	 */
	public void setCompletion(String completion) {
		this.completion = completion;
	}
	/**
	 * @return the addedValue
	 */
	public String getAddedValue() {
		return addedValue;
	}
	/**
	 * @param addedValue the addedValue to set
	 */
	public void setAddedValue(String addedValue) {
		this.addedValue = addedValue;
	}
	/**
	 * @return the tuitionFee
	 */
	public Double getTuitionFee() {
		return tuitionFee;
	}
	/**
	 * @param tuitionFee the tuitionFee to set
	 */
	public void setTuitionFee(Double tuitionFee) {
		this.tuitionFee = tuitionFee;
	}
	/**
	 * @return the visaFee
	 */
	public Double getVisaFee() {
		return visaFee;
	}
	/**
	 * @param visaFee the visaFee to set
	 */
	public void setVisaFee(Double visaFee) {
		this.visaFee = visaFee;
	}
	/**
	 * @return the flightShuttleFee
	 */
	public Double getFlightShuttleFee() {
		return flightShuttleFee;
	}
	/**
	 * @param flightShuttleFee the flightShuttleFee to set
	 */
	public void setFlightShuttleFee(Double flightShuttleFee) {
		this.flightShuttleFee = flightShuttleFee;
	}
	/**
	 * @return the perDiem
	 */
	public Double getPerDiem() {
		return perDiem;
	}
	/**
	 * @param perDiem the perDiem to set
	 */
	public void setPerDiem(Double perDiem) {
		this.perDiem = perDiem;
	}
	/**
	 * @return the otherFees
	 */
	public Double getOtherFees() {
		return otherFees;
	}
	/**
	 * @param otherFees the otherFees to set
	 */
	public void setOtherFees(Double otherFees) {
		this.otherFees = otherFees;
	}
	/**
	 * @return the total
	 */
	@Transient
	public Double getTotal() {
		return this.tuitionFee+this.visaFee+this.flightShuttleFee+this.perDiem+this.otherFees;
	}

	/**
	 * @return the totalAmtRequest
	 */
	public Double getTotalAmtRequest() {
		return totalAmtRequest;
	}
	/**
	 * @param totalAmtRequest the totalAmtRequest to set
	 */
	public void setTotalAmtRequest(Double totalAmtRequest) {
		this.totalAmtRequest = totalAmtRequest;
	}
	/**
	 * @return the otherFundingSource
	 */
	public String getOtherFundingSource() {
		return otherFundingSource;
	}
	/**
	 * @param otherFundingSource the otherFundingSource to set
	 */
	public void setOtherFundingSource(String otherFundingSource) {
		this.otherFundingSource = otherFundingSource;
	}
	/**
	 * @return the supportApplicant
	 */
	public String getSupportApplicant() {
		return supportApplicant;
	}
	/**
	 * @param supportApplicant the supportApplicant to set
	 */
	public void setSupportApplicant(String supportApplicant) {
		this.supportApplicant = supportApplicant;
	}
	/**
	 * @return the replacementStaff
	 */
	public String getReplacementStaff() {
		return replacementStaff;
	}
	/**
	 * @param replacementStaff the replacementStaff to set
	 */
	public void setReplacementStaff(String replacementStaff) {
		this.replacementStaff = replacementStaff;
	}
	
	/**
	 * Gets the full name.
	 * 
	 * @return the full name
	 */
	@Transient
	public String getFullName() {
		StringBuffer sb = new StringBuffer();
		if (this.firstName != null)
			sb.append(this.firstName).append(" ");
		if (this.middleName != null)
			sb.append(this.middleName).append(" ");
		sb.append(this.lastName);
		
		if (this.maidenName != null && this.maidenName.length()>0)
			sb.append(" (").append(this.maidenName).append(")");
		
		return sb.toString().trim();
	}
	
	/**
	 * Gets the given name.
	 * 
	 * @return the given name
	 */
	@Transient
	public String getGivenName() {
		StringBuffer sb = new StringBuffer();
		if (this.firstName != null)
			sb.append(this.firstName).append(" ");
		if (this.middleName != null)
			sb.append(this.middleName).append(" ");
		
		return sb.toString().trim();
	}
	
	/**
	 * @param status the status to set
	 */
	public void setStatus(STATUS status) {
		this.status = status;
	}
	/**
	 * @return the status
	 */
	@Enumerated(EnumType.STRING)
	public STATUS getStatus() {
		return status;
	}
	
	/**
	 * @param approvalStatus the approvalStatus to set
	 */
	public void setApprovalStatus(APPROVALSTATUS approvalStatus) {
		this.approvalStatus = approvalStatus;
	}
	/**
	 * @return the approvalStatus
	 */
	@Enumerated(EnumType.STRING)
	public APPROVALSTATUS getApprovalStatus() {
		return approvalStatus;
	}
	
	/**
	 * @param referenceNumber the referenceNumber to set
	 */
	public void setReferenceNumber(String referenceNumber) {
		this.referenceNumber = referenceNumber;
	}
	/**
	 * @return the referenceNumber
	 */
	public String getReferenceNumber() {
		return referenceNumber;
	}
	
	/**
	 * @return the actionLog
	 */
	@OneToMany(cascade = {}, mappedBy = "staffdevelopment")
	public List<ActionLog> getActionLog() {
		return this.actionLog;
	}
	
	/**
	 * @param actionLog the actionLog to set
	 */
	public void setActionLog(List<ActionLog> actionLog) {
		this.actionLog = actionLog;
	}
	
	/**
	 * @return the documents
	 */
	@OneToMany(cascade = { CascadeType.REMOVE }, mappedBy = "entity")
	@OrderBy("id desc")
	public List<StaffDevelopmentDocument> getDocuments() {
		return this.documents;
	}

	/**
	 * @param documents the documents to set
	 */
	public void setDocuments(List<StaffDevelopmentDocument> documents) {
		this.documents = documents;
	}
	
	/**
	 * @see org.iita.cdo.model.UserAccess#hasAccess(org.iita.security.model.User)
	 */
	public boolean hasAccess(User user) {		
		if(this.approvalStatus==APPROVALSTATUS.APPROVED || this.approvalStatus==APPROVALSTATUS.REPORTFILED)
			return true;
		
		if (this.owner.getId().equals(user.getId())) {
			return true;
		}
		
		if(this.supervisor!=null){
			if (this.supervisor.getId().equals(user.getId())) {
				return true;
			}
		}
		
		if (this.hod.getId().equals(user.getId()))
			return true;
		
		if (this.nextApprover.getId().equals(user.getId()))
			return true;
		
		for (ActionLog actionLog : this.actionLog) {
			if(actionLog.getUser()!=null) {
				if (actionLog.getUser().getId().equals(user.getId())) {
					return true;
				}
			}
		}
		return false;
	}
	/**
	 * @param evaluation the evaluation to set
	 */
	public void setEvaluation(StaffDevelopmentEvaluation evaluation) {
		this.evaluation = evaluation;
	}
	/**
	 * @return the evaluation
	 */
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "staffdevelopment")
	public StaffDevelopmentEvaluation getEvaluation() {
		return evaluation;
	}
	
	@Transient
	public boolean isEvaluationDue(){
		if (this.getEndDate().before(new Date()))
			return true;
		else
			return false;
	}
	/**
	 * @param researchSubject the researchSubject to set
	 */
	public void setResearchSubject(String researchSubject) {
		this.researchSubject = researchSubject;
	}
	/**
	 * @return the researchSubject
	 */
	public String getResearchSubject() {
		return researchSubject;
	}
	/**
	 * @param mandateCrop the mandateCrop to set
	 */
	public void setMandateCrop(String mandateCrop) {
		this.mandateCrop = mandateCrop;
	}
	/**
	 * @return the mandateCrop
	 */
	public String getMandateCrop() {
		return mandateCrop;
	}
	
	/**	 * @param appType the appType to set	 */	
	public void setAppType(APPTYPE appType) {
		this.appType = appType;	
		}	
	/**	 * @return the appType	 */	
	@Enumerated(EnumType.STRING)	
	public APPTYPE getAppType() {
		return appType;	
	}
}

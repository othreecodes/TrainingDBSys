package org.iita.trainingunit.trainings.model;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;

import org.iita.crm.model.Organization;
import org.iita.crm.model.Person;
import org.iita.crm.model.Person.Gender;
import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.model.TraineeEducationalInfo;

/**
 * created by David 14/05/2017
 */
@Entity
public class ExternalTraining extends VersionedEntity {
	

	
	private static final long serialVersionUID = 1L;
	/** The title. */
	private String title;

	/** The last name. */
	private String lastName;

	/** The first name. */
	private String firstName;

	/** The other names. */
	private String otherNames;

	/** The gender. */
	private String gender;

	/** The job title. */
	private String jobTitle;
	
	/** The country. */
	private String country;
	private String fullName;
	
	private String officeAddress;
	private String phone;
	private String email;
	private String organization;
	private String educationalInfo;
	private String RelevantAreasInterest;
	private String gaintFromCourse;
	
	@Column(length = 500)
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	@Column(length = 500)
	public String getEducationalInfo() {
		return educationalInfo;
	}
	public void setEducationalInfo(String educationalInfo) {
		this.educationalInfo = educationalInfo;
	}
	@Column(length = 500)
	public String getRelevantAreasInterest() {
		return RelevantAreasInterest;
	}
	public void setRelevantAreasInterest(String relevantAreasInterest) {
		RelevantAreasInterest = relevantAreasInterest;
	}
	@Column(length = 500)
	public String getGaintFromCourse() {
		return gaintFromCourse;
	}
	public void setGaintFromCourse(String gaintFromCourse) {
		this.gaintFromCourse = gaintFromCourse;
	}
	@Column(length = 500)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(length = 500)
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	@Column(length = 500)
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	@Column(length = 500,nullable=true)
	public String getOtherNames() {
		return otherNames;
	}
	public void setOtherNames(String otherNames) {
		this.otherNames = otherNames;
	}
	@Column(length = 10)
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Column(length = 100)
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	@Column(length = 500)
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	@Column(length = 500)
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	@Column(length = 500)
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	@Column(length = 50)
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Column(length = 50)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	

}

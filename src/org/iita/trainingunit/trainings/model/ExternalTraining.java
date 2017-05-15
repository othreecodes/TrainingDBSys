package org.iita.trainingunit.trainings.model;


import java.util.List;

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
	
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getEducationalInfo() {
		return educationalInfo;
	}
	public void setEducationalInfo(String educationalInfo) {
		this.educationalInfo = educationalInfo;
	}
	public String getRelevantAreasInterest() {
		return RelevantAreasInterest;
	}
	public void setRelevantAreasInterest(String relevantAreasInterest) {
		RelevantAreasInterest = relevantAreasInterest;
	}
	public String getGaintFromCourse() {
		return gaintFromCourse;
	}
	public void setGaintFromCourse(String gaintFromCourse) {
		this.gaintFromCourse = gaintFromCourse;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getOtherNames() {
		return otherNames;
	}
	public void setOtherNames(String otherNames) {
		this.otherNames = otherNames;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
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

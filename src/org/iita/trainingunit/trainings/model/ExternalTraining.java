
package org.iita.trainingunit.trainings.model;


import org.hibernate.annotations.Entity;
import org.iita.entity.VersionedEntity;



@Entity
public class ExternalTraining extends VersionedEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/* private Person user;
	 * 
	 *  */
	
	
	private String title;
	private String surname;
	private String firstname;
	private String gender;
	private String email;
	private String nationality;
	private String jobtitle;
	private String phone;
	private String areasInterest;
	private String gainCourse;
	private String organization;
	private String fullname;
	private String recentEducation;
	private String officeAddress;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAreasInterest() {
		return areasInterest;
	}
	public void setAreasInterest(String areasInterest) {
		this.areasInterest = areasInterest;
	}
	public String getGainCourse() {
		return gainCourse;
	}
	public void setGainCourse(String gainCourse) {
		this.gainCourse = gainCourse;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getRecentEducation() {
		return recentEducation;
	}
	public void setRecentEducation(String recentEducation) {
		this.recentEducation = recentEducation;
	}
	public String getOfficeAddress() {
		return officeAddress;
	}
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	

}

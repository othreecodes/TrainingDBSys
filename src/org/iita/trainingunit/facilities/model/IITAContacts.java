package org.iita.trainingunit.facilities.model;

import org.iita.trainingunit.applications.model.BaseEntity;

public class IITAContacts extends BaseEntity {
	
	private String name;
	private String email;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

}

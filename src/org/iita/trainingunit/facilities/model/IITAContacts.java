package org.iita.trainingunit.facilities.model;

import javax.persistence.Entity;

import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.applications.model.BaseEntity;

@Entity
public class IITAContacts extends VersionedEntity {
	
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

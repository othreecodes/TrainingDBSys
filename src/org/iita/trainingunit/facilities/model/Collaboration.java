package org.iita.trainingunit.facilities.model;

import javax.persistence.Entity;

import org.iita.trainingunit.applications.model.BaseEntity;

@Entity
public class Collaboration extends BaseEntity {

	private String collaboration;
	private String location;
	public String getCollaboration() {
		return collaboration;
	}
	public void setCollaboration(String collaboration) {
		this.collaboration = collaboration;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	
	
	
		
}

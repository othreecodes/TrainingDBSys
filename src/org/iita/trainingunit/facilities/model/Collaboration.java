package org.iita.trainingunit.facilities.model;

import javax.persistence.Entity;

import org.iita.trainingunit.applications.model.BaseEntity;
import org.iita.entity.VersionedEntity;
@Entity
public class Collaboration extends VersionedEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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

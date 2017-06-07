package org.iita.trainingunit.facilities.model;

import javax.persistence.Entity;

import org.iita.trainingunit.applications.model.BaseEntity;

@Entity
public class LanguageSkill extends BaseEntity{

	public enum STATUS {
 
		EASILY,
		NOT_EASILY,
	}
	 
	private String language;
	private STATUS read;
	private STATUS write;
	private STATUS speak;
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public STATUS getRead() {
		return read;
	}
	public void setRead(STATUS read) {
		this.read = read;
	}
	public STATUS getWrite() {
		return write;
	}
	public void setWrite(STATUS write) {
		this.write = write;
	}
	public STATUS getSpeak() {
		return speak;
	}
	public void setSpeak(STATUS speak) {
		this.speak = speak;
	}
	
	
	

}

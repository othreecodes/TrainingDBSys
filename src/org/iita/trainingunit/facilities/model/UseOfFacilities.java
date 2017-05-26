package org.iita.trainingunit.facilities.model;

import java.util.Date;
import java.util.List;

import org.iita.crm.model.AddressContact;
import org.iita.crm.model.EmailContact;
import org.iita.crm.model.Person;
import org.iita.crm.model.Person.Gender;
import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.applications.model.EducationAndTraining;

/**
 * @author othreecodes
 *
 */
 

public class UseOfFacilities extends VersionedEntity  {

	/**
	 * 
	 */
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
	private Gender gender;

	/** The country. */
	private String country;

	/** The dob. */
	private Date dob;

	/** The correspondence address. */
	private AddressContact correspondenceAddress = null;

	/** The email. */
	private EmailContact email = null;
	
	private List<EducationAndTraining> educationAndTraining;
	
	private List<LanguageSkill> languageSkills;
	
	/**
	 * Synopsis of research work
	 */
	private String synopsis;
	/**
	 * Summary of research objective
	 */
	private String summary;
	
	/**
	 * Facilites required
	 */
	private String facilities;
	
	private int lenght;
	
	private Date startDate;
	
	private List<IITAContacts> contacts;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}

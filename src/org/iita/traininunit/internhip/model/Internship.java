package org.iita.traininunit.internhip.model;

import org.iita.crm.model.AddressContact;
import org.iita.entity.VersionedEntity;

public class Internship extends VersionedEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String surname;
	private String othernames;
	private String gender;
	private String nationality;     
	private AddressContact correspondenceAddress;
	private AddressContact permanentAddress;
	
	

}

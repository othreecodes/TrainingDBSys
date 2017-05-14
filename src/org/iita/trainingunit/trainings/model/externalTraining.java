package org.iita.trainingunit.trainings.model;


import org.hibernate.annotations.Entity;
import org.iita.crm.model.Organization;
import org.iita.crm.model.Person;
import org.iita.entity.VersionedEntity;


@Entity
public class externalTraining extends VersionedEntity{

	
	
	private Person user;
	private Organization org;
	private String recentEducation;
	
}

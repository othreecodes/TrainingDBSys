package org.iita.trainingunit.sabbatical.model;

import org.iita.entity.VersionedEntity;
import org.iita.trainingunit.applications.model.AdministrativeExperience;
import org.iita.trainingunit.applications.model.ApplicantsBioData;

public class SabbaticalApplication extends VersionedEntity {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2280478556811841244L;
	private ApplicantsBioData cdoBioData;
	private AdministrativeExperience  adminExpirience;
	

}

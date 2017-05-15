package org.iita.trainingunit.trainings.service.impl;

import javax.persistence.EntityManager;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;

public class ExternalTrainingServiceImpl  implements ExternalTrainingService{

	protected EntityManager entityManager;
	@Override
	public void saveTraining(ExternalTraining training) {
		 
		
	}

	@Override
	public void deleteTraining(ExternalTraining training) {
		ExternalTraining training1 = this.entityManager.find(ExternalTraining.class, training.getId());
		
		
	}

	@Override
	public ExternalTraining load(Long id) {
		 
		return this.entityManager.find(ExternalTraining.class, id);
	}

}

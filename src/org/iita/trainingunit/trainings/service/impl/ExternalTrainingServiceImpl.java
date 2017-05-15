package org.iita.trainingunit.trainings.service.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;

public class ExternalTrainingServiceImpl  implements ExternalTrainingService{

	protected EntityManager entityManager;
	@Override
	public void saveTraining(ExternalTraining training) {
		
		System.out.print("I got here tho");
		System.out.print(training.getEmail());
		this.entityManager.persist(training);
		System.out.print("I passed");
		
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
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

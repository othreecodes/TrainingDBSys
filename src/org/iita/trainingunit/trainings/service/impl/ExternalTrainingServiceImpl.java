package org.iita.trainingunit.trainings.service.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;
import org.springframework.transaction.annotation.Transactional;

public class ExternalTrainingServiceImpl  implements ExternalTrainingService{

	protected EntityManager entityManager;
	
	@Override
	@Transactional
	public ExternalTraining saveTraining(ExternalTraining training) {
		
		 
		if(training==null)
			this.entityManager.persist(training);
		else
			this.entityManager.merge(training);
		
		 
		return training;
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	@Override
	@Transactional
	public void deleteTraining(ExternalTraining training) {
		if(training.getId()!=null)
			this.entityManager.remove(training);
		
	}

	@Override
	@Transactional(readOnly=true)
	public ExternalTraining load(Long id) {
		 
		return this.entityManager.find(ExternalTraining.class, id);
	}

}


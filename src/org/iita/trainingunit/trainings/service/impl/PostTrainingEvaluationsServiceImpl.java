package org.iita.trainingunit.trainings.service.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.iita.trainingunit.trainings.model.PostTrainingEvaluation;
import org.iita.trainingunit.trainings.service.PostTrainingEvaluationsService;
import org.springframework.transaction.annotation.Transactional;

public class PostTrainingEvaluationsServiceImpl implements PostTrainingEvaluationsService{

	protected EntityManager entityManager;
	
	@Override
	@Transactional
	public PostTrainingEvaluation saveEvaluation(PostTrainingEvaluation evaluation) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	

}
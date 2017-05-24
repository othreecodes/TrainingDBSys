package org.iita.trainingunit.trainings.service.impl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.iita.trainingunit.trainings.model.PostTrainingEvaluation;
import org.iita.trainingunit.trainings.service.PostTrainingEvaluationsService;
import org.springframework.transaction.annotation.Transactional;

public class PostTrainingEvaluationsServiceImpl implements PostTrainingEvaluationsService {

    protected EntityManager entityManager;

    @Override
    @Transactional
    public PostTrainingEvaluation saveEvaluation(PostTrainingEvaluation evaluation) {

        this.entityManager.persist(evaluation);
        return evaluation;
    }

    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }


}

package org.iita.trainingunit.trainings.service;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.model.PostTrainingEvaluation;

public interface PostTrainingEvaluationsService {

	PostTrainingEvaluation saveEvaluation(PostTrainingEvaluation evaluation);
}

package org.iita.trainingunit.trainings.service;
 
import org.iita.trainingunit.trainings.model.ExternalTraining;

/**
 * created by David 14/05/2017
 */

public interface ExternalTrainingService {
	
	ExternalTraining saveTraining(ExternalTraining training);
	void deleteTraining(ExternalTraining training);
	ExternalTraining load(Long id);
}

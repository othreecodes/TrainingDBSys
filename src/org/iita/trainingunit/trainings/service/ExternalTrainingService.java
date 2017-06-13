package org.iita.trainingunit.trainings.service;
 
import java.util.List;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.util.PagedResult;

/**
 * updated by David 12/06/2017
 */

public interface ExternalTrainingService {
	
	ExternalTraining saveTraining(ExternalTraining training);
	void deleteTraining(ExternalTraining training);
	ExternalTraining load(Long id);
	PagedResult<ExternalTraining> loadAll(int startAt,int maxResults);
}
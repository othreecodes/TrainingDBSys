package org.iita.trainingunit.trainings.action;

import org.iita.trainingunit.trainings.model.ExternalTraining;
import com.opensymphony.xwork2.Action;

public class ExternalTrainingAction {
	
	ExternalTraining training;
	
	
	public String execute(){
		return Action.SUCCESS;
	}
}
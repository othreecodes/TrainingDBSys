package org.iita.trainingunit.trainings.action;

import org.iita.trainingunit.trainings.model.ExternalTraining;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;

/**
 * created by David 14/05/2017
 */
public class ExternalTrainingAction implements Preparable{
	
	 
	public String execute() {
		
		return Action.SUCCESS;
	}

	ExternalTraining training;
	@Override
	public void prepare() throws Exception {
		 
		
	}

}

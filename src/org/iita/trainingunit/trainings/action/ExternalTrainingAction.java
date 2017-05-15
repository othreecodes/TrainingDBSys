package org.iita.trainingunit.trainings.action;

import org.iita.trainingunit.staff.model.StaffDevelopment.APPROVALSTATUS;
import org.iita.trainingunit.staff.model.StaffDevelopment.STATUS;
import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.impl.ExternalTrainingServiceImpl;

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
	private ExternalTrainingServiceImpl trainingService;
	@Override
	public void prepare() throws Exception {
		 
		
	}
	
	public String apply(){
		this.trainingService.saveTraining(training);
		
		return Action.SUCCESS;
	}

}

package org.iita.trainingunit.trainings.action;


import org.iita.trainingunit.announcements.service.AnnouncementService;
import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;


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
	private ExternalTrainingService trainingService;
	public ExternalTrainingAction(ExternalTrainingService externalTrainingService) {
		this.trainingService = externalTrainingService;
	}
	
	@Override
	public void prepare() throws Exception {
		 
		
	}
	
	public String apply(){
		this.trainingService.saveTraining(training);
		
		return Action.SUCCESS;
	}

}

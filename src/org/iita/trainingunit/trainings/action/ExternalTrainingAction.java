package org.iita.trainingunit.trainings.action;


import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.announcements.service.AnnouncementService;
import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;


import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;


public class ExternalTrainingAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ExternalTrainingService trainingService;
	ExternalTraining training;
	
	
	@Override
	public String execute() {
		
		return Action.SUCCESS;
	}
	
	public ExternalTrainingAction(ExternalTrainingService externalTrainingService) {
		this.trainingService = externalTrainingService;
	}
	
	@Override
	public void prepare() {
		 		
	}
	
	public String apply(){
		this.trainingService.saveTraining(this.training);
		addActionMessage("Your form has been successfully submitted!");
		if(this.training.getId()!=null)
			return "applied";
		else
			return Action.INPUT;
	}
	
	public String createNew(){		
		return Action.INPUT;
	}

	public ExternalTraining getTraining() {
		return training;
	}

	public void setTraining(ExternalTraining training) {
		this.training = training;
	}

	public ExternalTrainingService getTrainingService() {
		return trainingService;
	}

	public void setTrainingService(ExternalTrainingService trainingService) {
		this.trainingService = trainingService;
	}

	 

}
package org.iita.trainingunit.trainings.action;

import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.trainings.model.PostTrainingEvaluation;
import org.iita.trainingunit.trainings.service.PostTrainingEvaluationsService;

import com.opensymphony.xwork2.Action;

public class PostTrainingEvaluationAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PostTrainingEvaluationsService postTrainingEvaluationService;
	private PostTrainingEvaluation postTraining;
	
	@Override
	public String execute() {
		
		return Action.INPUT;
	}
	
	public String save(){
		 this.postTrainingEvaluationService.saveEvaluation(postTraining);
		addActionMessage("Your form has been successfully submitted!");
		 return Action.SUCCESS;
	}
	
	public PostTrainingEvaluationAction(PostTrainingEvaluationsService postTrainingEvaluationService){
		this.postTrainingEvaluationService = postTrainingEvaluationService;
	}

	public PostTrainingEvaluationsService getPostTrainingEvaluationService() {
		return postTrainingEvaluationService;
	}

	public void setPostTrainingEvaluationService(PostTrainingEvaluationsService postTrainingEvaluationService) {
		this.postTrainingEvaluationService = postTrainingEvaluationService;
	}

	public PostTrainingEvaluation getPostTraining() {
		return postTraining;
	}

	public void setPostTraining(PostTrainingEvaluation postTraining) {
		this.postTraining = postTraining;
	}
	
	
	

}

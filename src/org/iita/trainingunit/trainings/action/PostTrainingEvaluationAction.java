package org.iita.trainingunit.trainings.action;

import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.applications.service.CDOApplicationService;
import org.iita.trainingunit.trainings.model.PostTrainingEvaluation;
import org.iita.trainingunit.trainings.model.PostTrainingEvaluation.RATE;
import org.iita.trainingunit.trainings.model.PostTrainingEvaluation.STATUS;
import org.iita.trainingunit.trainings.service.PostTrainingEvaluationsService;

import com.opensymphony.xwork2.Action;

public class PostTrainingEvaluationAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PostTrainingEvaluationsService postTrainingEvaluationService;
	private PostTrainingEvaluation postTraining;
	private CDOApplicationService cdoApplicationService;
	private String metExpectations;
	private String applyKnowledge;
	private String trainingObjectives;
	private String organisedEasy;
	private String materialsUseful;
	private String trainerKnowledge;
	private String qualityGood;
	private String metObjectives;
	private String participationEncouraged;
	private String timeforquestions;
	private String lenghtSufficient;
	private String facilitiesComfortable;
	private String rateTraining;

	private long applicationId;
	@Override
	public String execute() {
		if(applicationId == 0){
			return Action.ERROR;
		}
	
		System.out.println(applicationId);
		return Action.INPUT;
	}

	public String save() {
		System.out.println(postTraining.getMetExpectations());
		postTraining.setMetExpectations(Enum.valueOf(STATUS.class, metExpectations));
		postTraining.setApplyKnowledge(Enum.valueOf(STATUS.class, applyKnowledge));
		postTraining.setTrainingObjectives(Enum.valueOf(STATUS.class, trainingObjectives));
		postTraining.setOrganisedEasy(Enum.valueOf(STATUS.class, organisedEasy));
		postTraining.setMaterialsUseful(Enum.valueOf(STATUS.class, materialsUseful));
		postTraining.setTrainerKnowledge(Enum.valueOf(STATUS.class, trainerKnowledge));
		postTraining.setQualityGood(Enum.valueOf(STATUS.class, qualityGood));
		postTraining.setMetObjectives(Enum.valueOf(STATUS.class, metObjectives));
		postTraining.setParticipationEncouraged(Enum.valueOf(STATUS.class, participationEncouraged));
		postTraining.setTimeforquestions(Enum.valueOf(STATUS.class, timeforquestions));
		postTraining.setLenghtSufficient(Enum.valueOf(STATUS.class, lenghtSufficient));
		postTraining.setFacilitiesComfortable(Enum.valueOf(STATUS.class, facilitiesComfortable));
		postTraining.setRateTraining(Enum.valueOf(RATE.class, rateTraining));
		this.postTrainingEvaluationService.saveEvaluation(postTraining);
		addActionMessage("Your form has been successfully submitted!");
		return Action.SUCCESS;
	}

	public PostTrainingEvaluationAction(PostTrainingEvaluationsService postTrainingEvaluationService,CDOApplicationService cdoApplicationService ) {
		this.postTrainingEvaluationService = postTrainingEvaluationService;
		this.setCdoApplicationService(cdoApplicationService);
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

	/**
	 * @return the metExpectations
	 */
	public String getMetExpectations() {
		return metExpectations;
	}

	/**
	 * @param metExpectations the metExpectations to set
	 */
	public void setMetExpectations(String metExpectations) {
		this.metExpectations = metExpectations;
	}

	/**
	 * @return the applyKnowledge
	 */
	public String getApplyKnowledge() {
		return applyKnowledge;
	}

	/**
	 * @param applyKnowledge the applyKnowledge to set
	 */
	public void setApplyKnowledge(String applyKnowledge) {
		this.applyKnowledge = applyKnowledge;
	}

	/**
	 * @return the trainingObjectives
	 */
	public String getTrainingObjectives() {
		return trainingObjectives;
	}

	/**
	 * @param trainingObjectives the trainingObjectives to set
	 */
	public void setTrainingObjectives(String trainingObjectives) {
		this.trainingObjectives = trainingObjectives;
	}

	/**
	 * @return the organisedEasy
	 */
	public String getOrganisedEasy() {
		return organisedEasy;
	}

	/**
	 * @param organisedEasy the organisedEasy to set
	 */
	public void setOrganisedEasy(String organisedEasy) {
		this.organisedEasy = organisedEasy;
	}

	/**
	 * @return the materialsUseful
	 */
	public String getMaterialsUseful() {
		return materialsUseful;
	}

	/**
	 * @param materialsUseful the materialsUseful to set
	 */
	public void setMaterialsUseful(String materialsUseful) {
		this.materialsUseful = materialsUseful;
	}

	/**
	 * @return the trainerKnowledge
	 */
	public String getTrainerKnowledge() {
		return trainerKnowledge;
	}

	/**
	 * @param trainerKnowledge the trainerKnowledge to set
	 */
	public void setTrainerKnowledge(String trainerKnowledge) {
		this.trainerKnowledge = trainerKnowledge;
	}

	/**
	 * @return the qualityGood
	 */
	public String getQualityGood() {
		return qualityGood;
	}

	/**
	 * @param qualityGood the qualityGood to set
	 */
	public void setQualityGood(String qualityGood) {
		this.qualityGood = qualityGood;
	}

	/**
	 * @return the metObjectives
	 */
	public String getMetObjectives() {
		return metObjectives;
	}

	/**
	 * @param metObjectives the metObjectives to set
	 */
	public void setMetObjectives(String metObjectives) {
		this.metObjectives = metObjectives;
	}

	/**
	 * @return the participationEncouraged
	 */
	public String getParticipationEncouraged() {
		return participationEncouraged;
	}

	/**
	 * @param participationEncouraged the participationEncouraged to set
	 */
	public void setParticipationEncouraged(String participationEncouraged) {
		this.participationEncouraged = participationEncouraged;
	}

	/**
	 * @return the timeforquestions
	 */
	public String getTimeforquestions() {
		return timeforquestions;
	}

	/**
	 * @param timeforquestions the timeforquestions to set
	 */
	public void setTimeforquestions(String timeforquestions) {
		this.timeforquestions = timeforquestions;
	}

	/**
	 * @return the lenghtSufficient
	 */
	public String getLenghtSufficient() {
		return lenghtSufficient;
	}

	/**
	 * @param lenghtSufficient the lenghtSufficient to set
	 */
	public void setLenghtSufficient(String lenghtSufficient) {
		this.lenghtSufficient = lenghtSufficient;
	}

	/**
	 * @return the facilitiesComfortable
	 */
	public String getFacilitiesComfortable() {
		return facilitiesComfortable;
	}

	/**
	 * @param facilitiesComfortable the facilitiesComfortable to set
	 */
	public void setFacilitiesComfortable(String facilitiesComfortable) {
		this.facilitiesComfortable = facilitiesComfortable;
	}

	/**
	 * @return the rateTraining
	 */
	public String getRateTraining() {
		return rateTraining;
	}

	/**
	 * @param rateTraining the rateTraining to set
	 */
	public void setRateTraining(String rateTraining) {
		this.rateTraining = rateTraining;
	}

	/**
	 * @return the applicationId
	 */
	public long getApplicationId() {
		return applicationId;
	}

	/**
	 * @param applicationId the applicationId to set
	 */
	public void setApplicationId(long applicationId) {
		this.applicationId = applicationId;
	}

	public CDOApplicationService getCdoApplicationService() {
		return cdoApplicationService;
	}

	public void setCdoApplicationService(CDOApplicationService cdoApplicationService) {
		this.cdoApplicationService = cdoApplicationService;
	}

	
	
	
	
}

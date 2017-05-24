package org.iita.trainingunit.trainings.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import org.iita.entity.VersionedEntity;

@Entity
public class PostTrainingEvaluation extends VersionedEntity {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4446799660904819838L;
	public enum STATUS {SRONGLYAGREE, AGREE, DISAGREE, NEUTRAL, STRONGLYDISAGREE}
	public enum RATE {EXCELLENT, GOOD, AVERAGE, POOR, VERYPOOR}
	
	
	private String title;
	private String date;
	private String room;
	private STATUS metExpectations;
	private STATUS applyKnowledge;
	private STATUS trainingObjectives;
	private STATUS organisedEasy;
	private STATUS materialsUseful;
	private STATUS trainerKnowledge;
	private STATUS qualityGood;
	private STATUS metObjectives;
	private STATUS participationEncouraged;
	private STATUS timeforquestions;
	private STATUS lenghtSufficient;
	private STATUS facilitiesComfortable;
	private RATE rateTraining;
	
	private String canbeImproved;
	private String otherComments;
	public STATUS getMetExpectations() {
		return metExpectations;
	}
	public void setMetExpectations(STATUS metExpectations) {
		this.metExpectations = metExpectations;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getApplyKnowledge() {
		return applyKnowledge;
	}
	public void setApplyKnowledge(STATUS applyKnowledge) {
		this.applyKnowledge = applyKnowledge;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getTrainingObjectives() {
		return trainingObjectives;
	}
	public void setTrainingObjectives(STATUS trainingObjectives) {
		this.trainingObjectives = trainingObjectives;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getOrganisedEasy() {
		return organisedEasy;
	}
	public void setOrganisedEasy(STATUS organisedEasy) {
		this.organisedEasy = organisedEasy;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getMaterialsUseful() {
		return materialsUseful;
	}
	public void setMaterialsUseful(STATUS materialsUseful) {
		this.materialsUseful = materialsUseful;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getTrainerKnowledge() {
		return trainerKnowledge;
	}
	public void setTrainerKnowledge(STATUS trainerKnowledge) {
		this.trainerKnowledge = trainerKnowledge;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getQualityGood() {
		return qualityGood;
	}
	public void setQualityGood(STATUS qualityGood) {
		this.qualityGood = qualityGood;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getMetObjectives() {
		return metObjectives;
	}
	public void setMetObjectives(STATUS metObjectives) {
		this.metObjectives = metObjectives;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getParticipationEncouraged() {
		return participationEncouraged;
	}
	public void setParticipationEncouraged(STATUS participationEncouraged) {
		this.participationEncouraged = participationEncouraged;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getTimeforquestions() {
		return timeforquestions;
	}
	public void setTimeforquestions(STATUS timeforquestions) {
		this.timeforquestions = timeforquestions;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getLenghtSufficient() {
		return lenghtSufficient;
	}
	public void setLenghtSufficient(STATUS lenghtSufficient) {
		this.lenghtSufficient = lenghtSufficient;
	}
	@Enumerated(EnumType.STRING)
	public STATUS getFacilitiesComfortable() {
		return facilitiesComfortable;
	}
	public void setFacilitiesComfortable(STATUS facilitiesComfortable) {
		this.facilitiesComfortable = facilitiesComfortable;
	}
	@Enumerated(EnumType.STRING)
	public RATE getRateTraining() {
		return rateTraining;
	}
	public void setRateTraining(RATE rateTraining) {
		this.rateTraining = rateTraining;
	}
	@Column(length = 500)
	public String getCanbeImproved() {
		return canbeImproved;
	}
	public void setCanbeImproved(String canbeImproved) {
		this.canbeImproved = canbeImproved;
	}
	@Column(length = 500)
	public String getOtherComments() {
		return otherComments;
	}
	public void setOtherComments(String otherComments) {
		this.otherComments = otherComments;
	}
	@Column(length = 500)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(length = 500)
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Column(length = 500)
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	
	
	
	
	
	
}

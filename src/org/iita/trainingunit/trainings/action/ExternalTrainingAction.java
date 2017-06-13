package org.iita.trainingunit.trainings.action;


import java.util.List;

import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.announcements.service.AnnouncementService;
import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;
import org.iita.util.PagedResult;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;

/**
 * created by David 14/05/2017
 */
public class ExternalTrainingAction extends BaseAction{
	/**
	 * 
	 */
	private long id;
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	protected int startAt = 0, maxResults = 50;
	private static final long serialVersionUID = 1L;
	private ExternalTrainingService trainingService;
	ExternalTraining training;
	PagedResult<ExternalTraining> paged;
	
	@Override
	public String execute() {
		
		return Action.SUCCESS;
	}
	
	public ExternalTrainingAction(ExternalTrainingService externalTrainingService) {
		this.trainingService = externalTrainingService;
	}
	
	@Override
	public void prepare() {
		super.prepare();
		paged = this.trainingService.loadAll(startAt,maxResults);
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
	
	public String list(){
	
		return Action.SUCCESS;
	}

	/**
	 * @return the startAt
	 */
	public int getStartAt() {
		return startAt;
	}

	/**
	 * @param startAt the startAt to set
	 */
	public void setStartAt(int startAt) {
		this.startAt = startAt;
	}

	/**
	 * @return the paged
	 */
	public PagedResult<ExternalTraining> getPaged() {
		return paged;
	}

	/**
	 * @param paged the paged to set
	 */
	public void setPaged(PagedResult<ExternalTraining> paged) {
		this.paged = paged;
	}

	public String view(){
		this.training = this.trainingService.load(id);
		
		return Action.SUCCESS;
	}
	 
	 

}
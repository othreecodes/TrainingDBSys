package org.iita.trainingunit.trainings.service.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.iita.trainingunit.model.Trainee;
import org.iita.trainingunit.trainings.model.ExternalTraining;
import org.iita.trainingunit.trainings.service.ExternalTrainingService;
import org.iita.util.PagedResult;
import org.springframework.transaction.annotation.Transactional;
/**
 * @author othreecodes
 *
 */
public class ExternalTrainingServiceImpl  implements ExternalTrainingService{

	protected EntityManager entityManager;
	
	@Override
	@Transactional
	public ExternalTraining saveTraining(ExternalTraining training) {
		
		 
		if(training==null)
			this.entityManager.persist(training);
		else
			this.entityManager.merge(training);
		
		 
		return training;
	}

	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	@Override
	@Transactional
	public void deleteTraining(ExternalTraining training) {
		if(training.getId()!=null)
			this.entityManager.remove(training);
		
	}

	@Override
	@Transactional(readOnly=true)
	public ExternalTraining load(Long id) {
		 System.out.println("got the id "+id);
		return this.entityManager.find(ExternalTraining.class, id);
	}

	@Override
	@Transactional(readOnly=true)
	public PagedResult<ExternalTraining> loadAll(int startAt,int maxResults) {
		
		PagedResult<ExternalTraining> paged = new PagedResult<ExternalTraining>();
		paged.setStartAt(startAt);
		paged.setMaxResults(maxResults);

		//return this.entityManager.createQuery("FROM ExternalTraining e order by e.id desc").getResultList();
		paged.setResults(this.entityManager.createQuery("FROM ExternalTraining e order by e.id asc").setFirstResult(startAt)
				.setMaxResults(maxResults).getResultList());
		paged.setTotalHits((Long) this.entityManager.createQuery("select count(*) from ExternalTraining").getSingleResult());
		return paged;
	}

	
}

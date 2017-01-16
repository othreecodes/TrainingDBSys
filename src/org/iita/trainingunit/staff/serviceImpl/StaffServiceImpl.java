/**
 * 
 */
package org.iita.trainingunit.staff.serviceImpl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.iita.crm.model.ActionLog;
import org.iita.crm.model.ActionLog.ActionType;
import org.iita.security.model.User;
import org.iita.trainingunit.applications.service.NotificationService;
import org.iita.trainingunit.applications.service.impl.CDOApplicationException;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.model.StaffDevelopment.APPROVALSTATUS;
import org.iita.trainingunit.staff.model.StaffDevelopment.STATUS;
import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation;
import org.iita.trainingunit.staff.service.StaffService;
import org.iita.util.PagedResult;
import org.springframework.security.annotation.Secured;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author ken
 *
 */
public class StaffServiceImpl implements StaffService {
	static final Log LOG = LogFactory.getLog(StaffServiceImpl.class);
	protected EntityManager entityManager;
	private Object refNumberMutex = new Object();
	private Long nextRefnumber = null;
	private String applicationName = null;
	private NotificationService notificationService = null;
	

	/**
	 * @param entityManager the entityManager to set
	 */
	@PersistenceContext
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	
	/**
	 * @param applicationName the applicationName to set
	 */
	public void setApplication(String applicationId) {
		LOG.warn("Application ID configured to: " + applicationId);
		this.applicationName = applicationId;
	}
	
	/**
	 * @param notificationService the notificationService to set
	 */
	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}
	
	/**
	 * Internal method to get next Reference number. Will increment Reference number.
	 * 
	 * @return
	 */
	@Transactional
	private String getNextRefNumber() {
		synchronized (this.refNumberMutex) {
			if (this.nextRefnumber == null) {
				findLastReferenceNumber();
			}
			// return incremented
			return String.format("CDO-%1$03d", this.nextRefnumber++);
		}
	}
	
	@Override
	public String getComingRequestNumber() {
		synchronized (this.refNumberMutex) {
		
			findLastReferenceNumber();

			int year = Calendar.getInstance().get(Calendar.YEAR);
			
			if(this.nextRefnumber==1l)
				return String.format("CDO-" + year + "%1$03d", this.nextRefnumber);
			else
				return String.format("CDO-%1$03d", this.nextRefnumber);
		}
	}
	
	@Override
	@Transactional(readOnly=true)
	public PagedResult<StaffDevelopment> getApplications(User user, int startAt, int maxResults) throws CDOApplicationException {
		PagedResult<StaffDevelopment> paged = new PagedResult<StaffDevelopment>(startAt, maxResults);
		paged.setResults(this.entityManager.createQuery("from StaffDevelopment s where s.owner=:user order by s.lastName, s.firstName")
				.setParameter("user", user)
				.setFirstResult(startAt)
				.setMaxResults(maxResults)
				.getResultList());
		if (paged.getResults().size() > 0)
			paged.setTotalHits(((Long) this.entityManager.createQuery("select count (s) from StaffDevelopment s").getSingleResult()).longValue());
		return paged;
	}

	@Override
	@Transactional(readOnly=true)
	public PagedResult<StaffDevelopment> getApplications(int startAt, int maxResults) throws CDOApplicationException {
		PagedResult<StaffDevelopment> paged = new PagedResult<StaffDevelopment>(startAt, maxResults);
		paged.setResults(this.entityManager.createQuery("from StaffDevelopment s order by s.lastName, s.firstName")
				.setFirstResult(startAt)
				.setMaxResults(maxResults)
				.getResultList());
		if (paged.getResults().size() > 0)
			paged.setTotalHits(((Long) this.entityManager.createQuery("select count (s) from StaffDevelopment s").getSingleResult()).longValue());
		return paged;
	}

	@Override
	@Transactional(readOnly=true)
	public StaffDevelopment loadApplication(Long id) {
		return this.entityManager.find(StaffDevelopment.class, id);
	}
	
	@Override
	@Transactional
	public boolean deleteApplication(Long id) {
		StaffDevelopment staffDev = this.entityManager.find(StaffDevelopment.class, id);
		
		if(staffDev!=null){
			if(staffDev.getStatus().equals(STATUS.NEW)){
				LOG.info("Staff Dev deletion with ID: " + staffDev.getId() + " in progress!");
				this.entityManager.remove(staffDev);
				LOG.info("Staff Dev deleted!");
				return true;
			}else
				return false;
		}else
			return false;
			
	}

	@Override
	@Transactional
	public StaffDevelopment saveApplication(StaffDevelopment staffDev) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		
		if(staffDev.getStatus().equals(STATUS.SUBMITTED) && staffDev.getApprovalStatus().equals(APPROVALSTATUS.SUPERVISOR)){
			//mail notifications to CDO and send a copy of the application to the USER
			LOG.info("Staff Dev notification: " + staffDev.getId());
			this.notificationService.copyOwnerStaffDevelopment(staffDev);
			this.notificationService.cdoStaffDevelopment(staffDev);
			this.notificationService.supervisorStaffDevPending(staffDev);
		}
		return staffDev;
	}
	
	@Override
	@Transactional
	public StaffDevelopment supervisorApplication(StaffDevelopment staffDev){
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the HOD for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORHOD)){
			//mail notifications to HOD and send a copy of the application to the USER
			this.notificationService.staffDevelopmentStatus(staffDev, "Your supervisor has written your application");
			this.notificationService.hodStaffDevPending(staffDev);
			String stage = "Supervisor";
			addActionLog(staffDev, staffDev.getSupervisor(), stage, ActionType.SUPPORTED, "Application supported by supervisor", null);
		}
		return staffDev;
	}
	
	/**
	 * @param budgetCode
	 * @param user
	 * @param comment
	 * @param action
	 * @param comment2
	 */
	private void addActionLog(StaffDevelopment staffDev, User user, String stage, org.iita.crm.model.ActionLog.ActionType action, String comment, String comment2) {
		ActionLog actionLog = createActionLog(staffDev, user, stage, action, comment, comment2);
		this.entityManager.persist(actionLog);
	}

	public static ActionLog createActionLog(StaffDevelopment staffDev, User user, String stage, ActionType action, String comment, String comment2) {
		ActionLog actionLog = new ActionLog();
		actionLog.setStaffdevelopment(staffDev);
		actionLog.setUsername(user == null ? "SYSTEM" : stage + ": (" + user.getFullName() + ")");
		actionLog.setUser(user);
		actionLog.setComment(comment + (comment2 == null || comment2.length() == 0 ? "" : ": " + comment2));
		actionLog.setAction(action);
		return actionLog;
	}
	
	@Transactional
	public StaffDevelopment createNew(User user){
		StaffDevelopment staffDev = new StaffDevelopment();
		
		staffDev.setStatus(STATUS.NEW);
		staffDev.setOwner(user);
		staffDev.setFirstName(user.getFirstName());
		staffDev.setLastName(user.getLastName());
		
		staffDev.setUnit(user.getDepartment());
		
		staffDev.setReferenceNumber(this.getNextRefNumber());
		this.entityManager.persist(staffDev);
		LOG.info("Staff Dev persisted with ID: " + staffDev.getId());
		return staffDev;
	}
	
	private void findLastReferenceNumber() {
		try {
			int year = Calendar.getInstance().get(Calendar.YEAR);
			String maxRefNo = (String) this.entityManager
					.createQuery("select s.referenceNumber from StaffDevelopment s where s.referenceNumber like :text order by s.referenceNumber desc")
					.setParameter("text", "CDO-" + year + "%")
					.setMaxResults(1)
					.getSingleResult();
			LOG.info("Max referenceNumber: " + maxRefNo);
			Matcher matcher = Pattern.compile("\\-(\\d+)$").matcher(maxRefNo);
			if (matcher.find()) {
				LOG.info("Found part:" + matcher.group(1));
				String refNumber = matcher.group(1);
				this.nextRefnumber = Long.parseLong(refNumber) + 1;
			} else {
				this.nextRefnumber = 1l;
			}
		} catch (NoResultException e) {
			this.nextRefnumber = 1l;
		}
	}
	
	@Override
	@Transactional(readOnly = true)
	public List<User> findByRole(String role, User user, User principal) {
		return this.findByRole(this.applicationName, role, user, principal);
	}

	/*
	 * (non-Javadoc)
	 * @see org.iita.par.service.UserService#findByRole(java.lang.String)
	 */
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(readOnly = true)
	public List<User> findByRole(String application, String role, User user, User principal) {
		if(principal!=null)
			return this.entityManager.createQuery(
				"select ur.user from UserRole ur where ur.application=:application and ur.role=:role and (ur.user!=:user and ur.user!=:principal) order by ur.user.lastName, ur.user.firstName")
				.setParameter("application", application).setParameter("role", role).setParameter("user", user).setParameter("principal", principal).getResultList();
		else
			return this.entityManager.createQuery(
			"select ur.user from UserRole ur where ur.application=:application and ur.role=:role and ur.user!=:user order by ur.user.lastName, ur.user.firstName")
			.setParameter("application", application).setParameter("role", role).setParameter("user", user).getResultList();
	}

	@Override
	@Transactional
	public StaffDevelopment hodApproveApplication(StaffDevelopment staffDev, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		if(staffDev.getTrainingType().equalsIgnoreCase("Talent (Internal)")){
			//Send to the COMMITTEE REP for approval
			if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCOMMITTEE)){
				String comm = (comment.isEmpty() || comment==null)? "Application approved by Head of Unit" : comment;
				//mail notifications to HOD and send a copy of the application to the USER
				this.notificationService.staffDevelopmentStatus(staffDev, "Application approved by Head of Unit");
				this.notificationService.committeeStaffDevPending(staffDev);
				addActionLog(staffDev, staffDev.getHod(), "Head of Unit", ActionType.APPROVED, comm, null);
			}
		}else{
			if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCDO)){
				String comm = (comment.isEmpty() || comment==null)? "Application approved by Head of Unit" : comment;
				//mail notifications to HOD and send a copy of the application to the USER
				this.notificationService.staffDevelopmentStatus(staffDev, "Application approved by Head of Unit");
				this.notificationService.cdoStaffDevPending(staffDev);
				addActionLog(staffDev, staffDev.getHod(), "Head of Unit", ActionType.APPROVED, comm, null);
			}
		}
		return staffDev;
	}

	@Override
	@Transactional
	public StaffDevelopment hodRejectApplication(StaffDevelopment staffDev, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORHOD)){
			String comm = (comment.isEmpty() || comment==null)? "Application rejected by Head of Unit" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.entityManager.merge(staffDev);
			
			this.notificationService.staffDevelopmentStatus(staffDev, "Application rejected by Head of Unit");
			addActionLog(staffDev, staffDev.getHod(), "Head of Unit", ActionType.REJECTED, comm, null);
		}
		return staffDev;
	}
	
	@Override
	@Transactional
	public StaffDevelopment cmtApproveApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCDO)){
			String comm = (comment.isEmpty() || comment==null)? "Application approved by Committee Representative" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			this.notificationService.staffDevelopmentStatus(staffDev, "Application approved by Committee Representative");
			this.notificationService.cdoStaffDevPending(staffDev);
			addActionLog(staffDev, user, "Committee Approval", ActionType.APPROVED, comm, null);
		}
		return staffDev;
	}

	@Override
	@Transactional
	public StaffDevelopment cmtRejectApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCOMMITTEE)){
			String comm = (comment.isEmpty() || comment==null)? "Application rejected by Committee Representative" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.entityManager.merge(staffDev);
			
			this.notificationService.staffDevelopmentStatus(staffDev, "Application rejected by Committee Representative");
			addActionLog(staffDev, user, "Committee Approval", ActionType.REJECTED, comm, null);
		}
		return staffDev;
	}
	
	@Override
	@Transactional
	public StaffDevelopment cdoApproveApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		/*if(staffDev.getTrainingType().equalsIgnoreCase("Talent (Internal)")){
			//Send to the DDG PCD for approval
			if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORDDGPCD)){
				String comm = (comment.isEmpty() || comment==null)? "Application approved by Head CDO" : comment;
				//mail notifications to HOD and send a copy of the application to the USER
				this.notificationService.staffDevelopmentStatus(staffDev, "Application approved by Head CDO");
				this.notificationService.ddgStaffDevPending(staffDev);
				addActionLog(staffDev, user, "Head CDO", ActionType.APPROVED, comm, null);
			}
		}else*/
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.APPROVED)){
			String comm = (comment.isEmpty() || comment==null)? "Application fully approved by Head CDO" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			this.notificationService.staffDevelopmentStatus(staffDev, "Application fully approved by Head CDO");
			addActionLog(staffDev, user, "Head CDO", ActionType.APPROVED, comm, null);
		}else{
			
		}
		return staffDev;
	}

	@Override
	@Transactional
	public StaffDevelopment cdoRejectApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORCDO)){
			String comm = (comment.isEmpty() || comment==null)? "Application rejected by Head CDO" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.entityManager.merge(staffDev);
			
			this.notificationService.staffDevelopmentStatus(staffDev, "Application rejected by Head CDO");
			addActionLog(staffDev, user, "Head CDO", ActionType.REJECTED, comm, null);
		}
		return staffDev;
	}
	
	@Override
	@Transactional
	public StaffDevelopment ddgApproveApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		LOG.info("APPROVAL STATUS: " + staffDev.getApprovalStatus());
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.APPROVED)){
			LOG.info("Notifying by mail: " + staffDev.getId());
			String comm = (comment.isEmpty() || comment==null)? "Application approved by DDG PCD" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			this.notificationService.staffDevelopmentStatus(staffDev, "Application fully approved by DDG PCD");
			//this.notificationService.ddgStaffDevPending(staffDev);
			addActionLog(staffDev, user, "DDG PCD", ActionType.APPROVED, comm, null);
		}
		return staffDev;
	}

	@Override
	@Transactional
	public StaffDevelopment ddgRejectApplication(StaffDevelopment staffDev, User user, String comment) {
		if(staffDev!=null){
			if(staffDev.getId()!=null){
				LOG.info("Staff Dev merged with ID: " + staffDev.getId());
				this.entityManager.merge(staffDev);
			}
		}
		//Send to the COMMITTEE REP for approval
		if(staffDev.getApprovalStatus().equals(APPROVALSTATUS.WAITINGFORDDGPCD)){
			String comm = (comment.isEmpty() || comment==null)? "Application rejected by DDG PCD" : comment;
			//mail notifications to HOD and send a copy of the application to the USER
			staffDev.setApprovalStatus(APPROVALSTATUS.REJECTED);
			this.entityManager.merge(staffDev);
			
			this.notificationService.staffDevelopmentStatus(staffDev, "Application rejected by DDG PCD");
			addActionLog(staffDev, user, "DDG PCD", ActionType.REJECTED, comm, null);
		}
		return staffDev;
	}
	
	/**
	 * @throws TravelAuthorizationException
	 * @see org.iita.travelauth.service.TravelAuthorizationService#getTravelAuthorizations(org.iita.security.model.User, int, int)
	 */
	@Override
	@Transactional(readOnly = true)
	public PagedResult<StaffDevelopment> getAwaitingApproval(User user, int startAt, int maxResults) throws CDOApplicationException {
		if (user == null) {
			throw new CDOApplicationException("User not provided");
		}

		int approverCount = ((Long) this.entityManager.createQuery(
				"select count(*) from StaffDevelopment sd where (sd.approvalStatus=:staffStatus and sd.supervisor=:user) or " +
				"(sd.approvalStatus=:staffStatusHod and sd.hod=:user) or " +
				"(sd.approvalStatus=:staffStatusCmt and sd.nextApprover=:user) or " +
				"(sd.approvalStatus=:staffStatusCdo and sd.nextApprover=:user) or " +
				"(sd.approvalStatus=:staffStatusDdg and sd.nextApprover=:user)")
				.setParameter("staffStatus", APPROVALSTATUS.SUPERVISOR)
				.setParameter("staffStatusHod", APPROVALSTATUS.WAITINGFORHOD)
				.setParameter("staffStatusCmt", APPROVALSTATUS.WAITINGFORCOMMITTEE)
				.setParameter("staffStatusCdo", APPROVALSTATUS.WAITINGFORCDO)
				.setParameter("staffStatusDdg", APPROVALSTATUS.WAITINGFORDDGPCD)
				.setParameter("user", user).getSingleResult()).intValue();
		LOG.debug("Total linemanager/director pending: " + approverCount);


		PagedResult<StaffDevelopment> pagedAwaitingApproval = new PagedResult<StaffDevelopment>(startAt, maxResults);
		pagedAwaitingApproval.setTotalHits(approverCount);
		LOG.debug("Total pending: " + pagedAwaitingApproval.getTotalHits());

		// all
		pagedAwaitingApproval.setResults(this.entityManager.createQuery(
				"from StaffDevelopment sd where (sd.approvalStatus=:staffStatus and sd.supervisor=:user) or " +
				"(sd.approvalStatus=:staffStatusHod and sd.hod=:user) or " +
				"(sd.approvalStatus=:staffStatusCmt and sd.nextApprover=:user) or " +
				"(sd.approvalStatus=:staffStatusCdo and sd.nextApprover=:user) or " +
				"(sd.approvalStatus=:staffStatusDdg and sd.nextApprover=:user) " +
				"order by startDate desc")
				.setParameter("staffStatus", APPROVALSTATUS.SUPERVISOR)
				.setParameter("staffStatusHod", APPROVALSTATUS.WAITINGFORHOD)
				.setParameter("staffStatusCmt", APPROVALSTATUS.WAITINGFORCOMMITTEE)
				.setParameter("staffStatusCdo", APPROVALSTATUS.WAITINGFORCDO)
				.setParameter("staffStatusDdg", APPROVALSTATUS.WAITINGFORDDGPCD)
				.setParameter("user", user).setFirstResult(startAt).setMaxResults(maxResults).getResultList());
		LOG.debug("Total pending (1): " + pagedAwaitingApproval.getResults().size());
		

		return pagedAwaitingApproval;
	}
	
	/**
	 * Checks next approver in the TA BudgetCode list
	 * 
	 */
	@Override
	public List<User> getWaitingFor(StaffDevelopment sd) {
		List<User> waitingFor = new ArrayList<User>();
		switch (sd.getApprovalStatus()) {
		case SUPERVISOR:
			waitingFor.add(sd.getSupervisor());
			break;
		case WAITINGFORHOD:
			waitingFor.add(sd.getHod());
			break;
		case WAITINGFORCOMMITTEE:
			waitingFor.add(sd.getNextApprover());
			break;
		case WAITINGFORCDO:
			waitingFor.add(sd.getNextApprover());
			break;
		case WAITINGFORDDGPCD:
			waitingFor.add(sd.getNextApprover());
			break;
		}
		return waitingFor;
	}
	
	@Override
	//@Secured( { "ROLE_CFO", "ROLE_READALL", "BF_USERACCESS", "ROLE_ADMIN", "ROLE_CDO", "ROLE_DDG", "ROLE_DIRECTOR", "ROLE_TRAININGUNITHEAD", "ROLE_APPLICATION", "ROLE_REGISTRATION", "ROLE_SUPERVISOR", "ROLE_COMMITTEE", "ROLE_DDGPCD" })
	@Secured( { "ROLE_CFO", "ROLE_READALL", "BF_USERACCESS" })
	@Transactional(readOnly = true)
	public StaffDevelopment load(Long id) {
		return this.entityManager.find(StaffDevelopment.class, id);
	}

	@Override
	@Transactional
	public StaffDevelopment saveEvaluation(StaffDevelopmentEvaluation evaluation) {
		if(evaluation.getId()!=null)
			this.entityManager.merge(evaluation);
		else
			this.entityManager.persist(evaluation);
		return evaluation.getStaffdevelopment();
	}

	@Override
	@Transactional
	public StaffDevelopment finalizeEvaluation(StaffDevelopmentEvaluation evaluation) {
		if(evaluation.getId()!=null)
			this.entityManager.merge(evaluation);
		else
			this.entityManager.persist(evaluation);
		return evaluation.getStaffdevelopment();
	}
}

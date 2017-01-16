package org.iita.trainingunit.staff.service;

import java.util.List;

import org.iita.security.model.User;
import org.iita.trainingunit.applications.service.impl.CDOApplicationException;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.model.StaffDevelopmentEvaluation;
import org.iita.util.PagedResult;

public interface StaffService {

	PagedResult<StaffDevelopment> getApplications(User user, int startAt, int maxResults) throws CDOApplicationException;

	PagedResult<StaffDevelopment> getApplications(int startAt, int maxResults) throws CDOApplicationException;

	StaffDevelopment loadApplication(Long id);

	boolean deleteApplication(Long id);

	StaffDevelopment saveApplication(StaffDevelopment staffDev);
	
	String getComingRequestNumber();

	List<User> findByRole(String role, User user, User principal);

	List<User> findByRole(String application, String role, User user, User principal);

	StaffDevelopment createNew(User user);

	StaffDevelopment supervisorApplication(StaffDevelopment staffDev);

	StaffDevelopment hodApproveApplication(StaffDevelopment staffDev, String comment);

	StaffDevelopment hodRejectApplication(StaffDevelopment staffDev, String comment);

	StaffDevelopment cmtApproveApplication(StaffDevelopment staffDev, User user, String comment);

	StaffDevelopment cmtRejectApplication(StaffDevelopment staffDev, User user, String comment);

	StaffDevelopment cdoApproveApplication(StaffDevelopment staffDev, User user, String comment);

	StaffDevelopment cdoRejectApplication(StaffDevelopment staffDev, User user, String comment);

	StaffDevelopment ddgApproveApplication(StaffDevelopment staffDev, User user, String comment);

	StaffDevelopment ddgRejectApplication(StaffDevelopment staffDev, User user, String comment);

	PagedResult<StaffDevelopment> getAwaitingApproval(User user, int startAt, int maxResults) throws CDOApplicationException;

	List<User> getWaitingFor(StaffDevelopment sd);

	StaffDevelopment load(Long id);

	StaffDevelopment saveEvaluation(StaffDevelopmentEvaluation evaluation);

	StaffDevelopment finalizeEvaluation(StaffDevelopmentEvaluation evaluation);
}

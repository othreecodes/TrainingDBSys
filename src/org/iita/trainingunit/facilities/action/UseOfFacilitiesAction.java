package org.iita.trainingunit.facilities.action;

import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.action.BioDataAction;
import org.iita.trainingunit.applications.service.CDOApplicationService;
import org.iita.trainingunit.facilities.model.UseOfFacilities;
import org.iita.trainingunit.facilities.service.UseOfFacilitiesService;
import org.iita.trainingunit.applications.service.CDOApplicationService;
import com.opensymphony.xwork2.Action;
/**
 * @author othreecodes
 *
 */
public class UseOfFacilitiesAction extends BioDataAction {

	private UseOfFacilities useOfFacilities;
	private CDOApplicationService cdoApplicationService;
	private UseOfFacilitiesService useOfFacilitiesService;
	
	public UseOfFacilitiesAction(CDOApplicationService cdoApplicationService,UseOfFacilitiesService useOfFacilitiesService) {
		super(cdoApplicationService);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() {
		
		return Action.SUCCESS;
	}

	/**
	 * @return the useOfFacilities
	 */
	public UseOfFacilities getUseOfFacilities() {
		return useOfFacilities;
	}

	/**
	 * @param useOfFacilities the useOfFacilities to set
	 */
	public void setUseOfFacilities(UseOfFacilities useOfFacilities) {
		this.useOfFacilities = useOfFacilities;
	}

	/**
	 * @return the cdoApplicationService
	 */
	public CDOApplicationService getCdoApplicationService() {
		return cdoApplicationService;
	}

	/**
	 * @param cdoApplicationService the cdoApplicationService to set
	 */
	public void setCdoApplicationService(CDOApplicationService cdoApplicationService) {
		this.cdoApplicationService = cdoApplicationService;
	}

	/**
	 * @return the useOfFacilitiesService
	 */
	public UseOfFacilitiesService getUseOfFacilitiesService() {
		return useOfFacilitiesService;
	}

	/**
	 * @param useOfFacilitiesService the useOfFacilitiesService to set
	 */
	public void setUseOfFacilitiesService(UseOfFacilitiesService useOfFacilitiesService) {
		this.useOfFacilitiesService = useOfFacilitiesService;
	}
	
	
	

}

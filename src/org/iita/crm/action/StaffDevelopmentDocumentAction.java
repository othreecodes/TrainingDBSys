/**
 * 
 */
package org.iita.crm.action;

import org.iita.crm.service.CoreCRMService;
import org.iita.trainingunit.staff.model.StaffDevelopment;
import org.iita.trainingunit.staff.model.StaffDevelopmentDocument;

/**
 * @author koraegbunam
 *
 */
@SuppressWarnings("serial")
public class StaffDevelopmentDocumentAction extends EntityDocumentAction<StaffDevelopment, StaffDevelopmentDocument> {

	private CoreCRMService coreCRMService;

	/**
	 * @see org.iita.crm.action.EntityDocumentAction#setDocumentService(org.iita.crm.service.DocumentService)
	 */
	public void setDocumentService(CoreCRMService coreCRMService) {
		super.setDocumentService(coreCRMService);
		this.coreCRMService = coreCRMService;
	}

	/**
	 * @see org.iita.crm.action.EntityDocumentAction#createNewDocument()
	 */
	@Override
	protected StaffDevelopmentDocument createNewDocument() {
		return new StaffDevelopmentDocument();
	}

	/**
	 * @see org.iita.crm.action.EntityDocumentAction#loadEntity(java.lang.Long)
	 */
	@Override
	protected StaffDevelopment loadEntity(Long entityId) {
		return this.coreCRMService.find(StaffDevelopment.class, entityId);
	}
	
	/**
	 * @see org.iita.crm.action.EntityDocumentAction#loadEntityDocument(long)
	 */
	@Override
	protected StaffDevelopmentDocument loadEntityDocument(long id) {
		return this.coreCRMService.find(StaffDevelopmentDocument.class, id);
	}
}

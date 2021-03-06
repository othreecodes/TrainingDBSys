/**
 * 
 */
package org.iita.trainingunit.iya.action;

import org.iita.crm.action.BaseAction;
import org.iita.trainingunit.iya.model.IYATrainingAnnouncement;
import org.iita.trainingunit.iya.service.IyaService;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.Preparable;

/**
 * @author ken
 *
 */
public class IyaAnnouncementEditAction extends BaseAction implements Preparable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IyaService iyaService;
	private IYATrainingAnnouncement announcement;
	private Long id;
	private String sponsor;
	private String organizer;
	
	public IyaAnnouncementEditAction(IyaService iyaService) {
		this.iyaService = iyaService;
	}
	
	@Override
	public void prepare(){
		super.prepare();
		
		if (this.id != null){
			System.out.println("PREPARE LOAD ANNOUNCEMENT!");
			this.announcement = this.iyaService.loadAnnouncement(this.id);
		}
	}
	
	public String edit(){
		if(this.organizer!=null)
			this.announcement.setOrganizer(this.organizer);
		
		if(this.sponsor!=null)
			this.announcement.setSponsor(this.sponsor);
		
		if (this.announcement != null){
			if (this.announcement.getId() != null)
				this.iyaService.updateAnnouncement(this.announcement);
		}
		return Action.SUCCESS;
	}
	
	/**
	 * @param announcements the announcements to set
	 */
	public void setAnnouncement(IYATrainingAnnouncement announcement) {
		this.announcement = announcement;
	}
	
	/**
	 * @return the announcement
	 */
	public IYATrainingAnnouncement getAnnouncement() {
		return announcement;
	}

	/**
	 * @param sponsor the sponsor to set
	 */
	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	/**
	 * @return the sponsor
	 */
	public String getSponsor() {
		return sponsor;
	}

	/**
	 * @param organizer the organizer to set
	 */
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	/**
	 * @return the organizer
	 */
	public String getOrganizer() {
		return organizer;
	}
}

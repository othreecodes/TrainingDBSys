/**
 * 
 */
package org.iita.trainingunit.staff.model;

import javax.persistence.Entity;

import org.hibernate.search.annotations.Indexed;
import org.iita.crm.model.EntityDocument;
import org.iita.security.UserAccess;
import org.iita.security.model.User;

/**
 * @author ken
 *
 */
@Entity
@Indexed
public class StaffDevelopmentDocument extends EntityDocument<StaffDevelopment> implements UserAccess {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Access to announcement documents is limited to people with general roles
	 * 
	 * @see org.iita.security.UserAccess#hasAccess(org.iita.security.model.User)
	 */
	@Override
	public boolean hasAccess(User user) {
		return false;
	}
}

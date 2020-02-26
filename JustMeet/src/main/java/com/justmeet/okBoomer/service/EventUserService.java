/**
 * 
 */
package com.justmeet.okBoomer.service;

import java.util.List;

import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.EventUser;

/**
 * @author Tommaso Cippitelli
 *
 */
public interface EventUserService {

	void save(EventUser eventUser);
	
	List<Event> eventsPartecipated(long id);

}

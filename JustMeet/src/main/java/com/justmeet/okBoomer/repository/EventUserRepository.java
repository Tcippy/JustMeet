package com.justmeet.okBoomer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.EventUser;

public interface EventUserRepository extends JpaRepository<EventUser, Long> {

	@Query(value="select e from Event e, EventUser u where u.id=:id and u.event=e.id")
	  List<Event> eventsPartecipated(long id);

}

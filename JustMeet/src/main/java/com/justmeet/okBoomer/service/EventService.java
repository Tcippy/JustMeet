/**
 * 
 */
package com.justmeet.okBoomer.service;

import java.security.Principal;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.query.Param;

import com.justmeet.okBoomer.model.Category;
import com.justmeet.okBoomer.model.Event;
import com.justmeet.okBoomer.model.User;

/**
 * @author Tommaso Cippitelli
 *
 */
public interface EventService {

	List<Event> findByTitolo(String titolo);

	public List<Event> searchBy(@Param(value = "categoria") Category categoria,
			@Param(value = "dataEvento") Date dataEvento);

	void save(Event event);

	List<Event> findByUserUsername(Principal user);

	Optional<Event> showDetails(Long id);

	/*
	 * void updateEvent(long id,@Param(value = "titolo") String titolo, @Param(value
	 * = "categoria") Category categoria,
	 * 
	 * @Param(value = "dataEvento") Date dataEvento,@Param(value = "descrizione")
	 * String descrizione,
	 * 
	 * @Param(value = "citta")String citta,@Param(value = "scadenzaPagamento")Date
	 * scadenzaPagamento,
	 * 
	 * @Param(value = "prezzo") float prezzo);
	 */
	void deleteById(long id);

	Event findById(long id);
	

}

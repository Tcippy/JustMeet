package com.justmeet.okBoomer.repository;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.hibernate.sql.Update;
import org.hibernate.validator.internal.IgnoreForbiddenApisErrors;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.justmeet.okBoomer.model.Category;
import com.justmeet.okBoomer.model.Event;

public interface EventRepository extends JpaRepository<Event, Long>{
  List<Event> findByTitolo(String titolo);
  List<Event> findByOwner(String string);
  Event findById(long id);
  
 
  List<Event> findByCategoriaAndDataEvento( @Param(value = "categoria") Category categoria,
		  @Param(value = "dataEvento")  Date dataEvento);
 
  Optional<Event> findById( Long id);
  
  void deleteById(long id);


}
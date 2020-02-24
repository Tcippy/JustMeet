package com.justmeet.auth.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.justmeet.auth.model.User;
import com.justmeet.auth.model.UserOrganizer;

public interface UserOrganizerRepository extends JpaRepository<User, Long> {
/*
	@Override
	default Optional<User> findById(Long id) {
		// TODO Auto-generated method stub
		return this.findById(id);
	}
	*/
}

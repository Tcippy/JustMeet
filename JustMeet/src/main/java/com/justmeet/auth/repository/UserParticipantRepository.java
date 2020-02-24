package com.justmeet.auth.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.justmeet.auth.model.User;

public interface UserParticipantRepository extends JpaRepository<User, Long> {

}

/**
 * 
 */
package com.justmeet.auth.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.CascadeType;


/**
 * @author  Cippitelli, Rinaldi
 *
 */
@Entity
@Inheritance(strategy=InheritanceType.JOINED)
public class UserOrganizer extends User {
   @Id
	private Long id;

    private String username;

    private String password;
   /*
    @OneToMany
    @JoinColumn(name="UserOrganizer_Username")
        private List<Event> eventiOrganizzati;
        */
	/**
	 * @param id
	 * @param username
	 * @param password
	 * @param passwordConfirm
	 * @param roles
	 */
	public UserOrganizer(Long id, String username, String password, String passwordConfirm,
			Set<Role> roles, List<Event> eventiOrganizzati) {
		super(id, username, password, passwordConfirm, roles);
		// TODO Auto-generated constructor stub
		this.id=id;
		this.username=username;
		this.password=password;

	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	public void modificaDatiAnnuncio(Event e) {
		
	}
	
	public boolean eliminaAnnuncio(Event e) {
		
		return false;
	}
	
	public boolean accettaPartecipante(User u) {
		
		return false;
	}
	
	public boolean rifiutaPartecipante(User u) {
		
		return false;
	}
	
	public List<Event> visualizzaAnnunciPubblicati(){
		
		return null;
	}


	/**
	 * @return the eventiOrganizzati
	 */
/*	public List<Event> getEventiOrganizzati() {
		return eventiOrganizzati;
	}
*/
}

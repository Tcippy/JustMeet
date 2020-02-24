/**
 * 
 */
package com.justmeet.auth.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

/**
 * @author  Cippitelli, Rinaldi
 *
 */
@Entity
@Inheritance(strategy=InheritanceType.JOINED)
public class UserParticipant extends User{


	private Long id;

    private String username;

    private String password;
    @ManyToMany
    private List<Event> eventiPartecipi= new ArrayList<Event>();

    /**
	 * @param id
	 * @param username
	 * @param password
	 * @param passwordConfirm
	 * @param roles
	 */
	public UserParticipant(Long id, String username, String password, String passwordConfirm,
			Set<Role> roles, List<Event> eventiPartecipi) {
		super(id, username, password, passwordConfirm, roles);
		this.id=id;
		this.username=username;
		this.password=password;
        this.eventiPartecipi=eventiPartecipi;
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
	
	public boolean richiediAdesione() {
		
		return false;
	}
	
	public List<Event> visualizzaStoricoAdesioni(){
		
		return null;
	}
	
	public void ritiraRichiestaPartecipazione() {
		
	}
	
	public void apriDettagliEvento() {
		
	}
	
	public void pagaQuotaAdesione() {
		
	}


	/**
	 * @return the eventiPartecipi
	 */
	public List<Event> getEventiPartecipi() {
		return eventiPartecipi;
	}

}

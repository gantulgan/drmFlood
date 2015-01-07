package com.tsahimur.ubflood.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "admin_user")
public class AdminUser implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6808365949938930197L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
	private int id;

    @Column(name = "username")
	private String username;

    @Column(name = "password")
	private String password;
    
    @Column(name = "name")
	private String name;

    @Column(name = "email")
	private String email;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}

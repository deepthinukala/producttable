package com.niit.shoppingkart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Entity
@Table(name="USERDETAILS")
@Component
public class UserDetails {
	@Id
	@GeneratedValue
	private int userid;
	private String username;
    private String email;
	private String password;
	private String contact;
	private String address;
	private String role;
	private boolean enabled;
	@GeneratedValue
	public int getUserid() {
		return userid;
	}
	public String getUsername() {
		return username;
	}
	public String getPassword() {
		return password;
	}
	public String getContact() {
		return contact;
	}
	public String getAddress() {
		return address;
	}
	public String getRole() {
		return role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}

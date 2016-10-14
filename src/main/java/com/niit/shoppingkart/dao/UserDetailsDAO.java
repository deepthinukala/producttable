package com.niit.shoppingkart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingkart.model.UserDetails;

@Repository
public interface UserDetailsDAO {

	public boolean saveorUpdate(UserDetails userDetails);
	public boolean delete(UserDetails userDetails);
	public UserDetails get(int userid);
	public List<UserDetails> list();
	public UserDetails isValidUser(int userid, String password);
	public UserDetails get(String username);
	
}

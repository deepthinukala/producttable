package com.niit.shoppingkart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.model.UserDetails;

public class UserDetailsImpl implements UserDetailsDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	public UserDetailsImpl(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
		}
	@Transactional
	public boolean saveorUpdate(UserDetails userDetails){
		try{
			sessionFactory.getCurrentSession().saveOrUpdate(userDetails);
			return true;
			} catch(Exception e) {
				e.printStackTrace();
				return false;
			}
	}
		
		@Transactional
		public boolean delete(UserDetails userDetails){
			try{
				sessionFactory.getCurrentSession().delete(userDetails);
				return true;
			} catch(Exception e){
				e.printStackTrace();
				return false;
			}
		}
		@Transactional
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public  UserDetails get(int id){
			
			String hql = "from UserDetails where id= "+ "'"+ id+"'" ;
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			List<UserDetails>list= query.list();
			
			if(list==null)
			{
				return null;
			}
			else
			{
				return list.get(0);
			}
		}
		@Transactional
		public UserDetails isValidUser(int userid,String password){
			String hql="from UserDetails where userid= '" +userid+"' and password '" +password+"'"; 
			@SuppressWarnings("rawtypes")
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<UserDetails> list = query.list();
			if(list==null){
				return null;
			}
			else{
				return list.get(0);
			}
		}
		
		
		@Transactional
		@SuppressWarnings({ "unchecked", "rawtypes" })
		public  List<UserDetails> list(){
			
			String hql ="from UserDetails";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
		}
		@Transactional
		public UserDetails get(String username) {
			Criteria c=sessionFactory.getCurrentSession().createCriteria(UserDetails.class);
			c.add(Restrictions.eq("username",username));
			
			@SuppressWarnings("unchecked")
			List<UserDetails> listUser = (List<UserDetails>) c.list();
			
			if (listUser != null && !listUser.isEmpty()) {
				return listUser.get(0);
			}
			else {
				return null;
			}
		
		}
		
	}



package com.niit.shoppingkart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.model.Cart;

@SuppressWarnings("deprecation")

public class CartImpl implements CartDAO {
	private static final Logger logger = LoggerFactory.getLogger(CartImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	public CartImpl(SessionFactory sessionFactory) {
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public boolean save(Cart cart) {
		try {
			logger.debug("Session started");
			sessionFactory.getCurrentSession().save(cart);
			logger.debug("Cart has been saved:"+cart.getId());
			return true;
		} catch (Exception e) {
			
			logger.error("Operation failed");
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean update(Cart cart) {
		try {
			logger.debug("Session started");
			sessionFactory.getCurrentSession().update(cart);
			logger.debug("Cart has been saved:"+cart.getId());
			return true;
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean delete(Cart cart) {
		try {
			logger.debug("Session started");
			sessionFactory.getCurrentSession().delete(cart);
			logger.debug("Cart has been saved:"+cart.getId());
			return true;
		} catch (Exception e) {
			
			e.printStackTrace();
			return false;
		}

	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Transactional
	public List<Cart> list() {
		
		String hql ="from Cart";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Transactional
	public Cart get(int id) {
		String hql = "from Cart where id= "+ "'"+ id+"'" ;
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Cart>list= query.list();
		
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
	@SuppressWarnings("unchecked")
	public Cart getproduct(int id) {
		String hql="from Cart where productid= "+id;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<Cart>listproduct=query.list();

		if(listproduct.isEmpty())
		{
			
			return null;
		}
		else
		{
			System.out.println("product");
			return listproduct.get(0);
		}
	}
	
	/*@Transactional
	public void pay(int userId) {
		String hql="update Cart set status='P' where userid="+userId;	
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.executeUpdate();
	}
	
	@Transactional
	public double CartPrice(int userid) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(Cart.class);
		c.add(Restrictions.eq("userid", userid));
		c.add(Restrictions.eq("status","C"));
		c.setProjection(Projections.sum("price"));
		double l= (double) c.uniqueResult();
		return l;
		}
	@Transactional
	public long cartsize(int userId) {
		Criteria c=sessionFactory.getCurrentSession().createCriteria(Cart.class);
		c.add(Restrictions.eq("userid", userId));
		c.add(Restrictions.eq("status","C"));
		c.setProjection(Projections.count("userid"));
		long count=(long) c.uniqueResult();
		return count;
	}*/
	
}

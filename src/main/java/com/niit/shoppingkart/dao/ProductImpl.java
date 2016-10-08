package com.niit.shoppingkart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingkart.model.Product;


@Repository
public class ProductImpl implements ProductDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(ProductImpl.class);

	
	
	
	@Autowired
	private SessionFactory sessionFactory;


	public ProductImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public boolean saveOrUpdate(Product product){
		try {
			logger.debug("Session started");
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			
			logger.debug("Product has been saved:"+product.getId());
			return true;
		} catch (Exception e) {
			logger.error("Operation failed");
			
			e.printStackTrace();
			return false;
		}
	
	} 

	@Transactional
	public boolean delete(Product product)
	    {     
		try {
			logger.info("Product deletion started");
			sessionFactory.getCurrentSession().delete(product);
			logger.info("Product Id:"+product.getId()+"has been deleted");
			
			return true;
		}
		 catch (Exception e){
			e.printStackTrace();
		logger.error("Delete operation failed");
		return false;
		}
		}

	@Transactional
	public Product get(int id) {
		String hql = "from"+" Product"+" where id=" +id;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}
	
	@SuppressWarnings("deprecation")

	@Transactional
  public List<Product> list(){
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>)
		sessionFactory.getCurrentSession()
		.createCriteria(Product.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
	}

}

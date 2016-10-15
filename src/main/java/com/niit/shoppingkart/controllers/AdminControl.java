package com.niit.shoppingkart.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingkart.dao.CategoryDAO;
import com.niit.shoppingkart.dao.ProductDAO;
import com.niit.shoppingkart.model.Product;

@Controller
public class AdminControl {
	
	@Autowired
	 CategoryDAO categoryDAO;
	 @Autowired
	 ProductDAO productDAO;
	 
	@RequestMapping(value="/")
	public String init(Model m){
		/*m.addAttribute("msg","Welcome Deepthi");*/
		m.addAttribute("product",new Product());
		m.addAttribute("allInfo", categoryDAO.list());
		m.addAttribute("allData",productDAO.list());
		return "/Home";
		
	}
	

}

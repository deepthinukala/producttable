package com.niit.shoppingkart.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingkart.dao.*;
import com.niit.shoppingkart.model.Product;

@Controller
public class HomeControl {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
@RequestMapping(value={"/Home"},method=RequestMethod.GET)
public String homepage(Model m){
	m.addAttribute("userclickedhome", "true");
	m.addAttribute("product",new Product());
	m.addAttribute("allInfo", categoryDAO.list());
	m.addAttribute("allData",productDAO.list());
	
	return "Home";
}
@RequestMapping(value ="ShowProduct/{id}" )
public String ShowProduct(@PathVariable("id") int id,RedirectAttributes attributes,Model m) {
m.addAttribute("Clickedshowproduct", "true");
	m.addAttribute("IndividualProduct", productDAO.getproduct(id));
	/*m.addAttribute("allData",productDAO.list());*/
	return "ShowProduct";
}
	
@RequestMapping(value="navproduct/{id}")
public String navproduct(Model m,@PathVariable("id") int id ){

	m.addAttribute("Clickedcatproduct", "true");
	m.addAttribute("navproducts", productDAO.navproduct(id));
	return "catproducts";
}
}

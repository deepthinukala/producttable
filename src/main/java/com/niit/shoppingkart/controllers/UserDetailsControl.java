package com.niit.shoppingkart.controllers;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingkart.dao.CategoryDAO;
import com.niit.shoppingkart.dao.ProductDAO;
import com.niit.shoppingkart.dao.UserDetailsDAO;
import com.niit.shoppingkart.model.Product;
import com.niit.shoppingkart.model.UserDetails;




@Controller
public class UserDetailsControl {

 @Autowired
 UserDetailsDAO userDAO;
 @Autowired
 CategoryDAO categoryDAO;
 @Autowired
 ProductDAO productDAO;
 
 @RequestMapping(value = "Login")
 public String DisplayLogin(Model mv) {
  mv.addAttribute("user", new UserDetails());
  mv.addAttribute("UserClickedlogin", "true");
  return "Login";
 }
  
 @RequestMapping(value = "/login_session_attributes")
 public String login_session_attributes(HttpSession session) {
  String username = SecurityContextHolder.getContext().getAuthentication().getName();
  UserDetails user = userDAO.get(username);
  session.setAttribute("userid", user.getUserid());
  session.setAttribute("name", user.getUsername());
  session.setAttribute("LoggedIn", "true");

  Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext()
  .getAuthentication().getAuthorities();
  String role="ROLE_USER";
  for (GrantedAuthority authority : authorities) 
  {
    
       if (authority.getAuthority().equals(role)) 
       {
        session.setAttribute("UserLoggedIn", "true");
        //session.setAttribute("cartsize",CartDAO.getcartsize((int) session.getAttribute("userid")));
        return "redirect:/Home";
       }
       else 
       {
        session.setAttribute("Administrator", "true");
    return "/admin";
       }
 }
  return "/";
 
 }
 
 @RequestMapping(value="/LOGINERROR")
 public String errorpage(RedirectAttributes attributes){
 attributes.addFlashAttribute("error", "The Username or Password you entered is incorrect please try again");
  return "redirect:/Login";
 }


  /*@RequestMapping(value = "/LoginSuccess")*/
 /*@RequestMapping(value = "/login_session_attributes")
 public String Display(Model mv) {
	 mv.addAttribute("product",new Product());
		mv.addAttribute("allInfo", categoryDAO.list());
		mv.addAttribute("allData",productDAO.list());
    return "userlogin";
 }
 */

 @RequestMapping(value = "Registration")
 public String DisplayRegister(Model mv) {
  mv.addAttribute("user", new UserDetails());
  mv.addAttribute("allcategory", categoryDAO.list());
  mv.addAttribute("allproduct", productDAO.list());
  mv.addAttribute("UserClickedregister", "true");
  return "Registration";
 }

 @RequestMapping(value = "adduser", method = RequestMethod.POST)
 public String UserRegister(@ModelAttribute("user") UserDetails userdetails, Model mv,RedirectAttributes attributes) {
  userdetails.setEnabled(true);
  userdetails.setRole("ROLE_USER");
  userDAO.saveorUpdate(userdetails);
  attributes.addFlashAttribute("SuccessMessage","Registration Successfull");
  return "redirect:/Registration";
 }
 
 @RequestMapping(value = "contact")
	public String Displaycontact(Model mv) {
		mv.addAttribute("UserClickedContact", "true");
		return "contact";
	}
	
	@RequestMapping(value = "About")
	public String Displayabout(Model mv) {
		mv.addAttribute("UserClickedAbout", "true");
		return "About";
	}
 
}
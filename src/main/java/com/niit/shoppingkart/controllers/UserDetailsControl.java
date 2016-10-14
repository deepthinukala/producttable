package com.niit.shoppingkart.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingkart.dao.CategoryDAO;
import com.niit.shoppingkart.dao.ProductDAO;
import com.niit.shoppingkart.dao.UserDetailsDAO;
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
 /*@RequestMapping(value = "/LoginSuccess")*/
 @RequestMapping(value = "/login_session_attributes")
 public String Display(Model mv) {
    return "Home";
 }

 @RequestMapping(value = "Registration")
 public String DisplayRegister(Model mv) {
  mv.addAttribute("user", new UserDetails());
  mv.addAttribute("allcategory", categoryDAO.list());
  mv.addAttribute("allproduct", productDAO.list());
  mv.addAttribute("UserClickedregister", "true");
  return "Registration";
 }

 @RequestMapping(value = "adduser", method = RequestMethod.POST)
 public String UserRegister(@ModelAttribute("user") UserDetails userdetails, Model mv) {
  userdetails.setEnabled(true);
  userdetails.setRole("ROLE_USER");
  userDAO.saveorUpdate(userdetails);
  mv.addAttribute("message", "Registration Success");
  return "redirect:/Home";
 }
}
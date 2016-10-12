package com.niit.shoppingkart.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminControl {
	@RequestMapping(value="/")
	public String init(Model model){
		model.addAttribute("msg","Welcome Deepthi");
		return "admin";
		
	}
	

}

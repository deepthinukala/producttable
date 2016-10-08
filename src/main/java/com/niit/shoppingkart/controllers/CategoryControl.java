package com.niit.shoppingkart.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingkart.dao.CategoryDAO;
import com.niit.shoppingkart.model.Category;
import com.google.gson.Gson;

@Controller
public class CategoryControl {
	@Autowired
    CategoryDAO categoryDAO;
	
	
	@RequestMapping(value="/categorygson")
	@ResponseBody
	public String CategoryGson()
	{
		List<Category> list=categoryDAO.list();
		Gson gson=new Gson();
		String data=gson.toJson(list);
		return data;
	}
	
		
	
	
	@RequestMapping(value="/Category",method = RequestMethod.GET)
	public ModelAndView landPage(@ModelAttribute("category")Category item,BindingResult result,Model model)
	{
		ModelAndView mv=new ModelAndView("/Category");
		mv.addObject("userclickedcategory","true");
		mv.addObject("allInfo",categoryDAO.list());
		return mv;
		
	}
	 
	/*@RequestMapping(value="/allData")
	public String getAllData(@ModelAttribute("category")Category item,BindingResult result,Model model)
	{
	
		model.addAttribute("allData",categoryDAO.list());
		return "Category";
	}*/
	@RequestMapping(value="/addcategory")
public String addItem(@ModelAttribute("category") Category c){
		this.categoryDAO.saveorUpdate(c);
		return "redirect:/Category";
		
	}
	@RequestMapping(value="/ItemBycategory/{id}")
	public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("category", this.categoryDAO.get(id));
		return "redirect:/Category";
		
}
	@RequestMapping(value="/deleteBycategory/{id}")
	public String deleteItem(@PathVariable("id")int id,Category category)
	{
		categoryDAO.delete(category);
		return "redirect:/Category";
		
}
}

package com.niit.shoppingkart.controllers;



import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingkart.dao.CategoryDAO;
import com.niit.shoppingkart.dao.ProductDAO;
import com.niit.shoppingkart.dao.SupplierDAO;
import com.niit.shoppingkart.model.Product;

@Controller
public class ProductControl {
	
	@Autowired
     ProductDAO productDAO;
	@Autowired
	 CategoryDAO categoryDAO;
	@Autowired
	 SupplierDAO supplierDAO;
	private Path path;
	
	/*@RequestMapping(value="editproduct")
	public String editproduct(@ModelAttribute("product") Product product,Model m){
		productDAO.saveOrUpdate(product);
		return "redirect:/Product";
	}*/
	
	@RequestMapping(value="/Product",method = RequestMethod.GET)
	public ModelAndView landPage(@ModelAttribute("product")Product product,BindingResult result,Model model)
	{
		ModelAndView mv=new ModelAndView("/Product");
		mv.addObject("userclickedproduct","true");
		mv.addObject("allData",productDAO.list());
		mv.addObject("allInfo",categoryDAO.list());
		mv.addObject("allSupplier",supplierDAO.list());
		return mv;
		
	}
	 
	/*@RequestMapping(value="/allData")
	public String getAllData(@ModelAttribute("product")Product product,BindingResult result,Model model)
	{
	
		model.addAttribute("allData",productDAO.list());
		return "Product";
	}*/
	@RequestMapping(value = { "addproduct" }, method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product, HttpServletRequest request,
			RedirectAttributes attributes) {
		attributes.addFlashAttribute("SuccessMessage", "Product has been added/Updated Successfully");
		productDAO.saveOrUpdate(product);
		MultipartFile file = product.getImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "\\resources\\images\\product\\" + product.getId() + ".jpg");
		//if (file != null && !file.isEmpty()) {
			try {
				System.out.println("Image Saving Start");
				file.transferTo(new File(path.toString()));
				System.out.println("Image Saved");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("Error");
				throw new RuntimeException("item image saving failed.", e);
			}
		
		
		
		return "redirect:/Product";
	}	
	         
	    	@RequestMapping(value="/ItemByproduct/{id}")
	public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
	{
		redirectAttributes.addFlashAttribute("product",productDAO.get(id));
		return "redirect:/Product";
		
}
	@RequestMapping(value="/deleteByproduct/{id}")
	public String deleteItem(@PathVariable("id") int id,Product product)
	{
		productDAO.delete(product);
		return "redirect:/Product";
		
}
}


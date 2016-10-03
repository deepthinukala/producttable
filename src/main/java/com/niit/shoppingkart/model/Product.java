package com.niit.shoppingkart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="Product")
@Component
public class Product {
	
	
	@Id
	@GeneratedValue
	private int id;
	 private String name;
 private String description;
 private double  price;
 private int categoryid;
 private int supplierid;
 @Transient
 private MultipartFile image;
/* @ManyToOne
 @JoinColumn(name="categoryid",updatable=false,insertable=false,nullable=false)
 private Category category;
 @ManyToOne
 @JoinColumn(name="supplierid",updatable=false,insertable=false,nullable=false)
 private Supplier supplier;*/
public int getId() {
	return id;
}
public String getName() {
	return name;
}
public String getDescription() {
	return description;
}
public double getPrice() {
	return price;
}
public int getCategoryid() {
	return categoryid;
}
public int getSupplierid() {
	return supplierid;
}
public MultipartFile getImage() {
	return image;
}
public void setId(int id) {
	this.id = id;
}
public void setName(String name) {
	this.name = name;
}
public void setDescription(String description) {
	this.description = description;
}
public void setPrice(double price) {
	this.price = price;
}
public void setCategoryid(int categoryid) {
	this.categoryid = categoryid;
}
public void setSupplierid(int supplierid) {
	this.supplierid = supplierid;
}
public void setImage(MultipartFile image) {
	this.image = image;
}



}
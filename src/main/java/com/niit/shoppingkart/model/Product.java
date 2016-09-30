package com.niit.shoppingkart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Product")
@Component
public class Product {

@Id
@GeneratedValue
 private int id;
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
private String name;
 private String description;
 private double  price;
 private int categoryid;
 private int supplierid;
public int getCategoryid() {
	return categoryid;
}
public int getSupplierid() {
	return supplierid;
}
public void setCategoryid(int categoryid) {
	this.categoryid = categoryid;
}
public void setSupplierid(int supplierid) {
	this.supplierid = supplierid;
}
 
 

}

 
 


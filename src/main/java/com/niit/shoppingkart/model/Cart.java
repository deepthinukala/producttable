package com.niit.shoppingkart.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Table
@Component

public class Cart implements Serializable {
	@Id
	@GeneratedValue
	private int id;
	private int productid;
	private int quantity;
	private double price;
	private String status;
	private String productname;
	@Transient
	private MultipartFile image;

	public int getId() {
		return id;
	}
	public int getProductid() {
		return productid;
	}
	public int getQuantity() {
		return quantity;
	}
	public double getPrice() {
		return price;
	}
	public String getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	
}
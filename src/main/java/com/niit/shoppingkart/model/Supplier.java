package com.niit.shoppingkart.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


import org.springframework.stereotype.Component;

@Entity
@Table(name="Supplier")
@Component
public class Supplier {
	
	@Id
	@GeneratedValue
	private int id;
	private String name;
	private String address;
	/*@OneToMany(mappedBy="supplier",fetch=FetchType.EAGER)
	private Set<Product> products;*/

	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	/*public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}*/
	
}

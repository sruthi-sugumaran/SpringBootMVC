package com.spring.mvc.jpa;

import java.io.Serializable;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Product
 *
 */
@Entity
public class Product implements Serializable {

	@Id
	@GeneratedValue
	private int productId;
	private String productName;
	private String description;
	private double price;
	private String category;
	private int cusId;
	private static final long serialVersionUID = 1L;

	public Product() {
		super();
	}   
	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}   
	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}   
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}   
	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}   
	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}   
	public int getCusId() {
		return this.cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}
   
}

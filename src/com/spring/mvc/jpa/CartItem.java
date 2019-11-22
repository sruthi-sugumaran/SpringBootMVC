package com.spring.mvc.jpa;

public class CartItem {
	
	public Product item;
	public int quantity;
	
	public CartItem(Product item, int quantity) {
		super();
		this.item = item;
		this.quantity = quantity;
	}
		
	public CartItem() {
		super();
	}
	
	public CartItem(Product item) {
		super();
		this.item = item;
		this.quantity = 1;
	}

	public Product getItem() {
		return item;
	}
	public void setItem(Product item) {
		this.item = item;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
}

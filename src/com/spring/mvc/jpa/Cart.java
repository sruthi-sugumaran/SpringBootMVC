package com.spring.mvc.jpa;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

public class Cart {

	public Customer session_user;
	public List<CartItem> cartItems;
	public double totalPrice;


	public Customer getSession_user() {
		return session_user;
	}

	public void setSession_user(Customer session_user) {
		this.session_user = session_user;
	}


	public List<CartItem> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	public double getTotalPrice()
	{
		double totalPrice = 0;

		for (CartItem product : cartItems) 
		{ 
			totalPrice += (product.getItem().getPrice() * product.getQuantity());
		}

		totalPrice += 0.08 * totalPrice;

		return totalPrice;
	}

	public String getOrderDescription()
	{
		String orderDescription = "";
		int i = 0;

		for(CartItem item : cartItems)
		{
			if(!orderDescription.equalsIgnoreCase(""))
			{
				orderDescription += ", ";
			}
			orderDescription += item.getItem().getProductName() + " - " + item.getQuantity();			
		}

		return orderDescription;
	}
	
	public double roundPrice() {
		double value = getTotalPrice();
	    BigDecimal bd = BigDecimal.valueOf(value);
	    bd = bd.setScale(2, RoundingMode.HALF_UP);
	    return bd.doubleValue();
	}
}

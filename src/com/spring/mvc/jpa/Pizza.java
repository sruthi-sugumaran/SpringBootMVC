package com.spring.mvc.jpa;

import java.util.Arrays;

public class Pizza {

	public String name;
	public String size;
	public String crust;
	public String cheese;
	public String sauce;
	public String[] toppings;
	public double price;

	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getCrust() {
		return crust;
	}
	public void setCrust(String crust) {
		this.crust = crust;
	}
	public String getCheese() {
		return cheese;
	}
	public void setCheese(String cheese) {
		this.cheese = cheese;
	}
	public String getSauce() {
		return sauce;
	}
	public void setSauce(String sauce) {
		this.sauce = sauce;
	}
	public String[] getToppings() {
		return toppings;
	}
	public void setToppings(String[] toppings) {
		this.toppings = toppings;
		calculatePrice();
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "Pizza [name=" + name + ", size=" + size + ", crust=" + crust + ", cheese=" + cheese + ", sauce=" + sauce
				+ ", toppings=" + Arrays.toString(toppings) + "]";
	}
	public void calculatePrice()
	{
		price = 0;
		
		switch(size){
		case "small":
			price+=10;
			break;
		case "medium":
			price+=12;
			break;
		case "large":
			price+=14;
			break;
		case "xlarge":
			price+=16;
			break;
		default :
			price+=10;
			break;
		}
		
		if(crust.equalsIgnoreCase("thin"))
			price+=3;
		
		if(cheese.equalsIgnoreCase("extra"))
			price+=1;
		
		if(!sauce.equalsIgnoreCase("pizzaSauce"))
			price+=1;
		
		price += 2 * (toppings.length);
	}

}

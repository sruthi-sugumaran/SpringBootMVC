package com.spring.mvc.jpa;

import java.io.Serializable;
import java.lang.String;
import java.math.BigDecimal;
import java.math.RoundingMode;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Orders
 *
 */
@Entity
public class Orders implements Serializable {

	@Id
	@GeneratedValue
	private int orderId;
	private String orderType;
	private String orderDate;
	private int cusId;
	private String orderDescription;
	private double totalPrice;
	private String paymentMethod;
	private String nameOnCard;
	private String cardNumber;
	private int cvc;
	private int expiryDate;
	private static final long serialVersionUID = 1L;

	public Orders() {
		super();
	}   
	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}   
	public String getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}   
	public int getCusId() {
		return this.cusId;
	}

	public void setCusId(int cusId) {
		this.cusId = cusId;
	}   
	public double getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}   
	public String getPaymentMethod() {
		return this.paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}   
	public String getNameOnCard() {
		return this.nameOnCard;
	}

	public void setNameOnCard(String nameOnCard) {
		this.nameOnCard = nameOnCard;
	}   
	public String getCardNumber() {
		return this.cardNumber;
	}

	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}   
	public int getCvc() {
		return this.cvc;
	}

	public void setCvc(int cvc) {
		this.cvc = cvc;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getOrderDescription() {
		return orderDescription;
	}
	public void setOrderDescription(String orderDescription) {
		this.orderDescription = orderDescription;
	}
	public int getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(int expiryDate) {
		this.expiryDate = expiryDate;
	}
	
	public double roundPrice()
	{
		double value = getTotalPrice();
	    BigDecimal bd = BigDecimal.valueOf(value);
	    bd = bd.setScale(2, RoundingMode.HALF_UP);
	    return bd.doubleValue();
	}
}

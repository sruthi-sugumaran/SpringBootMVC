package com.spring.mvc.jpa;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomerController {
	private static EntityManagerFactory factory;
	private static EntityManager em;
	private static Cart cart = new Cart();
	private static Pizza customPizza = new Pizza();

	public CustomerController()
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();		
	}

	@RequestMapping("/register")  
	public ModelAndView register(HttpServletRequest  request,HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();

		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String phoneNumber=request.getParameter("phoneNumber");
		String pwd=request.getParameter("pwd");
		String street=request.getParameter("street");
		String city=request.getParameter("city");
		String province=request.getParameter("province");
		String postalCode=request.getParameter("postalCode");
		String confirmPassword = request.getParameter("confirmPwd");
		
		if(!pwd.equalsIgnoreCase(confirmPassword))
		{
			return new ModelAndView("error_register"); 
		}

		em.getTransaction().begin();
		Customer cus = new Customer(); 
		cus.setFirstName(firstName);
		cus.setLastName(lastName);
		cus.setEmail(email);
		cus.setPhoneNumber(phoneNumber);
		cus.setPwd(pwd);
		cus.setStreet(street);
		cus.setCity(city);
		cus.setProvince(province);
		cus.setPostalCode(postalCode);

		em.persist(cus);
		em.getTransaction().commit();
		em.close();

		cart.setSession_user(cus);
		return new ModelAndView("order_page","cart",cart); 
	}

	@RequestMapping("/signin")  
	public ModelAndView signin(HttpServletRequest  request, HttpServletResponse response)
	{
		boolean success = false;
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		EntityManager em = factory.createEntityManager();

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		em.getTransaction().begin();

		Query query = em.createQuery("select c from Customer c");
		List<Customer> customerList = query.getResultList();

		for (Customer customer : customerList) 
		{ 
			if(customer.getEmail().equalsIgnoreCase(email) && customer.getPwd().equals(pwd))
			{
				if(customer.getFirstName().equals("Admin"))
				{
					return new ModelAndView("admin","customerList",customerList);
				}

				CustomerController.cart.session_user = customer;
				success = true;
				break;
			}
		}

		em.close();

		if(success)
		{
			cart.cartItems = new ArrayList<CartItem>();
			return new ModelAndView("order_page","cart",cart);
		}

		return new ModelAndView("error","cart",cart);
	}

	@RequestMapping("/addToCart")  
	public ModelAndView addToCart(HttpServletRequest  request, HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		EntityManager em = factory.createEntityManager();
		boolean isExist = false;

		String[] items = request.getParameterValues("product");

		if(items == null)
			return new ModelAndView("cart","cart",cart);
		
		Query query = em.createQuery("select p from Product p");
		List<Product> itemList = query.getResultList();


		for(Product product : itemList)
		{
			for(String item : items)
			{
				if(product.getProductName().equalsIgnoreCase(item))
				{
					for(CartItem cartItem : cart.getCartItems())
					{
						if(cartItem.getItem().getProductId()==product.getProductId())
						{
							cartItem.quantity++;
							isExist = true;
							break;
						}

					}
					if(!isExist)
					{
						cart.getCartItems().add(new CartItem(product,1));
					}
					break;
				}
			}
		}

		return new ModelAndView("cart","cart",cart);
	}

	@RequestMapping("/refreshCart") 
	public ModelAndView refreshCart(HttpServletRequest request, HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		EntityManager em = factory.createEntityManager();

		String[] items = request.getParameterValues("quantity");
		int i = 0;
		
		List<CartItem> nullItems = new ArrayList<CartItem>();

		for(CartItem cartItem : cart.getCartItems())
		{
			cartItem.setQuantity(Integer.parseInt(items[i]));
			if(cartItem.getQuantity()==0)
				nullItems.add(cartItem);
			i++;
		}
		
		for(CartItem item : nullItems)
		{
			cart.getCartItems().remove(item);
		}
		
		return new ModelAndView("cart","cart",cart);
	}
	
	@RequestMapping("/payment") 
	public ModelAndView payment(HttpServletRequest request, HttpServletResponse response)
	{
		
		return new ModelAndView("payment","cart",cart);
	}
	
	@RequestMapping("/placeOrder")
	public ModelAndView placeOrder(HttpServletRequest request, HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();
		
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
		Date date = new Date(System.currentTimeMillis());
		
		String orderType = request.getParameter("orderType");
		String orderDate = formatter.format(date);
		int cusId = cart.getSession_user().getCusId();
		String orderDescription = cart.getOrderDescription();
		double totalPrice = cart.getTotalPrice();
		String paymentMethod = request.getParameter("paymentMethod");
		String nameOnCard = request.getParameter("nameOnCard");
		String cardNumber = request.getParameter("cardNumber");
		int cvc = Integer.parseInt(request.getParameter("cvc"));
		int expiryDate = Integer.parseInt(request.getParameter("expiryDate"));
		
		em.getTransaction().begin();
		Orders order = new Orders();
		order.setOrderType(orderType);
		order.setOrderDate(orderDate);
		order.setCusId(cusId);
		order.setOrderDescription(orderDescription);
		order.setTotalPrice(totalPrice);
		order.setPaymentMethod(paymentMethod);
		order.setNameOnCard(nameOnCard);
		order.setCardNumber(cardNumber);
		order.setCvc(cvc);
		order.setExpiryDate(expiryDate);
		
		em.persist(order);
		em.getTransaction().commit();
		em.close();
		
		cart.getCartItems().clear();
		
		em = factory.createEntityManager();
		em.getTransaction().begin();
		Query query = em.createQuery("SELECT o FROM Orders AS o WHERE o.cusId = :cusId and o.orderDate = :orderDate");
		query.setParameter("cusId", cart.getSession_user().getCusId());
		query.setParameter("orderDate", orderDate);
		List<Orders> orderList = query.getResultList();
		Orders latestOrder = orderList.get(0);
		return new ModelAndView("order_placed_success","order",latestOrder);
	}
	
	@RequestMapping("/addCustomPizzaToCart")
	public ModelAndView addCustomPizzaToCart(HttpServletRequest request, HttpServletResponse response) {
		
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();
		
		String name = request.getParameter("name");
		String size = request.getParameter("pizzaSize");
		String crust = request.getParameter("crust");
		String cheese = request.getParameter("cheese");
		String sauce = request.getParameter("sauce");
		String[] toppings = request.getParameterValues("toppings");
		
		customPizza.setName(name);
		customPizza.setSize(size);
		customPizza.setCrust(crust);
		customPizza.setCheese(cheese);
		customPizza.setSauce(sauce);
		customPizza.setToppings(toppings);
		
		em.getTransaction().begin();
		Product temp = new Product();
		temp.setProductName(customPizza.getName());
		temp.setDescription(customPizza.toString());
		temp.setCusId(cart.session_user.getCusId());
		temp.setPrice(customPizza.getPrice());
		temp.setCategory("custom");
		temp.setCategory("custom");
		
		em.persist(temp);
		em.getTransaction().commit();
		em.close();
		
		cart.cartItems.add(new CartItem(temp));
		
		return new ModelAndView("cart","cart",cart);
	}
	
	@RequestMapping("/listCustomPizza")  
	public ModelAndView listCustomPizza(HttpServletRequest  request,HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();
		
		Query query = em.createQuery("SELECT p FROM Product AS p WHERE p.category = 'custom' AND p.cusId = :cusId");
		query.setParameter("cusId", cart.getSession_user().getCusId());
		List<Product> customItemList = query.getResultList();
		
		return new ModelAndView("custom_order_list","customList",customItemList);
	}
	
	@RequestMapping("/redirectToNavs")
	public ModelAndView redirect(HttpServletRequest  request,HttpServletResponse response) 
	{
		String btnVal = request.getParameter("btn");
		
		if(btnVal.equalsIgnoreCase("customPizza"))
		{
			return new ModelAndView("customPizza","cart",cart);
		}
		else if(btnVal.equalsIgnoreCase("customOrderList"))
		{
			return new ModelAndView("customer_custom_orders","cart",cart);
		}
		else if(btnVal.equalsIgnoreCase("menu"))
		{
			return new ModelAndView("order_page","cart",cart);
		}
		else if(btnVal.equalsIgnoreCase("customer"))
		{
			return new ModelAndView("user_page","cart",cart);
		}
		else if(btnVal.equalsIgnoreCase("signOut"))
		{
			return new ModelAndView("index");
		}
			
		return new ModelAndView("custom_order_list","cart",cart);
	}
	
	@RequestMapping("/update")
	public ModelAndView update(HttpServletRequest request, HttpServletResponse response)
	{
		factory = Persistence.createEntityManagerFactory("SruthiSugumaranSiChen_COMP303_Assignment02");
		em = factory.createEntityManager();

		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String email=request.getParameter("email");
		String phoneNumber=request.getParameter("phoneNumber");
		String pwd=request.getParameter("pwd");
		String street=request.getParameter("street");
		String city=request.getParameter("city");
		String province=request.getParameter("province");
		String postalCode=request.getParameter("postalCode");
		
		em.getTransaction().begin();
		Customer cus = new Customer();
		cus = em.find(Customer.class, cart.getSession_user().getCusId());
		cus.setFirstName(firstName);
		cus.setLastName(lastName);
		cus.setEmail(email);
		cus.setPhoneNumber(phoneNumber);
		cus.setPwd(pwd);
		cus.setStreet(street);
		cus.setCity(city);
		cus.setProvince(province);
		cus.setPostalCode(postalCode);
		em.persist(cus);
		em.getTransaction().commit();
		
		Query query = em.createQuery("SELECT c FROM Customer AS c WHERE c.cusId = :cusId");
		query.setParameter("cusId", cart.getSession_user().getCusId());
		List<Customer> customerList = query.getResultList();
		
		cart.setSession_user(customerList.get(0));
		em.close();
		return new ModelAndView("order_page","cart",cart);
	}
}

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li class="active"><a href="#">Order Online!</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">${cart.getSession_user().getFirstName()}
						${cart.getSession_user().getLastName()}</a></li>
				<li><a href="sign_in.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Log out</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid" style="padding: 30px;">
		<div class="container">
			<div class="container">
				<form role="form" action="redirectToNavs" method="post">
					<ul class="nav nav-tabs">
						<li>
							<button type="submit" name="btn" value="menu"
								class="btn btn-primary btn-block"
								style="background: white; color: #117A8B; border-color: white;'">
								Choose from menu</button>
						</li>
						<li>
							<button type="submit" name="btn" value="customPizza"
								class="btn btn-primary btn-block"
								style="background: white; color: #117A8B; border-color: white;'">
								Make your own pizza</button>

						</li>
						<li>
							<button type="submit" name="btn" value="customOrderList"
								class="btn btn-primary btn-block"
								style="background: white; color: #117A8B; border-color: white;'">
								Your custom orders</button>
						</li>
						<li class="active"><a href="#">Cart</a></li>
					</ul>
				</form>
			</div>
			<div class="container">

				<div class="container">

					<form role="form" action="refreshCart" method="post">
						<table class="table"
							style="width: 900px; margin-top: 40px; margin-left: 30px;">
							<thead>
								<tr>
									<th>Item</th>
									<th>Price per item</th>
									<th>Quantity</th>
									<th>Price</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${cart.getCartItems()}">
									<tr>
										<td><label>${item.getItem().productName}</label></td>
										<td><fmt:formatNumber value="${item.getItem().price}"
												type="currency" /></td>
										<td><input type="number" class="form-control"
											value="${item.getQuantity()}" min="0" max="5"
											style="width: 60px;" name="quantity" required></td>
										<td><fmt:formatNumber
												value="${item.getItem().price * item.getQuantity()}"
												type="currency" /></td>

									</tr>
								</c:forEach>
								<tr>
									<td>Total Price: <fmt:formatNumber
											value="${cart.getTotalPrice()}" type="currency" /></td>
								</tr>
								<tr>
								</tr>
							</tbody>
						</table>
						<button type="submit" class="btn btn-primary"
							style="margin-top: 15px" value="refresh">Refresh Cart</button>
					</form>
				</div>
				<form role="form" action="payment" method="post">
					<button type="submit" class="btn btn-primary"
						style="margin-top: 15px; background: white; color: #117A8B; border-color: white;">Proceed
						to Payment</button>
				</form>
			</div>
			<h6>*Note: Set Quantity to 0 and refresh cart to remove an item.</h6>
		</div>
	</div>
</body>
</html>
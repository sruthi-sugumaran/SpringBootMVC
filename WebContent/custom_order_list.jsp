<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Custom Orders!</title>
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
				<a class="navbar-brand" href="index.jsp">Pizza &amp; Pizza</a>
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
				<li><a href="sign_in.jsp"><span class="glyphicon glyphicon-log-in"></span>
						Log out</a></li>
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
						<li class="active"><a href="customer_custom_orders.jsp">Your
								custom orders</a></li>
					</ul>
				</form>
				<form role="form" action="addToCart" method="post">
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse1">Your Previous
										Custom Orders:</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse">
								<div class="list-group">
									<c:forEach var="item" items="${customList}">
										<div class="list-group-item">
											<div class="row">
												<div class="col-md-10">
													<h5>
														<strong>${item.getProductName()}</strong>
													</h5>
													<p>${item.getDescription()}</p>
												</div>
												<div class="col-md-2"
													style="text-align: right; padding-top: 5px;">
													<label><input type="checkbox" name="product"
														value="${item.getProductName()}"> Add</label>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">Save
							&amp; Add to Cart</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
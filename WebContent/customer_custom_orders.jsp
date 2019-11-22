<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
				<li><a href="sign_in.jsp"><span class="glyphicon glyphicon-log-out"></span>
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
				<form role="form" action="listCustomPizza" method="post">
					<div class="form-group">
						<br>
						<button type="submit" class="btn btn-primary">Click here
							to load your favourite pizzas</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
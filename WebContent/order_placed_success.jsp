<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Placed Successfully</title>
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
				<a class="navbar-brand" href="#">Pizza &amp; Pizza</a>
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
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<br>
							<h3>Thank you for ordering!</h3>
							<hr>
							<pre style="text-align: center;">
Your order details:
-------------------------------------------
Order Number: ${order.getOrderId()}
Order Type: ${order.getOrderType()}
Description: ${order.getOrderDescription()}
Total Price: $${order.roundPrice()}
-------------------------------------------
Order Placed at: ${order.getOrderDate()}

							</pre>
							<form role="form" action="redirectToNavs" method="post">
								<div class="row"></div>
								<div class="col-md-6">
									<button type="submit" name="btn" value="menu"
										class="btn btn-primary btn-block">Go back to Menu</button>
								</div>
								<div class="col-md-6">
									<button type="submit" name="btn" value="signOut"
										class="btn btn-primary btn-block">Sign Out</button>
								</div>
							</form>
						</div>
						<div class="col-md-6"></div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
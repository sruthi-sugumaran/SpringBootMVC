<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Place your order!</title>
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
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<form role="form" action="placeOrder" method="post">
								<h3>Order Type</h3>
								<hr>
								<div class="form-group">
									<div class="radio">
										<label><input type="radio" name="orderType"
											value="Take out" checked>Take out</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="orderType"
											value="Delivery">Delivery</label>
									</div>

								</div>
								<h3>Payment</h3>
								<hr>
								<div class="form-group">
									<label for="exampleInputPaymentMethod">Choose your
										Payment Method: </label>
									<div class="radio">
										<label><input type="radio" name="paymentMethod"
											value="Master Card" checked>Master Card</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="paymentMethod"
											value="Visa">Visa</label>
									</div>
									<div class="radio">
										<label><input type="radio" name="paymentMethod"
											value="American Express">American Express</label>
									</div>
								</div>
								<div class="form-group">
									<label for="exampleName"> Name on card: </label> <input
										type="text" class="form-control" value="${cart.getSession_user().getFirstName()} ${cart.getSession_user().getLastName()}" name="nameOnCard"
										style="width: 60%;" />
								</div>
								<div class="form-group">
									<label for="exampleCardNumber"> Card Number: </label> <input
										type="text" required class="form-control" name="cardNumber"
										style="width: 60%;" />
								</div>
								<div class="row" style="width: 50%">
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleCVC"> CVC: </label> <input type="number" required
												min="100" max="999" class="form-control" name="cvc"
												style="width: 70%;" />
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleCardNumber"> Expiry Date: </label> <input required
												type="number" class="form-control" placeholder="MMYY" name="expiryDate" min="0119" max="9999"
												style="width: 80%;" />
										</div>
									</div>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
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
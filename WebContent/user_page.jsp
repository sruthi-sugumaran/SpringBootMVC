<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Info!</title>
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
			<form role="form" action="redirectToNavs" method="post">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li><button type="submit" name="btn" value="menu" class="btn btn-dark" style="color: #888; padding-top:13px; background-color: transparent;border-color: transparent;">
						Order Online!</button></li>
			</ul>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="#">${cart.getSession_user().getFirstName()}
						${cart.getSession_user().getLastName()}</a></li>
				<li><a href="sign_in.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Log out</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="container" style="padding: 50px">
			<div class="row">
				<div class="col-md-12">
					<div class="container" style="width: 80%">

						<h3>Update your Account!</h3>
						<hr>
						<form role="form" action="update" method="post"
							style="padding-top: 10px;'">
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputFirstName"> First Name </label> <input
										class="form-control" name="firstName"
										value="${cart.getSession_user().getFirstName()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail"> Email address </label> <input
										type="email" class="form-control" name="email"
										value="${cart.getSession_user().getEmail()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword"> Password </label> <input
										type="password" class="form-control" name="pwd"
										value="${cart.getSession_user().getPwd()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputStreet"> Street </label> <input
										class="form-control" name="street"
										value="${cart.getSession_user().getStreet()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputProvince"> Province </label> <input
										class="form-control" name="province"
										value="${cart.getSession_user().getProvince()}" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputLastName"> Last Name </label> <input
										class="form-control" name="lastName"
										value="${cart.getSession_user().getLastName()}" required>
								</div>

								<div class="form-group">
									<label for="exampleInputPhone"> Contact Number </label> <input
										type="number" class="form-control" name="phoneNumber"
										value="${cart.getSession_user().getPhoneNumber().toString()}"
										required>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword">Confirm Password </label> <input
										type="password" class="form-control" name="pwd"
										value="${cart.getSession_user().getPwd()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputCity"> City </label> <input
										class="form-control" name="city"
										value="${cart.getSession_user().getCity()}" required>
								</div>
								<div class="form-group">
									<label for="exampleInputPostalCode"> PostalCode </label> <input
										class="form-control" name="postalCode"
										value="${cart.getSession_user().getPostalCode()}" required>
								</div>

							</div>
							<div class="col-md-12">
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block">Update</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
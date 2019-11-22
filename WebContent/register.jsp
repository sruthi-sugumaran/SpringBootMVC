<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Register!</title>

<meta name="description"
	content="Assignment 2 - Sruthi Sugumaran & Si Chen">
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
				<li><a href="#" class="btn disabled">Order Online!</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="register.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="sign_in.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="container" style="padding: 50px">
			<div class="row">
				<div class="col-md-12">
					<div class="container" style="width: 80%">

						<h3>Create an Account!</h3>
						<hr>
						<form role="form" action="register" method="post"
							style="padding-top: 10px;'">
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputFirstName"> First Name </label> <input tabindex=2
										class="form-control" name="firstName" required>
								</div>
								<div class="form-group">
									<label for="exampleInputEmail"> Email address </label> <input tabindex=4
										type="email" class="form-control" name="email" required>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword"> Password </label> <input tabindex=6
										type="password" class="form-control" name="pwd" required>
								</div>
								<div class="form-group">
									<label for="exampleInputStreet"> Street </label> <input tabindex=8
										class="form-control" name="street" required>
								</div>
								<div class="form-group">
									<label for="exampleInputProvince"> Province </label> <input tabindex=10
										class="form-control" name="province" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputLastName"> Last Name </label> <input tabindex=3
										class="form-control" name="lastName" required>
								</div>

								<div class="form-group">
									<label for="exampleInputPhone"> Contact Number </label> <input tabindex=5
										type="number" class="form-control" name="phoneNumber" required>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword">Confirm Password </label> <input tabindex=7
										type="password" class="form-control" name="confirmPwd" required>
								</div>
								<div class="form-group">
									<label for="exampleInputCity"> City </label> <input tabindex=9
										class="form-control" name="city" required>
								</div>
								<div class="form-group">
									<label for="exampleInputPostalCode"> PostalCode </label> <input tabindex=11
										class="form-control" name="postalCode" required>
								</div>

							</div>
							<div class="col-md-12">
								<div class="container">
									<div class="checkbox">
										<label class="text-primary"><input type="checkbox" value="terms&conditions"
											name="terms&conditions"  tabindex=13 required>I accept to Terms and
											Conditions</label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block"  tabindex=15>Submit</button>
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
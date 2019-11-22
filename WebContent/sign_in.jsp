<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Sign in!</title>

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
				<li><a href="#" class="btn disabled" >Order Online!</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li  class="active"><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="container" style="padding: 50px">
			<div class="row">
				<div class="col-md-12">
					<div class="container" style="width: 80%">
					
					<h3>Sign in to Place an Order!</h3>
					<hr>
					<br>
						<form role="form" action="signin" method="post">
							<div class="form-group">

								<label for="exampleInputEmail1"> Email address </label> <input
									type="email" class="form-control" name="email" required>
							</div>
							<div class="form-group">

								<label for="exampleInputPassword1"> Password </label> <input
									type="password" class="form-control" name="pwd" required>
							</div>
							<div class="row">
								<div class="col-md-2">
									<button type="submit" class="btn btn-primary btn-block">Submit</button>
								</div>
								<div class="col-md-11">
								</div>
							</div>
							<div class="row" style="padding-left:2%;padding-top:2%;">
									<a href="register.jsp" style="padding-top: 3px;">Don't have an account? Sign up!</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
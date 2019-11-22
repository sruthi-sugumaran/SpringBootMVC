<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Build your Pizza!</title>
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
				<li><a href="#">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact</a></li>
				<li class="active"><a href="#">Order Online!</a></li>
			</ul>
			<form role="form" action="redirectToNavs" method="post">
			<ul class="nav navbar-nav navbar-right">
				<li><button type="submit" name="btn" value="customer" class="btn btn-dark" style="color: #888; padding-top:13px; background-color: transparent;border-color: transparent;">${cart.getSession_user().getFirstName()}
						${cart.getSession_user().getLastName()}</button></li>
				<li><a href="sign_in.jsp"><span class="glyphicon glyphicon-log-out"></span>
						Log out</a></li>
			</ul>
			</form>
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
						<li class="active"><a href="#">Make your own pizza</a></li>
						<li>
							<button type="submit" name="btn" value="customOrderList"
								class="btn btn-primary btn-block"
								style="background: white; color: #117A8B; border-color: white;'">
								Your custom orders</button>
						</li>
					</ul>
				</form>
				<form role="form" action="addCustomPizzaToCart" method="post">
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse6">Name your Pizza</a>
								</h4>
							</div>
							<div id="collapse6" class="panel-collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="form-group">
											<div class="row">
												<div class="col-md-2">
													<label for="exampleName"> Pizza Name: </label>
												</div>
												<div class="col-md-6">
													<input required type="text" class="form-control" name="name" />
												</div>
												<div class="col-md-4"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse1">Choose your
										Size</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse">
								<div class="list-group">
									<div class="list-group-item">
										<label><input type="radio" name="pizzaSize"
											value="small" checked> Small (10")</label><br> <label><input
											type="radio" name="pizzaSize" value="medium"> Medium
											(12")</label><br> <label><input type="radio"
											name="pizzaSize" value="large"> Large (14")</label><br>
										<label><input type="radio" name="pizzaSize"
											value="xlarge"> X-Large (16")</label><br>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse2">Choose your
										Crust</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse">
								<div class="list-group">
									<div class="list-group-item">
										<h5>
											<input type="radio" name="crust" value="original" checked>
											<strong>Original Hand Toast</strong>
										</h5>
										<p>The traditional, hand-engineered crust that started it
											all.</p>

									</div>
									<div class="list-group-item">
										<h5>
											<input type="radio" name="crust" value="thin"> <strong>Crunchy
												Thin Crust</strong>
										</h5>
										<p>Thin and crispy, seasoned with oregano and cut in
											squares, Chicago style.</p>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse3">Choose your
										Cheese</a>
								</h4>
							</div>
							<div id="collapse3" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<label><input type="radio" name="cheese" value="none">
											None</label><br> <label><input type="radio"
											name="cheese" value="light"> Light</label><br> <label><input
											type="radio" name="cheese" value="normal" checked>
											Normal</label><br> <label><input type="radio"
											name="cheese" value="extra"> Extra</label><br>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse4">Choose your
										Sauce</a>
								</h4>
							</div>
							<div id="collapse4" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<label><input type="radio" name="sauce"
											value="pizzaSauce" checked> Pizza Sauce</label><br> <label><input
											type="radio" name="sauce" value="bbqSauce"> Barbeque
											Sauce</label><br> <label><input type="radio"
											name="sauce" value="alfredoSauce"> Alfredo Sauce</label><br>
										<label><input type="radio" name="sauce"
											value="garlicSauce"> Garlic Parmesan Sauce</label><br>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse5">Choose your
										Toppings</a>
								</h4>
							</div>
							<div id="collapse5" class="panel-collapse">
								<div class="list-group">
									<div class="list-group-item">
										<h5>
											<strong>Meats</strong>
										</h5>
										<div class="row">
											<div class="col-md-4">
												<input type="checkbox" name="toppings" value="pepperoni">
												Pepperoni<br> <input type="checkbox" name="toppings"
													value="brooklynPepperoni"> Brooklyn Pepperoni<br>
												<input type="checkbox" name="toppings" value="groundBeef">
												Ground Beef<br>
											</div>
											<div class="col-md-4">
												<input type="checkbox" name="toppings" value="sausage">
												Sausage<br> <input type="checkbox" name="toppings"
													value="ham"> Ham<br> <input type="checkbox"
													name="toppings" value="bacon"> Bacon<br>
											</div>
											<div class="col-md-4">
												<input type="checkbox" name="toppings" value="chicken">
												Chicken<br> <input type="checkbox" name="toppings"
													value="phillySteak"> Philly Steak<br> <input
													type="checkbox" name="toppings" value="anchovy">
												Anchovy<br>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<h5>
											<strong>Non-meats</strong>
										</h5>
										<div class="row">
											<div class="col-md-4">
												<input type="checkbox" name="toppings" value="cheddar">
												Cheddar<br> <input type="checkbox" name="toppings"
													value="feta"> Feta<br> <input type="checkbox"
													name="toppings" value="provolone"> Provolone<br>
												<input type="checkbox" name="toppings" value="tomatoes">
												Tomatoes<br>
											</div>
											<div class="col-md-4">
												<input type="checkbox" name="toppings"
													value="hotBananaPeppers"> Hot Banana Peppers<br>
												<input type="checkbox" name="toppings" value="blackOlives">
												Black Olives<br> <input type="checkbox" name="toppings"
													value="greenPepper"> Green Pepper<br> <input
													type="checkbox" name="toppings" value="jalapenoPeppers">
												Jalapeno Peppers<br>
											</div>
											<div class="col-md-4">
												<input type="checkbox" name="toppings" value="mushroom">
												Mushroom<br> <input type="checkbox" name="toppings"
													value="pineapple"> Pineapple<br> <input
													type="checkbox" name="toppings" value="onion">
												Onion<br> <input type="checkbox" name="toppings"
													value="roastedRedPeppers"> Roasted Red Peppers<br>
											</div>
										</div>

									</div>
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
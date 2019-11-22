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
				<a class="navbar-brand" href="index.jsp">Pizza &amp; Pizza</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/index.jsp">Home</a></li>
				<li><a href="about.jsp">About Us</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li class="active"><a href="#">Order Online!</a></li>
			</ul>
			<form role="form" action="redirectToNavs" method="post">
			<ul class="nav navbar-nav navbar-right">
				<li><button type="submit" name="btn" value="customer" class="btn btn-dark" style="color: #888; padding-top:13px; background-color: transparent;border-color: transparent;">${cart.getSession_user().getFirstName()}
						${cart.getSession_user().getLastName()}</button></li>
				<li><a href="sign_in.jsp"><span
						class="glyphicon glyphicon-log-out"></span> Log out</a></li>
			</ul>
			</form>
		</div>
	</nav>
	<div class="container-fluid" style="padding: 30px;">
		<div class="container">
			<div class="container">
				<form role="form" action="redirectToNavs" method="post">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#">Choose from menu</a></li>
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

					</ul>
				</form>
				<form role="form" action="addToCart" method="post">
					<div class="panel-group" style="margin-top: 20px;">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse1">Speciality
										Pizzas</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Veggie Pizza</strong>
												</h5>
												<p>A medley of fresh green peppers, onion, tomatoes,
													mushrooms, and olives.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Veggie Pizza"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Brooklyn Pizza</strong>
												</h5>
												<p>Specifically engineered to be big, thin, and
													perfectly foldable.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Brooklyn Pizza"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>BBQ Chicken Feast</strong>
												</h5>
												<p>Smothered in flavorful BBQ sauce and loaded with
													chicken, bacon, onions, green peppers and cheddar cheese.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="BBQ Chicken Feast"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>6 Cheese Pizza</strong>
												</h5>
												<p>Covered with Feta, provolone, cheddar,
													Parmesan-Asiago, and mozzarella cheese finished with a
													sprinkle of oregano.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="6 Cheese Pizza"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Philly Steak</strong>
												</h5>
												<p>Loaded with tender slices of steak, melted Provolone
													cheese, onions, green peppers, mushrooms, and American
													cheese.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Philly Steak"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Chicken Bacon Alfredo Pizza</strong>
												</h5>
												<p>An Alfredo Sauce base with a Mozzarella/Cheddar
													Cheese blend, fresh mushrooms, onions, all white-meat
													chicken, bacon and Provolone cheese.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Chicken Bacon Alfredo Pizza"> Add</label>
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
									<a data-toggle="collapse" href="#collapse2">Pastas</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Chicken Alfredo</strong>
												</h5>
												<p>Grilled 100% all white meat chicken and Alfredo sauce
													baked to a creamy goodness with penne pasta.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Chicken Alfredo"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Italian Sausage Marinara</strong>
												</h5>
												<p>Penne pasta baked in a zesty marinara sauce with
													Italian sausage, a blend of Italian seasonings and
													Provolone cheese.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Italian Sausage Marinara"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Pasta Primavera</strong>
												</h5>
												<p>Fresh tomatoes, fresh baby spinach, green peppers,
													mushrooms and onions are mixed and baked to perfection with
													creamy Alfredo sauce.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Pasta Primavera"> Add</label>
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
									<a data-toggle="collapse" href="#collapse3">Sides</a>
								</h4>
							</div>
							<div id="collapse3" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Boneless Chicken</strong>
												</h5>
												<p>Our boneless chicken is lightly breaded with savoury
													herbs, made with 100% white breast meat. Comes with our
													signature BBQ sauce for dipping.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Boneless Chicken"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Wings</strong>
												</h5>
												<p>Our chicken wings are now tastier than ever. Sauced
													with your choice of Hot, Honey Garlic, BBQ, or Mango
													Habanero.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Wings"> Add</label>
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
									<a data-toggle="collapse" href="#collapse4">Drinks</a>
								</h4>
							</div>
							<div id="collapse4" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Coke</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Coke"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Coke Zero</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Coke Zero"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Diet Coke</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Diet Coke"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Sprite</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Sprite"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Ginger Ale</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Ginger Ale"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Nestea</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Nestea"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Fanta</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Fanta"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Water</strong>
												</h5>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Water"> Add</label>
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
									<a data-toggle="collapse" href="#collapse5">Desserts</a>
								</h4>
							</div>
							<div id="collapse5" class="panel-collapse collapse">
								<div class="list-group">
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Marbled Cookie Brownie</strong>
												</h5>
												<p>Satisfy your sweet tooth! Taste the decadent blend of
													gooey milk chocolate chunk cookie and delicious fudge
													brownie. Oven-baked to perfection and cut into 6 pieces -
													this dessert is perfect to share with the whole group</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Marbled Cookie Brownie"> Add</label>
											</div>
										</div>
									</div>
									<div class="list-group-item">
										<div class="row">
											<div class="col-md-10">
												<h5>
													<strong>Chocolate Lava Crunch Cake</strong>
												</h5>
												<p>Oven baked chocolate cakes, crunchy on the outside
													with molten chocolate on the inside.</p>
											</div>
											<div class="col-md-2"
												style="text-align: right; padding-top: 5px;">
												<label><input type="checkbox" name="product"
													value="Chocolate Lava Crunch Cake"> Add</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">Add
							to Cart</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
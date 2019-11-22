<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Pizza &amp; Pizza - Home</title>
 <style><%@include file="/css/style.css"%></style>
<meta name="description"
	content="Assignment 2 - Sruthi Sugumaran & Si Chen">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
var slideIndex = 1;
showSlides(1);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>

</head>
 <body>
 	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">Pizza &amp; Pizza</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="#about">About Us</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="#" class="btn disabled">Order Online!</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register.jsp"><span
						class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="sign_in.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	<!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides">
    <div class="numbertext">1 / 3</div>
    <img src="http://foodanddine.com/wp-content/uploads/2016/05/Pizza-capricciosa.jpg" style="width:99.5%;height:650px">
    <a href="order_page.jsp" class="primary-btn text-uppercase">Check Our Menu</a>
    <div class="textContainer">
    <div class="text">For some people, the highlight of their entire month could be going out and eating a pizza or watching a movie at a multiplex, and here I am visiting four countries in a month. So, in that way, movies have made me socially aware. I now know how simple people live their lives.</div>
    <!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
    </div>
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 3</div>
    <img src="https://images8.alphacoders.com/370/370744.jpg" style="width:99.5%;height:650px">
    <a href="order_page.jsp" class="primary-btn text-uppercase">Check Our Menu</a>
    <div class="textContainer">
    <div class="text">For some people, the highlight of their entire month could be going out and eating a pizza or watching a movie at a multiplex, and here I am visiting four countries in a month. So, in that way, movies have made me socially aware. I now know how simple people live their lives.</div>
    <!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
    </div>
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 3</div>
    <img src="http://foodanddine.com/wp-content/uploads/2016/05/Pizza-capricciosa.jpg" style="width:99.5%;height:650px">
    <a href="order_page.jsp" class="primary-btn text-uppercase">Check Our Menu</a>
    <div class="textContainer">
    <div class="text">For some people, the highlight of their entire month could be going out and eating a pizza or watching a movie at a multiplex, and here I am visiting four countries in a month. So, in that way, movies have made me socially aware. I now know how simple people live their lives.</div>
    <!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span>
  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span>
</div>
    </div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>
  <!-- Menu Section -->
  <div class="w3-row w3-padding-64" id="menu">
    <div class="w3-col l6 w3-padding-large">
      <h1 class="w3-center">Our Special Menu</h1><br>
      <h4>Veggie Pizza</h4>
      <p class="w3-text-grey">A medley of fresh green peppers, onion, tomatoes, mushrooms, and olives.</p><br>
    
      <h4>Brooklyn Pizza</h4>
      <p class="w3-text-grey">Specifically engineered to be big, thin, and perfectly foldable.</p><br>
    
      <h4>BBQ Chicken Feast</h4>
      <p class="w3-text-grey">Smothered in flavorful BBQ sauce and loaded with chicken, bacon, onions, green peppers and cheddar cheese.</p><br>
    
      <h4>6 Cheese Pizza</h4>
      <p class="w3-text-grey">Covered with Feta, provolone, cheddar, Parmesan-Asiago, and mozzarella cheese finished with a sprinkle of oregano.</p><br>
    
      <h4>Philly Steak</h4>
      <p class="w3-text-grey">Loaded with tender slices of steak, melted Provolone cheese, onions, green peppers, mushrooms, and American cheese.</p>    
    </div>
    
    <div class="w3-col l6 w3-padding-large">
      <img src="https://tastyk-4ec7.kxcdn.com/wp-content/uploads/2016/07/Healthy-Vegan-Pizza.jpg" class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:600; height:650">
    </div>
  </div>
  <!-- About Section -->
  <div class="w3-row w3-padding-64" id="about">
    <div class="w3-col m6 w3-padding-large w3-hide-small">
     <img src="https://bostonpizza.com/content/dam/bostonpizza/promotions/2018/thin-crust-creations/skinnycarnivore-1280x1280.jpg/_jcr_content/renditions/cq5dam.web.1024.1024.jpeg" class="w3-round w3-image w3-opacity-min" alt="Table Setting" width="600" height="750">
    </div>

    <div class="w3-col m6 w3-padding-large">
      <h1 class="w3-center">About Our Pizza</h1><br>
      <h5 class="w3-center">Tradition since 2019</h5>
      <p class="w3-large">The Catering was founded in blabla by Mr. Smith in lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute iruredolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.We only use seasonal ingredients.</p>
      <p class="w3-large w3-hide-medium">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-64" id="contact">
    <h1>Contact</h1><br>
    <p>Our pizza is the best pizza in the world and we offer discounts and special menus every day! Do not hesitate to contact us.</p>
    <p class="w3-text-blue-grey w3-large"><b>Delivery Service, 850 Huntingwood Drive, Scarborough, ON, M1T 2L9</b></p>
    <p>You can also contact us by phone 647-766-7666 or email pizza@pizza.com, or you can send us a message here:</p>
    <form action="/action_page.php" target="_blank">
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-padding-16" type="number" placeholder="How many people" required name="People"></p>
      <p><input class="w3-input w3-padding-16" type="datetime-local" placeholder="Date and time" required name="date" value="2019-10-26T20:00"></p>
      <p><input class="w3-input w3-padding-16" type="text" placeholder="Message \ Special requirements" required name="Message"></p>
      <p><button class="w3-button w3-light-grey w3-section" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>

<script>
  showSlides(1);
  var slideIndex = 0;
  showSlides();

  function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}
    slides[slideIndex-1].style.display = "block";
    setTimeout(showSlides, 2500); // Change image every 2 seconds
  }
</script>

</body> 
</html>
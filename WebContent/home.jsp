<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
 
 <div class="menu">
 <link ref="stylesheet" href="stylesheet.css" />
<jsp:include page="menubar.jsp" />
</div>
<!-- 
<style>

.menu {
    position: absolute;
    left: 0px;
    top: 0px;
    z-index: -1;
    text-align: center;
  
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>


<style>
body {
	margin: 0;
	padding: 0;
	background: url(nature.jpeg);
	background-size: auto;
	background-position: center; 
	/* background-attachment: */
	background-attachment: fixed;
font-family:sans-serif;
}
</style> 
-->
</head>



<style>
* {
box-sizing: border-box;}
body {
font-family: Verdana, sans-serif;
}
.mySlides {
display: none;
}
img {
height:700px;
width:100%;
vertical-align: middle;
}

/* Slideshow container */
.slideshow-container {
  max-width: 100%;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: white;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .6} 
  to {opacity: 0}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>

<!-- <h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p> -->

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="save_water_save_life_by_grfixds.jpg" >
  <!-- <div class="text">first slide</div> -->
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="12313Q61151.jpg" >
  <!-- <div class="text">Caption Two</div> -->
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="leaves-rain-water.jpg" >
  <!-- <div class="text">Caption Three</div> -->
</div>

</div>
<br>

<div class="text" style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>





</body>
</html>
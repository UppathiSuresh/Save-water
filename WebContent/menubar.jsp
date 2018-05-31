<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Menubar</title>


<style>
.navbar {
	overflow: hidden;
	background-color: green;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: green;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: blue;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: green;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: blue;
}

.dropdown:hover .dropdown-content {
	display: block;
}

#logout {
	text-align: right;
}
</style>
</head>
<body>
	<h1 align="center" style="color: darkGreen">SAVE WATER</h1>

	<div class="navbar">
		<a href="home.jsp">Home</a> <a href="contact.jsp">Contact</a>
		<div class="dropdown">
			<button class="dropbtn">
				Methods <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="house.jsp">Home</a> <a href="rainwater.jsp">RainWater</a> <a
					href="#">Agriculture</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="dropbtn">
				Profile <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="login.jsp">Login</a> <a href="registration.jsp">SignUp</a>
				<a href="update.jsp">Update</a>
			</div>
		</div>
		<a href="postcomment.jsp">PostIdea</a> <a href="logout.jsp"
			id="logout">Logout</a>

	</div>
	<!--  
<h3>Dropdown Menu inside a Navigation Bar</h3>
<p>Hover over the "Dropdown" link to see the dropdown menu.</p>
-->


</body>
</html>
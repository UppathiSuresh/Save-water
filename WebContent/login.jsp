<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>

<link ref="stylessheet" href="stylesheet.css">

<jsp:include page="menubar.jsp" />
<style>
body {
	margin: 0;
	padding: 0;
	background: url(nature.jpeg);
	background-size: auto;
	background-position: center: 
font-family:sans-serif;
}

.login-box {
	width: 300px;
	height: 400px;
	background: rgba(0, 0, 0, 0.5);
	color: #fff;
	top: 60%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
	padding: 70px 30px;
}

.avatar {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	position: absolute;
	top: -10%;
	left: calc(50% - 50px);
}

h1 {
	margin: 0;
	padding: 0 0 20px;
	text-align: center;
	font-size: 22px;
}

.login-box p {
	margin: 0;
	padding: 0;
	font-weight: bold;
}

.login-box input {
	width: 100%;
	margin-bottom: 20px;
}

.login-box input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solod #fff;
	background: transparent;
	outline: none;
	height: 40px;
	color: yellow;
	font-size: 16px;
}

.login-box input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: #1c8abd;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}

.login-box input[type="submit"]:hover {
	cursor: pointer;
	background: #39dc79;
	color: #000;
}

.login-box a {
	text-decoration: none;
	font-size: 14px;
	color: #fff;
}

.login-box a:hover {
	color: #39dc79;
}
</style>


</head>
<body>
	<div class="login-box">
		<img src="img_avatar2.png" alt="avatar" class="avatar" />
		<h1>LOGIN FORM</h1>
		
	<!--  	<form method="post" type="login"> -->
		<form method="post" action="login">
			<p>UserName</p>
			<input type="text" name="username" placeholder="UserName" required />
			<p>Password</p>
			<input type="password" name="password" placeholder="Password" required />
			<input type="submit" name="submit" value="login"> <a
				href="a">Forget Password ?
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <a
				href="registration.jsp" style="margin-left: 20px">Registration</a>
		</form>
	</div>
</body>
</html>
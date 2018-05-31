<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link ref="stylessheet" href="stylesheet.css">

<jsp:include page="menubar.jsp" />

<style>
body {
	background-color: aqua;
}

.update {
	background-color: yellow;
	text-align: center;
}

.update input {
	width: 25%;
	height: 25px;
	margin-bottom: 15px;
	border-radius: 20px;
	
}
.update input[type="submit"] {
	border: none;
	outline: none;
	height: 40px;
	background: green;
	color: #fff;
	font-size: 18px;
	border-radius: 20px;
}
.update p {
	margin: 0;
	padding: 0;
	font-size:20px;
	font-weight: bold;
}
.update input[type="submit"]:hover {
	cursor: pointer;
	background: blue;
	color: white;
}

</style>


</head>
<body>
	<div class="update">
		<br>
		<form action="update" method="post">
			<p>password</P>
			<input type="password" name="ups" /> <br> <br>
			<p>Gmail</p>
			<input type="text" name="upgmail" /> <br> <br>
			<p>Location</p>
			<input type="text" name="uplocation" /> 
			<br> 
			<br>
			<br>
			<input type="submit" name="submit" value="Update">
		    <br> <br>
		</form>
	</div>

</body>
</html>
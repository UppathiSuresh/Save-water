<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.util.List"%>
	<%@ page import="water.com.model.Posts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link ref="stylessheet" href="stylesheet.css">
<jsp:include page="menubar.jsp" />
<style>
#button {
	font-size: 22px;
	border: 5px solid green;
	background-color: aqua;
	color: green;
	border-radius: 20px;
	height: 40px;
	width: 150px;
	text-align: center;
	align:"center";
	margin: 0 auto;
}

#comments {
	width: 92%;
	height: 140px;
	padding: 2%;
	font-size: 1.2em;
	border: 12px ridge #6DB72C;
	background-color: aqua;
}
.user-comment {
	color: red;
}
</style>

</head>
<body>

<!--form method="post" action="post">-->

<form action="post" method="post">
	<p align="center" style="color: green">PostIdea</p>
	
	<p align="center" style="color: green">you can post your water
		saving idea here</p>

	
		<textarea name="comment" id="comments" placeholder="enter your commnet..."></textarea>
		<br>
		<br>
		<center><input type="submit" value="Post" name="submit" id="button" /></center> 
	</form>
	<hr>
	
	<% 
	List<Posts> posts =  water.com.post.GetAllPosts();
		
	for (Posts post: posts){
			%>
			<div class="user-comment">
				<%out.println(post.username); %> ::
				<%out.println(post.comment); %>
		<hr>
			</div>
			<% 
		}
	%>
</body>
</html>
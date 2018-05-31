<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link ref="stylesheet" href="stylesheet.css" />
<jsp:include page="menubar.jsp" />
</head>
<body>
	<%
		session.invalidate();
		//out.print("");
		//out.print("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
		//out.print("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
		//out.print("<script>");
		//out.print("$(document).ready(function(){");

		//out.print("swal ( 'Oops' ,  'Something went wrong!' ,  'error' )");
		//out.print("});");
		//out.print("</script>");
		//RequestDispatcher rd = request.getRequestDispatcher("logout.jsp");

		out.println("<script type=\"text/javascript\">");
		out.println("alert('you are loged out successfully');");
		out.println("location='home.jsp';");
		out.println("</script>");

		//out.print("you are loged out successfully");
	%>
</body>
</html>
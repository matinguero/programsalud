<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav></nav>

	
	<%
	String dni = request.getParameter("dni");
	String contrasenia = request.getParameter("password");

	out.println("<h2>"+dni+"</h2>");
	out.println("<a href='./MiPerfil.jsp?dni="+dni+"'>Mi perfil</a>");
	
	%>
	

</body>
</html>
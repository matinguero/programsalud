<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="DAO.LoginDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	String contrasenia = request.getParameter("password");
	
	LoginDAO loginDAO = new LoginDAO();
	Boolean correcto = loginDAO.Login(dni, contrasenia);
	
	if(correcto.booleanValue()){
		//response.sendRedirect("<h1> SI </h1> <br>");
		out.println("<h1> SI </h1> <br>");
	}else{
		//response.sendRedirect("<h2> NO </h2> <br>");
		out.println("<h1> NO </h1> <br>");
	}
	%>
</body>
</html>
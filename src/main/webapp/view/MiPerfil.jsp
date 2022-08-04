<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="DAO.AccederUsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Styles.css" />
<title>Insert title here</title>
</head>
<body>
		
		<% 
		String dni = request.getParameter("dni");
		Integer dniparse = Integer.parseInt(dni);
		AccederUsuarioDAO prueba = new AccederUsuarioDAO();
		List<Usuario> resultado = prueba.accederUsuario(dniparse);
	
        	
		for (int i=0;i<resultado.size();i++)
		{
			out.println("<tr>");
			out.println("<td>" + resultado.get(i).getNombre() + "</td>");
			out.println("<td>" + resultado.get(i).getApellido() + "</td>");
			out.println("<td>" + resultado.get(i).getDni() + "</td>");
			out.println("<td>" + resultado.get(i).getTelefono() + "</td>");
			out.println("<td>" + resultado.get(i).getMail() + "</td>");
			out.println("<td>" + resultado.get(i).getDireccion() + "</td>");
			out.println("<td>" + resultado.get(i).getEdad() + "</td>");
			out.println("<td>" + resultado.get(i).getContrasenia()+ "</td>");
			out.println("</tr>");
		}
		
		//out.print("<nav class='fondo-claro'>Nombre:"+ resultado.get(0).getNombre()+"</nav>");
		%>
		<h1 class="fondo-claro">hola<%resultado.getNombre();%></h1>

</body>
</html>
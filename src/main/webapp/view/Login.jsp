<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form class="form-signin" action="../controller/LoginController.jsp" method="POST">
		
		
		<h1>Ingresar al sistema</h1>
		
		<input type="number" name="dni" placeholder="Ingrese su dni" required autofocus> 
		
		<input type="password" name="password" 	placeholder="Ingrese su clave" required autofocus>
		
		<button type="submit" >Ingresar</button>
	
	</form>
</body>
</html>
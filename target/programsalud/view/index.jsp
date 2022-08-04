<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1> Primer intento </a>

        <form class="form-signin" action="../controller/GuardarUsuarioController.jsp" method="POST">
            <img class="mb-4" src="./images/logo.jpg" width="72" height="72">
            <h1 class="h3 mb-3" >Ingresar al sistema</h1>
            <input type="text" name="usuario" class="form-control" placeholder="Ingrese su usuario" required autofocus >
            <input type="password" name="password" class="form-control" placeholder="Ingrese su clave" required>
            <button type="submit" class="btn btn-lg btn-primary btn-block">Ingresar</button>
        </form> 
</body>
</html>
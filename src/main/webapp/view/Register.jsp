<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../CSS/Styles.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap"
      rel="stylesheet"
    />
    <title>Document</title>
  </head>
  <body>
    <form action="../controller/CrearUsuarioController.jsp" method="POST">
      <h1>Ingresar al sistema</h1>
      <label for="usuario">Nombre</label>
      <input
        type="text"
        name="usuario"
        placeholder="Ingrese su nombre"
        id="usuario"
        required
        autofocus
      />
      <label for="apellido">Apellido</label>
      <input
        type="text"
        name="apellido"
        placeholder="Ingrese su apellido"
        required
        autofocus
        id="apellido"
      />
      <label for="dni">DNI</label>
      <input
        type="number"
        name="dni"
        placeholder="Ingrese su DNI"
        required
        autofocus
        id="dni"
      />

      <label for="telefono">Telefono</label>
      <input
        type="number"
        name="telefono"
        placeholder="Ingrese su telefono"
        id="telefono"
        required
        autofocus
      />

      <label for="mail">Email</label>
      <input
        type="email"
        name="mail"
        placeholder="Ingrese su email"
        id="mail"
        required
        autofocus
      />

      <label for="direccion">Direccion</label>
      <input
        type="text"
        name="direccion"
        placeholder="Ingrese su direccion"
        id="direccion"
        required
        autofocus
      />

      <label for="edad">Edad</label>
      <input
        type="number"
        name="edad"
        placeholder="Ingrese su edad"
        id="edad"
        required
        autofocus
      />

      <label for="password">Contrasena</label>
      <input
        type="password"
        name="password"
        placeholder="Ingrese su contrasena"
        id="password"
        required
        autofocus
      />
      <button class="submitBtn" type="submit">Registrarme</button>
    </form>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />
<% 
if (customerBean.getuserName() != "" ) { 
	 response.sendRedirect("home.jsp");
 } 
%>

<!DOCTYPE html>

<html>

<head>
  <title>Index</title>
  <link rel="stylesheet" type="text/css" href="css/wf1.css">
</head>

<body>
  <div class="loggin">
    <!--Cuadro para introducir username, password o si ha olvidado la contraseña-->
    <div class="inicio_sesion">
      <form action="mvc/control/loginControl.jsp" method="post" target="_self">

        <!--Introduce el usuario-->
        Usuario<br>
        <input type="email" name="usuario" id="usuario" required><br><br>

        <!--Introduce la contraseña-->
        Contrase&ntilde;a<br>
        <input type="password" name="contr" id="contr" required><br><br>

        <!--Quiere entrar en la aplicacion-->
        <input type="submit" value="Entrar">
      </form>
    </div>

    <!--Unirse si no tienes cuenta-->
    <div class="no_tiene_cuenta">
      <p><strong>&Uacute;nete si no tienes cuenta</strong></p>
      <a href="mvc/control/signonControl.jsp">Crear cuenta</a>
    </div>

  </div>

  <!--Mensaje de bienvenida-->
  <h2 class="mensaje_inicio"><strong>Comparte tu vida laboral</strong></h2>

  <!--Definimos la foto de inicio-->
  <img src="img/logo.jpg" alt="LOGO" class="logo_inicio">

</body>
</html>
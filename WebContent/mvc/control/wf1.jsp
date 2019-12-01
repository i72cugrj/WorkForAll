<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
  <title>Iniciar sesi&oacute;n</title>
  <link rel="stylesheet" type="text/css" href="css/wf1.css">
</head>

<body>
  <!--Scripts para el Wireframe 1-->
  <script type="text/javascript">

    //Funcion que comprueba que el usuario y la contraseña esten registrados en el sistema. Si es así, abrimos la aplicación
    function entrar()
    {
      let user = document.getElementById('usuario').value;
      let pass = document.getElementById('contr').value;

      // Ahora mismo no comprueba con ninguna base de datos, por lo que abrimos nuestro home
      if (user == "" || pass == "")
      {
        return false;
      }
      else
      {
        return true;
      }
    }

  </script>

  <div class="loggin">
    <!--Cuadro para introducir username, password o si ha olvidado la contraseña-->
    <div class="inicio_sesion">
      <form action="mvc/view/wf4.0.jsp" method="post" target="_self">

        <!--Introduce el usuario-->
        Usuario<br>
        <input type="email" name="usuario" id="usuario" required><br><br>

        <!--Introduce la contraseña-->
        Contrase&ntilde;a<br>
        <input type="password" name="contr" id="contr" required><br><br>

        <!--Quiere entrar en la aplicacion-->
        <input type="submit" value="Entrar" onclick="entrar()">
      </form>

      <!--El usuario ha olvidado su contraseña-->
      <br><br>A olvidado su contrase&ntilde;a<br><br>
      <input type="button" value="Recuperar" onclick="window.open('wf2.3.html', 'WireFrame 2.3', 'top=300,left=700,width=600,height=400')">
    </div>

    <!--Unirse si no tienes cuenta-->
    <div class="no_tiene_cuenta">
      <p><strong>&Uacute;nete si no tienes cuenta</strong></p>
      <a href="wf2.1.html" target="_blank">Crear cuenta</a>
    </div>

  </div>

  <!--Mensaje de bienvenida-->
  <h2 class="mensaje_inicio"><strong>Comparte tu vida laboral</strong></h2>

  <!--Definimos la foto de inicio-->
  <img src="img/logo.jpg" alt="LOGO" class="logo_inicio">

</body>
</html>
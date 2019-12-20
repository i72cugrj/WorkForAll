<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="mvc/control/loginControl.jsp" />

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/wf4.0.css">
</head>

<body>
  <header class="main-header">
    <!--Definimos el logo-->
    <img src="img/logo.jpg" alt="LOGO" class="logo_home">
    <!--Enlace a HOME-->
	<a href="wf4.0.html" class="link_home"><strong>HOME</strong></a>
    <!--Enlace a AMIGOS-->
    <a href="wf5.0.html" class="link_amigos"><strong>AMIGOS</strong></a>
    <!--Enlace a BUSCADOR-->
    <a href="wf6.0.html" class="link_buscador"><strong>BUSCADOR</strong></a>
    <!--Enlace a FORO-->
    <a href="wf8.0.html" class="link_foro"><strong>FORO</strong></a>   
    <!--Definimos imagen usuario-->
    <div>
      <img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user">
      <div class="options_user">
        <form>
          <br><a href="wf7.0.html"> Nombre y apellido </a><br>
          <a href="wf11.0.html"> Mensajes </a><br>
          <a href="wf1.html"> Cerrar Sesion </a>
        </form>
      </div>
    </div>
  </header>


  <div class="div_lista_amigos">
    <h3>Lista de tus amigos</h3>
    <a href="wf10.0.html">Nombre de usuario</a>
    <a href="wf10.0.html">Nombre de usuario</a>
  </div>

  <!--Roll de artículos-->

  <div class="div_home">
    <table class="dos">
        <tr>
          <td>
              <table class="uno">
                  <tr>
                    <td class="td_user_img"><a href="wf10.0.html"><img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user_2"></a></td>
                    <td class="td_user_des">Aqui va la descripcion que será muy larga</td>
                  </tr>
                  <tr>
                    <td></td>
                    <td><a href="wf9.0.html"><button name="foro" class="boton_user">Foro</button></a></td>
                  </tr>
                </table>
          </td>
        </tr>
        <tr>
            <td>
                <table class="uno">
                    <tr>
                        <td class="td_user_img"><a href="wf10.0.html"><img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user_2"></a></td>
                      <td class="td_user_des">Aqui va la descripcion que será muy larga</td>
                    </tr>
                    <tr>
                      <td></td>
                      <td><a href="wf9.0.html"><button name="foro" class="boton_user">Foro</button></a></td>
                    </tr>
                  </table>
            </td>
          </tr>
          <tr>
              <td>
                  <table class="uno">
                      <tr>
                          <td class="td_user_img"><a href="wf10.0.html"><img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user_2"></a></td>
                        <td class="td_user_des">Aqui va la descripcion que será muy larga</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td><a href="wf9.0.html"><button name="foro" class="boton_user">Foro</button></a></td>
                      </tr>
                    </table>
              </td>
            </tr>
            <tr>
                <td>
                    <table class="uno">
                        <tr>
                            <td class="td_user_img"><a href="wf10.0.html"><img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user_2"></a></td>
                          <td class="td_user_des">Aqui va la descripcion que será muy larga</td>
                        </tr>
                        <tr>
                          <td></td>
                          <td><a href="wf9.0.html"><button name="foro" class="boton_user">Foro</button></a></td>
                        </tr>
                      </table>
                </td>
              </tr>
              <tr>
                  <td>
                      <table class="uno">
                          <tr>
                              <td class="td_user_img"><a href="wf10.0.html"><img src="img/profile-42914_960_720.png" alt="IMG_USER" class="img_user_2"></a></td>
                            <td class="td_user_des">Aqui va la descripcion que será muy larga</td>
                          </tr>
                          <tr>
                            <td></td>
                            <td><a href="wf9.0.html"><button name="foro" class="boton_user">Foro</button></a></td>
                          </tr>
                        </table>
                  </td>
                </tr>
    </table>
  </div>
  <a href="wf13.html" class="sobre"> Sobre nosotros</a>
  <a href="wf14.html" class="tecnico"> Soporte tecnico</a>

  <div class="boton_cir"><a href="wf15.html" class="add_post">+</a></div>

</body>

</html>

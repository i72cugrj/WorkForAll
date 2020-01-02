<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<!DOCTYPE html>
<html>

<head>
  <title>Sing On Curriculum</title>
  <link rel="stylesheet" href="../../css/wf2.2.css">
</head>

<body>
  <!--Mensaje de bienvenida-->
  <h2 class="title_wf2-1"><strong>Comparte tu vida profesional</strong></h2>

  <!--Cuadro para introducir username, password o si ha olvidado la contraseña-->
  <div class="registro">

      <table class="table_curriculum">
        <tr>
          <td><a href="signoncurriculumView.jsp" onclick="window.open('../control/loginFotoControl.jsp', 'WireFrame 7.1', 'top=300,left=700,width=600,height=400')">Foto</a></td>
        </tr>
        <tr>
          <td><a href="signoncurriculumView.jsp" onclick="window.open('../control/loginPersonalInfoControl.jsp', 'WireFrame 7.2', 'top=300,left=700,width=800,height=400')">Datos personales</a></td>
        </tr>
        <tr>
          <td><a href="signoncurriculumView.jsp" onclick="window.open('../control/loginAcademyControl.jsp', 'WireFrame 7.4', 'top=300,left=700,width=800,height=400')">Datos acad&eacute;micos</a></td>
        </tr>
        <tr>
          <td><a href="signoncurriculumView.jsp" onclick="window.open('../control/loginIdiomControl.jsp', 'WireFrame 7.6', 'top=300,left=700,width=800,height=400')">Idiomas</a></td>
        </tr>
        <tr>
          <td><a href="signoncurriculumView.jsp" onclick="window.open('../control/loginProfesionalExperienceControl.jsp', 'WireFrame 7.8', 'top=300,left=700,width=800,height=400')">Experiencia profesional</a></td>
        </tr>
      </table>
      <br>
      <br>
      <a href="../control/homeControl.jsp"><input type="submit" value="Continuar"></a>
  </div>

</body>
</html>

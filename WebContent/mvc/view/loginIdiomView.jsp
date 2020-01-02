<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />
<% 
/* if (customerBean.getuserID() == 0 ) { 
	 response.sendRedirect("../../index.jsp");
 } */
%>
<!DOCTYPE html>
<html>

<head>
  <title>WireFrame 7.6</title>
  <link rel="stylesheet" href="../../css/wf7.2.css">
</head>

<body>
  <h2><strong>Idiomas</strong></h2>
  <div>
     <table class="table_curr">
         <tr>
             <td>
                 <table>
                     <tr>
                         <td>Idioma</td>
                     </tr>
                     <tr>
                         <td>Lectura</td>
                     </tr>
                     <tr>
                         <td>Conversacion</td>
                     </tr>
                     <tr>
                         <td>Escritura</td>
                     </tr>
                     <tr>
                        <td>Nivel Europeo</td>
                    </tr>                 
                 </table>
             </td>
             <td>
                 <form action="../control/insertIdiomsControl.jsp" method="post">
                    <input type="text" name="Idioma" id="idioma" placeholder="Idioma" required><br>
                    <select name="Lectura" id="lectura" class = "Lectura">
                            <option value="q1" required>NATIVO</option>
                            <option value="q2" required>MUY ALTO</option>
                            <option value="q3" required>ALTO</option>
                            <option value="q4" required>MEDIO</option>
                            <option value="q5" required>ACEPTABLE</option>
                            <option value="q6" required>BAJO</option>
                            <option value="q7" required>MUY BAJO</option>
                    </select><br>
                    <select name="Conversacion" id="conversacion" class = "Conversacion">
                            <option value="q1" required>NATIVO</option>
                            <option value="q2" required>MUY ALTO</option>
                            <option value="q3" required>ALTO</option>
                            <option value="q4" required>MEDIO</option>
                            <option value="q5" required>ACEPTABLE</option>
                            <option value="q6" required>BAJO</option>
                            <option value="q7" required>MUY BAJO</option>
                    </select><br>
                    <select name="Escritura" id="escritura" class = "Escritura">
                            <option value="q1" required>NATIVO</option>
                            <option value="q2" required>MUY ALTO</option>
                            <option value="q3" required>ALTO</option>
                            <option value="q4" required>MEDIO</option>
                            <option value="q5" required>ACEPTABLE</option>
                            <option value="q6" required>BAJO</option>
                            <option value="q7" required>MUY BAJO</option>
                    </select><br>
                    <select name="Europeo" id="nivel_eu" class = "Nivel Europeo">
                            <option value="q1" required>C1</option>
                            <option value="q2" required>C2</option>
                            <option value="q3" required>B1</option>
                            <option value="q4" required>B2</option>
                            <option value="q5" required>A1</option>
                            <option value="q6" required>A2</option>
                    </select><br>
                    <input type="submit" name="boton_envio" value="Enviar"> <input type="button" value="Salir" onclick="self.close();">
                 </form> 	
             </td>
         </tr>
     </table>
  </div>
</body>
</html>
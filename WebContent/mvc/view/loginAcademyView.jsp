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
  <title>Login Academy</title>
  <link rel="stylesheet" href="../../css/wf7.2.css">
</head>

<body>
  <h2><strong>Estudios</strong></h2>
  <div>
     <table class="table_curr">
         <tr>
             <td>
                 <table>
                     <tr>
                         <td>Estudios</td>
                     </tr>
                     <tr>
                         <td>Centro</td>
                     </tr>
                     <tr>
                         <td>Fecha de Incio</td>
                     </tr>
                     <tr>
                         <td>Fecha de Fin</td>
                     </tr>
                 </table>
             </td>
             <td>
                 <form action="../control/insertAcademyControl.jsp" method="post">
                    <input type="text" name="Estudios" id="estudios" placeholder="Estudios" required><br>
                    <input type="text" name="Centro" id="centro" placeholder="Centro" required><br>
                    <select name="dia" id="dia" class = "dia">
                    	<option value="q/" required>/</option>
                        <option value="q1" required>1</option>
                        <option value="q2" required>2</option>
                        <option value="q3" required>3</option>
                        <option value="q4" required>4</option>
                        <option value="q5" required>5</option>
                        <option value="q6" required>6</option>
                        <option value="q7" required>7</option>
                        <option value="q8" required>8</option>
                        <option value="q9" required>9</option>
                        <option value="q10" required>10</option>
                        <option value="q11" required>11</option>
                        <option value="q12" required>12</option>
                        <option value="q13" required>13</option>
                        <option value="q14" required>14</option>
                        <option value="q15" required>15</option>
                        <option value="q16" required>16</option>
                        <option value="q17" required>17</option>
                        <option value="q18" required>18</option>
                        <option value="q19" required>19</option>
                        <option value="q20" required>20</option>
                        <option value="q21" required>21</option>
                        <option value="q22" required>22</option>
                        <option value="q23" required>23</option>
                        <option value="q24" required>24</option>
                        <option value="q25" required>25</option>
                        <option value="q26" required>26</option>
                        <option value="q27" required>27</option>
                        <option value="q28" required>28</option>
                        <option value="q29" required>29</option>
                        <option value="q30" required>30</option>
                        <option value="q31" required>31</option>
                    </select>
                    <select name="mes" id="mes" class = "dia">
                    	<option value="q/" required>/</option>
                        <option value="q1" required>Enero</option>
                        <option value="q2" required>Febrero</option>
                        <option value="q3" required>Marzo</option>
                        <option value="q4" required>Abril</option>
                        <option value="q5" required>Mayo</option>
                        <option value="q6" required>Junio</option>
                        <option value="q7" required>Julio</option>
                        <option value="q8" required>Agosto</option>
                        <option value="q9" required>Septiembre</option>
                        <option value="q10" required>Octubre</option>
                        <option value="q12" required>Noviembre</option>
                        <option value="q12" required>Dicicembre</option>
                    </select>
                    <input type="text" name="year" id="year" placeholder="A&ntilde;o" required><br>

                    <select name="dia2" id="dia2" class = "dia">
                            <option value="q/" required>/</option>
                            <option value="q1" required>1</option>
                            <option value="q2" required>2</option>
                            <option value="q3" required>3</option>
                            <option value="q4" required>4</option>
                            <option value="q5" required>5</option>
                            <option value="q6" required>6</option>
                            <option value="q7" required>7</option>
                            <option value="q8" required>8</option>
                            <option value="q9" required>9</option>
                            <option value="q10" required>10</option>
                            <option value="q11" required>11</option>
                            <option value="q12" required>12</option>
                            <option value="q13" required>13</option>
                            <option value="q14" required>14</option>
                            <option value="q15" required>15</option>
                            <option value="q16" required>16</option>
                            <option value="q17" required>17</option>
                            <option value="q18" required>18</option>
                            <option value="q19" required>19</option>
                            <option value="q20" required>20</option>
                            <option value="q21" required>21</option>
                            <option value="q22" required>22</option>
                            <option value="q23" required>23</option>
                            <option value="q24" required>24</option>
                            <option value="q25" required>25</option>
                            <option value="q26" required>26</option>
                            <option value="q27" required>27</option>
                            <option value="q28" required>28</option>
                            <option value="q29" required>29</option>
                            <option value="q30" required>30</option>
                            <option value="q31" required>31</option>
                        </select>
                        <select name="mes2" id="mes2" class = "dia">
                            <option value="q/" required>/</option>
                            <option value="q1" required>Enero</option>
                            <option value="q2" required>Febrero</option>
                            <option value="q3" required>Marzo</option>
                            <option value="q4" required>Abril</option>
                            <option value="q5" required>Mayo</option>
                            <option value="q6" required>Junio</option>
                            <option value="q7" required>Julio</option>
                            <option value="q8" required>Agosto</option>
                            <option value="q9" required>Septiembre</option>
                            <option value="q10" required>Octubre</option>
                            <option value="q12" required>Noviembre</option>
                            <option value="q12" required>Dicicembre</option>
                        </select>
                        <input type="text" name="year2" id="year" placeholder="A&ntilde;o" required><br>
                        <input type="submit" value="Enviar"> <input type="button" value="Salir" onclick="self.close();">
                 </form>
             </td>
         </tr>
     </table>
  </div>
</body>
</html>
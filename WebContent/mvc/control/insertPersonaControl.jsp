<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.uco.pw.display.javadao.PersonaDAO"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<% 
if (customerBean.getuserID() == 0 ) { 
	 response.sendRedirect("../../index.jsp");
} 

	PersonaDAO bd = new PersonaDAO();
	int userid = 0;
	int day = 0;
	int month = 0;
	int year = Integer.parseInt(request.getParameter("year"));
	int movil = Integer.parseInt(request.getParameter("Movil"));
	int rs;
	String pruebas;
	
	userid = customerBean.getuserID();
	
	if(bd.checkIDPersona(userid)){
		System.out.println("Hola");
		bd.delete(userid);
	}
	
	pruebas = request.getParameter("dia");
	
	if(pruebas.contentEquals("q1")){day = 1;}
	if(pruebas.contentEquals("q2")){day = 2;}
	if(pruebas.contentEquals("q3")){day = 3;}
	if(pruebas.contentEquals("q4")){day = 4;}
	if(pruebas.contentEquals("q5")){day = 5;}
	if(pruebas.contentEquals("q6")){day = 6;}
	if(pruebas.contentEquals("q7")){day = 7;}
	if(pruebas.contentEquals("q8")){day = 8;}
	if(pruebas.contentEquals("q9")){day = 9;}
	if(pruebas.contentEquals("q10")){day = 10;}
	if(pruebas.contentEquals("q11")){day = 11;}
	if(pruebas.contentEquals("q12")){day = 12;}
	if(pruebas.contentEquals("q13")){day = 13;}
	if(pruebas.contentEquals("q14")){day = 14;}
	if(pruebas.contentEquals("q15")){day = 15;}
	if(pruebas.contentEquals("q16")){day = 16;}
	if(pruebas.contentEquals("q17")){day = 17;}
	if(pruebas.contentEquals("q18")){day = 18;}
	if(pruebas.contentEquals("q19")){day = 19;}
	if(pruebas.contentEquals("q20")){day = 20;}
	if(pruebas.contentEquals("q21")){day = 21;}
	if(pruebas.contentEquals("q22")){day = 22;}
	if(pruebas.contentEquals("q23")){day = 23;}
	if(pruebas.contentEquals("q24")){day = 24;}
	if(pruebas.contentEquals("q25")){day = 25;}
	if(pruebas.contentEquals("q26")){day = 26;}
	if(pruebas.contentEquals("q27")){day = 27;}
	if(pruebas.contentEquals("q28")){day = 28;}
	if(pruebas.contentEquals("q29")){day = 29;}
	if(pruebas.contentEquals("q30")){day = 30;}
	if(pruebas.contentEquals("q31")){day = 31;}
	
	
	pruebas = request.getParameter("mes");
	
	if(pruebas.contentEquals("q1")){month = 1;}
	if(pruebas.contentEquals("q2")){month = 2;}
	if(pruebas.contentEquals("q3")){month = 3;}
	if(pruebas.contentEquals("q4")){month = 4;}
	if(pruebas.contentEquals("q5")){month = 5;}
	if(pruebas.contentEquals("q6")){month = 6;}
	if(pruebas.contentEquals("q7")){month = 7;}
	if(pruebas.contentEquals("q8")){month = 8;}
	if(pruebas.contentEquals("q9")){month = 9;}
	if(pruebas.contentEquals("q10")){month = 10;}
	if(pruebas.contentEquals("q11")){month = 11;}
	if(pruebas.contentEquals("q12")){month = 12;}
	
	if(month != 0 && day != 0){
		rs = bd.savePersona(userid, request.getParameter("Nombre"), request.getParameter("Apellidos"), day, month, year, request.getParameter("Pais"), request.getParameter("Localidad"), movil, request.getParameter("email"));
	}
	
	response.sendRedirect("loginPersonalInfoControl.jsp");
	%>
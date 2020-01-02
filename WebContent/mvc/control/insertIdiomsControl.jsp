<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.uco.pw.display.javadao.IdiomDAO"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<% 
if (customerBean.getuserID() == 0 ) { 
	 response.sendRedirect("../../index.jsp");
} 

	IdiomDAO bd = new IdiomDAO();
	int userid = 0;
	int levelread = 0;
	int levelspeak = 0;
	int levelwrite = 0;
	int levelEurope = 0;
	int rs;
	String pruebas;
	
	userid = customerBean.getuserID();
	
	if(bd.checkIDIdiom(userid)){
		bd.delete(userid);
	}
	
	pruebas = request.getParameter("Lectura");
	
	if(pruebas.contentEquals("q1")){levelread = 1;}
	if(pruebas.contentEquals("q2")){levelread = 2;}
	if(pruebas.contentEquals("q3")){levelread = 3;}
	if(pruebas.contentEquals("q4")){levelread = 4;}
	if(pruebas.contentEquals("q5")){levelread = 5;}
	if(pruebas.contentEquals("q6")){levelread = 6;}
	if(pruebas.contentEquals("q7")){levelread = 7;}
	
	pruebas = request.getParameter("Conversacion");
	
	if(pruebas.contentEquals("q1")){levelspeak = 1;}
	if(pruebas.contentEquals("q2")){levelspeak = 2;}
	if(pruebas.contentEquals("q3")){levelspeak = 3;}
	if(pruebas.contentEquals("q4")){levelspeak = 4;}
	if(pruebas.contentEquals("q5")){levelspeak = 5;}
	if(pruebas.contentEquals("q6")){levelspeak = 6;}
	if(pruebas.contentEquals("q7")){levelspeak = 7;}
	
	pruebas = request.getParameter("Escritura");
	
	if(pruebas.contentEquals("q1")){levelwrite = 1;}
	if(pruebas.contentEquals("q2")){levelwrite = 2;}
	if(pruebas.contentEquals("q3")){levelwrite = 3;}
	if(pruebas.contentEquals("q4")){levelwrite = 4;}
	if(pruebas.contentEquals("q5")){levelwrite = 5;}
	if(pruebas.contentEquals("q6")){levelwrite = 6;}
	if(pruebas.contentEquals("q7")){levelwrite = 7;}
	
	pruebas = request.getParameter("Europeo");
	
	if(pruebas.contentEquals("q1")){levelEurope = 1;}
	if(pruebas.contentEquals("q2")){levelEurope = 2;}
	if(pruebas.contentEquals("q3")){levelEurope = 3;}
	if(pruebas.contentEquals("q4")){levelEurope = 4;}
	if(pruebas.contentEquals("q5")){levelEurope = 5;}
	if(pruebas.contentEquals("q6")){levelEurope = 6;}
	
	rs = bd.saveIdiom(userid, request.getParameter("Idioma"), levelread, levelspeak, levelwrite, levelEurope);
	
	response.sendRedirect("loginIdiomControl.jsp");

%>
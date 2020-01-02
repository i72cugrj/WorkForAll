<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.uco.pw.display.javadao.AcademyDAO"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<% 
if (customerBean.getuserID() == 0 ) { 
	 response.sendRedirect("../../index.jsp");
} 

	AcademyDAO bd = new AcademyDAO();
	int userid = 0;
	int day = 0;
	int month = 0;
	int year = Integer.parseInt(request.getParameter("year"));
	int day2 = 0;
	int month2 = 0;
	int year2 = Integer.parseInt(request.getParameter("year2"));
	int rs;
	String pruebas, pruebas2;
	
	userid = customerBean.getuserID();
	
	if(bd.checkIDAcademy(userid) == false){
		bd.delete(userid);
	}
	
	pruebas = request.getParameter("dia");
	pruebas2 = request.getParameter("dia2");
	
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
	
	if(pruebas2.contentEquals("q1")){day2 = 1;}
	if(pruebas2.contentEquals("q2")){day2 = 2;}
	if(pruebas2.contentEquals("q3")){day2 = 3;}
	if(pruebas2.contentEquals("q4")){day2 = 4;}
	if(pruebas2.contentEquals("q5")){day2 = 5;}
	if(pruebas2.contentEquals("q6")){day2 = 6;}
	if(pruebas2.contentEquals("q7")){day2 = 7;}
	if(pruebas2.contentEquals("q8")){day2 = 8;}
	if(pruebas2.contentEquals("q9")){day2 = 9;}
	if(pruebas2.contentEquals("q10")){day2 = 10;}
	if(pruebas2.contentEquals("q11")){day2 = 11;}
	if(pruebas2.contentEquals("q12")){day2 = 12;}
	if(pruebas2.contentEquals("q13")){day2 = 13;}
	if(pruebas2.contentEquals("q14")){day2 = 14;}
	if(pruebas2.contentEquals("q15")){day2 = 15;}
	if(pruebas2.contentEquals("q16")){day2 = 16;}
	if(pruebas2.contentEquals("q17")){day2 = 17;}
	if(pruebas2.contentEquals("q18")){day2 = 18;}
	if(pruebas2.contentEquals("q19")){day2 = 19;}
	if(pruebas2.contentEquals("q20")){day2 = 20;}
	if(pruebas2.contentEquals("q21")){day2 = 21;}
	if(pruebas2.contentEquals("q22")){day2 = 22;}
	if(pruebas2.contentEquals("q23")){day2 = 23;}
	if(pruebas2.contentEquals("q24")){day2 = 24;}
	if(pruebas2.contentEquals("q25")){day2 = 25;}
	if(pruebas2.contentEquals("q26")){day2 = 26;}
	if(pruebas2.contentEquals("q27")){day2 = 27;}
	if(pruebas2.contentEquals("q28")){day2 = 28;}
	if(pruebas2.contentEquals("q29")){day2 = 29;}
	if(pruebas2.contentEquals("q30")){day2 = 30;}
	if(pruebas2.contentEquals("q31")){day2 = 31;}
	

	pruebas = request.getParameter("mes");
	pruebas2 = request.getParameter("mes2");
	
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
	
	if(pruebas.contentEquals("q1")){month2 = 1;}
	if(pruebas.contentEquals("q2")){month2 = 2;}
	if(pruebas.contentEquals("q3")){month2 = 3;}
	if(pruebas.contentEquals("q4")){month2 = 4;}
	if(pruebas.contentEquals("q5")){month2 = 5;}
	if(pruebas.contentEquals("q6")){month2 = 6;}
	if(pruebas.contentEquals("q7")){month2 = 7;}
	if(pruebas.contentEquals("q8")){month2 = 8;}
	if(pruebas.contentEquals("q9")){month2 = 9;}
	if(pruebas.contentEquals("q10")){month2 = 10;}
	if(pruebas.contentEquals("q11")){month2 = 11;}
	if(pruebas.contentEquals("q12")){month2 = 12;}
	
	if(day != 0 && day2 != 0 && month != 0 && month2 != 0){
		rs = bd.saveAcademy(userid, request.getParameter("Estudios"), request.getParameter("Centro"), day, month, year, day2, month2, year2);
	}
	response.sendRedirect("loginAcademyControl.jsp");
	
	%>
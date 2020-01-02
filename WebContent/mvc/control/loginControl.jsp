<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.uco.pw.display.javadao.UserDAO"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<% 
if (customerBean.getuserName() != "" ) { 
	 response.sendRedirect("../../home.jsp");
 } 
%>

<%
	if(request.getParameter("usuario") == ""){ %>
	
	<jsp:forward page="../../home.jsp"/>
		
<% } %>	
<%
	
	UserDAO control = new UserDAO();
	int id = 0;

	if(control.checkPasswdByUsername(request.getParameter("usuario"), request.getParameter("contr")) == true){
		id = control.queryuserID(request.getParameter("usuario"));
		customerBean.setuserID(id);
		customerBean.setuserName(request.getParameter("usuario"));
		customerBean.setuserPassword(request.getParameter("contr"));
		response.sendRedirect("../../home.jsp");
	}else{
		response.sendRedirect("../../index.jsp");
	}
	

%>

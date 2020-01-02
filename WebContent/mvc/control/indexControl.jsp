<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="es.uco.pw.display.javadao.UserDAO"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />

<% 
if (customerBean.getuserName() != "" ) { 
	 response.sendRedirect("../../home.jsp");
 } else{
	 response.sendRedirect("../../index.jsp");
 }
%>
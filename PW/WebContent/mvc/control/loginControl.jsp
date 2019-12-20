<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="beans.CustomerBean" scope="session" />

<% 
if (customerBean.getuserID() != 0 ) { 
	 response.sendRedirect("../../home.jsp");
 } 
%>	



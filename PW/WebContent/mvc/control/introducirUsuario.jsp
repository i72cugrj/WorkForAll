<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="beans.CustomerBean" scope="session" />

<%

customerBean.setuserID(100);
customerBean.setuserName(request.getParameter("usuario"));
customerBean.setuserPassword(request.getParameter("contr"));
response.sendRedirect("../../home.jsp");

%>

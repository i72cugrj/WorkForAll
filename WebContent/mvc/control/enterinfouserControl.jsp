<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="customerBean" class="es.uco.pw.display.javabean.CustomerBean" scope="session" />
<%@ page import="es.uco.pw.display.javadao.UserDAO"%>

<% 
if (customerBean.getuserName() != "" ) { 
	 response.sendRedirect("../../index.jsp");
 }

 UserDAO bd = new UserDAO();
 
 int rs;
 int gender = 0;
 String genero = request.getParameter("genero");
 String pass = request.getParameter("password");
 String pass2 = request.getParameter("password2");
 int id = bd.numberofuser();
 
 
 if(genero.contentEquals("fem")){
	  gender = 2;
 }  
 
 
 if(genero.contentEquals("masc")){
	gender = 1;
}

  if(genero.contentEquals("ind")){
	gender = 3; 
} 
  
 
if(pass.contentEquals(pass2) == false){
	 response.sendRedirect("../view/signonView.jsp");
 }else{
	
	 if(bd.checkuserName(request.getParameter("email")) == false){
		 rs = bd.save(id,request.getParameter("nombre") , request.getParameter("apellidos"), request.getParameter("email"),request.getParameter("password"), gender);
		 
		 customerBean.setuserID(id);
		 customerBean.setuserName(request.getParameter("email"));
		 customerBean.setuserPassword(request.getParameter("password")); 
		 response.sendRedirect("../view/signoncurriculumView.jsp");
	 }else{
		 response.sendRedirect("../view/signonView.jsp");
	 }
 }
  
%>

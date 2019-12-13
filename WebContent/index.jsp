<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="CustomerBean" class="workForAll.CustomerBean" scope="session"/>

<script>
	isLogged = <jsp:getProperty name="CustomerBean" property="" />
</script>
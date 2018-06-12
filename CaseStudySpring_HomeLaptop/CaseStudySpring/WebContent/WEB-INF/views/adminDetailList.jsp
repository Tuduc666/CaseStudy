<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<!DOCTYPE html>
<%@ page import="models.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="<spring:url value="/CSS/list.css" />">   
		<title>Admin Detail List</title>
	</head>
<%
	User u = (User) request.getAttribute("user");
	session.setAttribute("user", u);
%>
<body>
	<h1>Admin Detail List</h1>
	<h1>Welcome <%=u.getUser_name() %></h1>
	
</body>
</html>
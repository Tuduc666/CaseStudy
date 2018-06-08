<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="models.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Detail List</title>
<link rel="stylesheet" href="<spring:url value="CSS/list.css" />">   
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
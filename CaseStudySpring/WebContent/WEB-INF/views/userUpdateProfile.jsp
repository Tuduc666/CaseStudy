<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<%@ page import="models.*,dao.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<spring:url value="/CSS/updateUser.css" />">
		<title>Login</title>
	</head>
<%
	User u = (User) session.getAttribute("userkey");      // two different ways to retrieve the information
%>
<body>
	<h1>AS Properties Update User Info</h1>
	<div class="container">
		<form action="validateLogin" method="post">	
		
			<div class="sub_field">
				<label>UserId (non-input)</label>
				<input type="text" id="user_id" name="user_id" value=${userkey.getUser_id() } readonly />
			</div>
			<div class="sub_field">
				<label>Email</label>
				<input type="text" id="email" name="email" value=${userkey.getEmail() }  />
			</div>
			<div class="sub_field">
				<label>Password</label>
				<input type="password" id="pass" name="password" value="<%=u.getUser_password()%>"  />
			</div>
			
			<div class="btn">
				<input type="submit" name="submit"  value="Update Info" />
			</div>
		</form>
	</div>
</body>
</html>
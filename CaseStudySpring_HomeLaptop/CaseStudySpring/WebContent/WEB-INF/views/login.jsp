<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" href="<spring:url value="/CSS/login.css" />">
		<title>Login</title>
	</head>
<body>
	<h1>AS Properties Login Page</h1>
	<div class="container">
		<form action="validateLogin" method="post">	
			<div class="sub_field">
				<label>Email</label>
				<input type="text" id="email" name="email"  />
			</div>
			<div class="sub_field">
				<label>Password</label>
				<input type="password" id="pass" name="password"  />
			</div>
			
			<div class="btn">
				<input type="submit" name="submit"  value="Submit Info" />
			</div>
		</form>
	</div>
</body>
</html>
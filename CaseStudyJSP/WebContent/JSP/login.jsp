<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="dao.*" %>
<%@ page import="models.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../CSS/login.css">
<title>Login</title>

</head>
<%! Integer count; Integer acount; %>
<%
	String message = null;
	if(request.getParameter("login") != null){
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		if(password == ""){
			message = "Invalid Password";
		} 
		else {
			// validate user/password with user table, if valid load user bean
			
			
			session.setAttribute("email", email);
			session.setAttribute("password", password);
			response.sendRedirect("userlist.jsp?city=0,state=0,order=0");	
		}
	}
%>
<body>

<br>
<%
	if(message != null)
		out.print("<span style='color:red'>" + message + "</span>");

	if(count==null) count=1;
	else count++;
	out.print("Page Count = " + count +"");
	
	acount= (Integer) application.getAttribute("acount");    // returns null first time
	if(acount==null) acount=1;
	else acount++;
	out.print("Application Count = " + acount +"");
	application.setAttribute("acount", acount);
%>
<h1> Login </h1>
<form method="post">
Email<input type="email" name="email"/> 
Password<input type="password" name="password"/>

<br>
<input type="submit" name="login" value="Login" />
</form>

</body>
</html>
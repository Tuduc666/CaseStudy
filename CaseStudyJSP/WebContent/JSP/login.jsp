<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String password = request.getParameter("password");
		String userName = request.getParameter("userName");
		String gender = request.getParameter("gender");
		String[] hobbies = request.getParameterValues("hobbies");
		String hob="";
		for(String s : hobbies){
			hob = hob + s + " "; 
		}
		String country = request.getParameter("country");
		if(password == ""){
			message = "Invalid Password";
		} 
		else {
			session.setAttribute("firstName", firstName);
			session.setAttribute("lastName", lastName);
			session.setAttribute("password", password);
			session.setAttribute("userName", userName);
			session.setAttribute("gender", gender);
			session.setAttribute("hobbies", hob);
			session.setAttribute("country", country);
			response.sendRedirect("success.jsp");	
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
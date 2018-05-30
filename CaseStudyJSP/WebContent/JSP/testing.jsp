<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="dao.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
out.print("Hello...<br>");
UserDAO userDAO = new UserDAO();
List<User> l = new ArrayList<User>();
l = userDAO.getUserList();
if (l.isEmpty()){out.print("empty");}   // check if list is empty
for(User u : l){ 
	out.print("hellotoo_");
	out.print(u.getUser_name());
	out.print("<br>");
}
out.print("Goodbye...");

%>
</body>
</html>
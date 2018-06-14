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
		<link rel="stylesheet" href="<spring:url value="/CSS/ulist.css" />">
		<title>Salespersons Detail List</title>
	</head>
<%
	User u = (User) request.getAttribute("user");        // only pass in user from the login page
	if(u != null) session.setAttribute("userkey", u);    // if user is not passes in, then use userkey
	u = (User) session.getAttribute("userkey");
	
	String city = (String) request.getAttribute("city");
	String state = (String) request.getAttribute("state");
	String order = (String) request.getAttribute("order");
%>
	<body>
			<h1>AS Properties</h1>
			
			<div class="background"></div>   

	<nav>
	<ul>
<!-- HOME -->
	    <li><a href="adminDetailList?city=all&state=all&order=date">Home</a></li>
		    
<!-- logout -->
	    <li><a href="logout">Logout</a></li>
	</ul>
    </nav>


<!-- DETAIL LIST -->
<%
 	PropertyDAO propertyDAO= new PropertyDAO();		
 	List<Property> pl = new ArrayList<Property>();
 	Boolean admin = u.getUser_type().equals("Admin");
 	pl = propertyDAO.getPropertyList(city, state, order, admin);
 	for (Property s : pl){ %>
 		<div class="flexbox">
		<img src="IMAGES/<%=s.getPhoto_filename()%>" alt="Property Photo">
		<div class="text">
			<h2>Asking Price: $<%=s.getAsking_price()%></h2>
			<p><%=s.getAddress1()%></p>
			<p><%=s.getCity()%>,&nbsp<%=s.getState()%>&nbsp<%=s.getZip()%></p>
		</div>
		<div class="flexbutton">
			<a href="#" class="button">Detail</a>
			<a href="#" class="button">Inactivate</a>
			<a href="#" class="button">Showing</a>			
		</div>  
	</div>
 <%	}  %>

	
	<!-- ************* this is how to go to the login page ************** -->
	<!-- *************  <a href="/CaseStudySpring/" >TESTING</a>  ******* -->
	
<%
// 	StateDAO stateDAO= new StateDAO();		
// 	List<State> l = new ArrayList<State>();
// 	l = stateDAO.getStateList();
// 	for (State s : l){
// 		out.print(s.getCode());
// 	}
%>

<%
//get property list
//  	PropertyDAO propertyDAO= new PropertyDAO();		
//  	List<Property> pl = new ArrayList<Property>();
//  	Boolean admin = u.getUser_type().equals("Admin");
//  	pl = propertyDAO.getPropertyList("all", "all", "date", admin);
//  	for (Property s : pl){
//  		out.print(s.getPhoto_filename());
//  	}  
 %>
				
	<footer>Copyright &copy; 2018 AS Properties.  All rights reserved.</footer>
		
	</body>
</html>
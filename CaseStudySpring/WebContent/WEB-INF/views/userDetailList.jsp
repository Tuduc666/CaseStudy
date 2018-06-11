<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<!DOCTYPE html>
<%@ page import="models.*" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="<spring:url value="/CSS/list.css" />">
		<title>User Detail List</title>
	</head>
<%
	User u = (User) request.getAttribute("user");
	String city = (String) request.getAttribute("city");
	String state = (String) request.getAttribute("state");
	String order = (String) request.getAttribute("order");
%>
	<body>
			<h1>AS Properties</h1>
			
			<div class="background"></div>   

	<nav>
	<ul>
	    <li><a href="userList.html">Home</a></li>
		
	    <li class="dropdown">
		<a href="javascript:void(0)" class="dropbtn" style="color:yellow;" id="selectCity">Select City</a>
		<div class="dropdown-content">
			<a href="#" onclick="selectClick('selectCity', 'Select City')">Select City</a>
			<a href="userlist.jsp?city=1,state=0" onclick="selectClick('selectCity', 'city: Bronx')">Bronx</a>   //request.getParameter("city");
			<a href="#" onclick="selectClick('selectCity', 'city: New York City')">New York City</a>
			<a href="#" onclick="selectClick('selectCity', 'city: Sunnyside')">Sunnyside</a>
			<a href="#" onclick="selectClick('selectCity', 'city: Woodside')">Woodside</a>
		</div>
	    </li>

	    <li class="dropdown">
		<a href="javascript:void(0)" class="dropbtn" style="color:yellow;" id="selectState">Select State</a>
		<div class="dropdown-content">
			<a href="#" onclick="selectClick('selectState', 'Select State')">Select State</a>
			<a href="userlist.jsp?city=1,state=1" onclick="selectClick('selectState', 'state: CA')">CA</a>
			<a href="#" onclick="selectClick('selectState', 'state: NY')">NY</a>	
			<a href="#" onclick="selectClick('selectState', 'state: WA')">WA</a>				
		</div>
	    </li>

	
	  	<li class="dropdown">
		<a href="javascript:void(0)" class="dropbtn" style="color:powderblue;" id="orderBy">Order by: Posted Date</a>
		<div class="dropdown-content">
			<a href="#" onclick="selectClick('orderBy', 'Order by: Posted Date')">Order by Posted Date</a>
			<a href="#" onclick="selectClick('orderBy', 'Order by: Price')">Order by Price</a>
		</div>
	    </li>
	    <li><a href="updateuser.html">Update Profile</a></li>
	    <li><a href="logout.html">Logout</a></li>
	</ul>
    </nav>


		<div class="flexbox">
			<img src="IMAGES/P000002.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $5,000 (rental)</h2>
				<p>Address: 6886 Broadway New York, NY 10174</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div> 
		</div>

		<div class="flexbox">
			<img src="IMAGES/P000003.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $1,000,000</h2>
				<p>Address: 1 Times Square New York, NY 10002</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div>  
		</div>

		<div class="flexbox">
			<img src="IMAGES/P000002.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $2,300 (rental)</h2>
				<p>Address: 6886 Broadway New York, NY 10174</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div> 
		</div>

		<div class="flexbox">
			<img src="IMAGES/P000003.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $1,000,000</h2>
				<p>Address: 1 Times Square New York, NY 10002</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div>  
		</div>

		<div class="flexbox">
			<img src="IMAGES/P000002.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $50,000</h2>
				<p>Address: 6886 Broadway New York, NY 10174</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div> 
		</div>

		<div class="flexbox">
			<img src="IMAGES/P000003.jpg" alt="Property Photo">
			<div class="text">
				<h2>Asking Price: $1,000,000</h2>
				<p>Address: 1 Times Square New York, NY 10002</p>
			</div>
			<div class="flexbutton">
				<a href="#" class="button">Detail</a>
				<a href="#" class="button">Inactivate</a>
				<a href="#" class="button">Showing</a>			
			</div>  
		</div>		

	<footer>Copyright &copy; 2018 AS Properties.  All rights reserved.</footer>
		
	</body>
</html>
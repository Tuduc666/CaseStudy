<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.*, models.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="../CSS/list.css">
	<script src="../JAVASCRIPT/list.js"></script>  
	<title>AS Properties List</title>
</head>
<%! 
	String email; 
    String password; 
    UserDAO userDAO = new UserDAO();
    User user = null;
%>

<% if((email != null) && (password != null))
	 user = userDAO.isValidUser(email, password);

%>

<body>
	<div class="background"></div>   

	<nav>
	<ul>
	    <li><a href="userList.html">Home</a></li>
		
	    <li class="dropdown">
		<a href="javascript:void(0)" class="dropbtn" style="color:yellow;" id="selectCity">Select City</a>
		<div class="dropdown-content">
			<a href="#" onclick="selectClick('selectCity', 'Select City')">Select City</a>
			<a href="#" onclick="selectClick('selectCity', 'city: Bronx')">Bronx</a>
			<a href="#" onclick="selectClick('selectCity', 'city: New York City')">New York City</a>
			<a href="#" onclick="selectClick('selectCity', 'city: Sunnyside')">Sunnyside</a>
			<a href="#" onclick="selectClick('selectCity', 'city: Woodside')">Woodside</a>
		</div>
	    </li>

	    <li class="dropdown">
		<a href="javascript:void(0)" class="dropbtn" style="color:yellow;" id="selectState">Select State</a>
		<div class="dropdown-content">
			<a href="#" onclick="selectClick('selectState', 'Select State')">Select State</a>
			<a href="#" onclick="selectClick('selectState', 'state: CA')">CA</a>
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
	    <li><a href="login.html">Login/Logout</a></li>
	</ul>
    </nav>


		<div class="flexbox">
			<img src="../IMAGES/P000002.jpg" alt="Property Photo">
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
			<img src="../IMAGES/P000003.jpg" alt="Property Photo">
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
			<img src="../IMAGES/P000002.jpg" alt="Property Photo">
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
			<img src="../IMAGES/P000003.jpg" alt="Property Photo">
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
			<img src="../IMAGES/P000002.jpg" alt="Property Photo">
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
			<img src="../IMAGES/P000003.jpg" alt="Property Photo">
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
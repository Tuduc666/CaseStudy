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
<!-- HOME -->
	    <li><a href="userDetailList?city=all&state=all&order=date">Home</a></li>
		
<!-- CITY -->
<!-- Method 1 - one way of doing it, using out.print -->
	    <li class="dropdown">
		<a class="dropbtn" style="color:yellow;" id="selectCity">City:<%=city%></a>
		<div class="dropdown-content">
			<a href="userDetailList?city=all&state=<%=state%>&order=<%=order%>">City:All</a>
			<%
				CityDAO cityDAO= new CityDAO();		
				List<City> lc = new ArrayList<City>();
				lc = cityDAO.getCityList();
				for (City c : lc){
					out.print("<a href=\"userDetailList?city=" + c.getName() + "&state="); %><%=state%>		
				<% 	out.print("&order="); %><%=order%>		
				<% 	out.print("\">" + c.getName() + "</a>"); %>
				<% 	}  %> 
			<!-- ***************  This is the string we're building above    **************************     -->		
			<!-- ***************  <a href="userDetailList?city=Bronx&state=<%=state%>&order=<%=order%>">Bronx</a>   -->
		</div>
	    </li>

<!-- STATE -->
<!-- Method 2 - another way of doing it, using expression function -->
	    <li class="dropdown">
		<a class="dropbtn" style="color:yellow;" id="selectState">State:<%=state%></a>
		<div class="dropdown-content">
			<a href="userDetailList?city=<%=city%>&state=all&order=<%=order%>">State:All</a>
			<%
				StateDAO stateDAO= new StateDAO();		
				List<State> l = new ArrayList<State>();
				l = stateDAO.getStateList();
				for (State s : l){ %>
					<a href="userDetailList?city=<%=city%>&state=<%=s.getCode()%>
					&order=<%=order%>"><%=s.getCode()%></a>
			<% 	}  %> 
			<!-- ***************  This is the string we're building above    **************************     -->				
			<!-- ***************  <a href="userDetailList?city=<%=city%>&state=CA&order=<%=order%>">CA</a>   -->				
		</div>
	    </li>	


<!-- ORDER BY -->
	  	<li class="dropdown">
		<a class="dropbtn" style="color:powderblue;" id="orderBy">Order by:<%=order%></a>
		<div class="dropdown-content">
			<a href="userDetailList?city=<%=city%>&state=<%=state%>&order=date">Order by Posted Date</a>
			<a href="userDetailList?city=<%=city%>&state=<%=state%>&order=price">Order by Price</a>
		</div>
	    </li>
	    
<!-- OTHER -->
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

				
	<footer>Copyright &copy; 2018 AS Properties.  All rights reserved.</footer>
		
	</body>
</html>
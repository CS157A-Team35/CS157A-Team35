<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html lang="en">
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>search4House</title>
<style>
.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }
</style>
</head>
<body>
<jsp:include page="navBar.jsp" />
<div align="center" style="padding-left=50px; padding-right=50px;padding-top=50px;padding-bottom=50px;">
<button type="button" onclick="window.location.href = 'login.jsp'">Log In</button>
<button type="button" onclick="window.location.href = 'resgister.jsp'">Register</button>
<button type="button" onclick="window.location.href = 'logout.jsp'">Log Out</button>
</div>
	<fieldset>
		<legend>Welcome</legend>
		<p>This is Search4Housing, where we match you to our best listing
			to find you a place to stay. Check out some of our top listings below! </p>
	</fieldset>
	<% 
String userID=(String)session.getAttribute("userID"); 
	if (userID != null) {
		out.print("Hello, "+ userID + "! Feel free to scroll through our catalog and enjoy your time with us here."); 
	}
%>
	
</body>
</html>
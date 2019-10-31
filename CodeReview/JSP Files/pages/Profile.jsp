<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	
	<style>
		body{
			background: linear-gradient(#FFFF99 20%, #0066CC 80%) fixed;
		}
		
		.center {
  position:absolute;
top: 30%;
    left: 50%;
    margin-right: -50%;
    transform: translate(-50%, -50%)
}
	</style>

<head>
<meta charset="ISO-8859-1">
<title>Search 4 Home - Profile</title>
</head>
	
	<body>
	
	
	<!-- still need to replace this placeholder -->
	
	<!-- links to other parts of website. These are not final until we can get all the parts together -->
	<!-- links to other parts of website. These are not final until we can get all the parts together -->
<h1 align  = "center" style = "color: #4B4B4B">Search4House</h1>
 <div id = "menuTop" align  = "center">
	<a href  = "WelcomePage.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Home</strong></a> |
	<a href  = "Profile.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Profile</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Favorites List</strong></a> | 
	<a href = "Search.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Search</strong></a>

	</div><hr>
	
	<br>
	<br>
	<br>
	
	<!-- here is where we put the profile picture (delete the comments -->
	<img src = "/html/images/test.png" alt = "Test Image" width = "100" height = "100" border  = "2"/> <br>
	<font size = "5">Username Here</font><br>
	<a href = "/profile.htm"><strong>Edit</strong></a>
	
	<br>
	<br>
	<br>
	<div>
	<table>
	<table class = "center" border = "0" width  = "50%" style= "background-color:white">
		<thead>
			<tr>
				<td colspan  = "4">Contact Information</td>
			</tr>
		</thead>
		<tr> 
			<td>Name:</td><td>John Smith</td>
		</tr>
		<tr> 
			<td>Email:</td><td>someEmail@search4home.com</td>
		</tr>
		<tr>
			<td>Phone Number:</td><td>(123)456-7890</td>
		</tr>
	</table>
	</div>
	
	<br>
	<br>
	<br>
	
	<div class = "menuBottom" align  = "center" style = "position: fixed; bottom: 10%; left: 45%; text-decoration: none; color: white">
	<a href  = "index.jsp" style="text-decoration: none; color: white"><strong>Home</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: white"><strong>Favorites List</strong></a>
	</div>
	
	</body>
	
</html>
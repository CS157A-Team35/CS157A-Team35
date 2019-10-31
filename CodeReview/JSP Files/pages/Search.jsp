<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
	<style>
		body{
			background: linear-gradient(#FFFF99 20%, #0066CC 80%) fixed;
		}
	</style>
<head>
<meta charset="UTF-8">
<title>Search4House</title>

<script>
function checkSearch()
{
    if(document.zipSearch.zipcode.value=="")
    {
      alert("Zipcode required");
      document.zipSearch.zipcode.focus();
      return false;
    } else if (isNaN(document.zipSearch.zipcode.value)){
    	alert("Numericals only");
        document.zipSearch.zipcode.focus();
        return false;
    } else if (document.zipSearch.zipcode.value.length <5){
    	alert("Zipcode needs to be 5 digits");
        document.zipSearch.zipcode.focus();
        return false;
    }else if (document.zipSearch.zipcode.value.length > 5){
    	alert("Zipcode needs to be 5 digits");
        document.zipSearch.zipcode.focus();
        return false;
    }
    
    
} 

</script>


<style>

.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }


</style>

</head>
<body>
	<!-- links to other parts of website. These are not final until we can get all the parts together -->
<h1 align  = "center" style = "color: #4B4B4B">Search4House</h1>
 <div id = "menuTop" align  = "center">
	<a href  = "WelcomePage.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Home</strong></a> |
	<a href  = "Profile.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Profile</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Favorites List</strong></a> | 
	<a href = "Search.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Search</strong></a>

	</div><hr>
 <h2>Search by Area</h2>

 <form name = "zipSearch" action="Listings.jsp" method="GET" onSubmit="return checkSearch()">
    <input type="text" name="zipcode" />
    <input type="submit" value="Search" />
</form>
 
    

    <% 
    //categories = Single Room, Shared Room, Duplex, Apartment, Studio
     String db = "search4houses";
        
            %> 
           
            

</body>
</html>
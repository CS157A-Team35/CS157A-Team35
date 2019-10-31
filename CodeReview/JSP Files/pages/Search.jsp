<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
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
    
    
} </script>


</head>
<body>
	<h1 align  = "center">Search4House</h1>
 <div id = "menuTop" align  = "center">
	<a href  = "index.jsp"><strong>Home</strong></a> |
	<a href  = "Profile.jsp"><strong>Profile</strong></a> |
	<a href = "FavoriteList.jsp"><strong>Favorites List</strong></a>
	<a href = "Search.jsp"><strong>Search</strong></a>

	</div> <hr>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
        <%@ page import = "java.util.*" %>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
<head>
<meta charset="UTF-8">
<title>search4House</title>
	<style>
		
	</style>
<head>
<meta charset="UTF-8">
<title>Search4House</title>

<script>


</script>


<style>

.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }


</style>

</head>
<body>

<jsp:include page="navBar.jsp" />
	 <%
 if (session == null || session.getAttribute("userID") == null) {
	 
	 %> 
	 
	  <div class="addListTitle"  style="position: absolute; align: center; padding-right:30%; padding-left:30%;">
	  Log in required to access this page<br>
	  <small>You will be redirected in 3 seconds...</small>
	  </div>
	          <meta http-equiv="refresh" content="3;url=Register.jsp" />

	<%

 } 
 %>

	
	<h2 align = "left">Favorites</h2>
	<button type = "button">Edit Favorites</button>
	
	<br>
	<br>
	
	<table border = "1" cellspacing = "5" cellpadding  = "5">
		<tr>
			<th>Rank</th>
			<th>Room Type</th>
			<th>Price</th>
			<th>Lease Time Frame</th>
			<th>Room Number</th>
			<th>Bathroom Number</th>
		
	 <% 

 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
 		String userID = (String)session.getAttribute("userID");
 		
 		
 		Statement stmt = con.createStatement();

 		int rankCounter = 0;
 		String roomType = null;
 		String price = null;
 		String leaseTimeFrame = null;
 		String roomNumber = null;
 		String bathNumber = null;
 		
 		while(rankCounter < 5){
 	%>
 		<% 	rankCounter = rankCounter+1;
 			String query1 = ("Select * FROM listings, favorites WHERE (SELECT listing" + rankCounter + "ID FROM search4houses.favorites, search4houses.user_favorites WHERE search4houses.user_favorites.user_id = "+ userID + " AND search4houses.favorites.listID = search4houses.user_favorites.list_id) = listings.listingID");

 			ResultSet rs = stmt.executeQuery(query1);
 			
	 		rs.next();
	 	
	 		if(rs.next()) 
	 		{
	 		 roomType = rs.getString("roomType");
	 		 price = rs.getString("price");
	 		 leaseTimeFrame = rs.getString("leaseTimeFrame");
	 		 roomNumber = rs.getString("roomNum");
	 		 bathNumber = rs.getString("bathroomNum");
	 		
 		
 		%>
 		<tr><td><%=rankCounter%></td>
			<td><%=roomType%></td>
			<td><%=price%></td>
			<td><%=leaseTimeFrame%></td>
			<td><%=roomNumber%></td>
			<td><%=bathNumber%></td>
		</tr>
 		<%} %>
 <%}
 		stmt.close();
 		
	} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage());} %>
	</table>
	
	<br>
	<br>
	<br>
	
	<div class = "menuBottom" align  = "center" style = "position: fixed; bottom: 10%; left: 45%; text-decoration: none; color: white">
	<a href  = "index.jsp" style="text-decoration: none; color: white"><strong>Home</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: white"><strong>Favorites List</strong></a>
	</div>
	
	     
	</body>
</html>
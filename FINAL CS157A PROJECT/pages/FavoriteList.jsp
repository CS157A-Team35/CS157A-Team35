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

 }else{
 %>

	
	<h2 align = "left"><p style="margin-left: 40px">Favorites</p></h2>
	
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
			<th>Visit Listing</th>
		
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
 		String listingLocation = null;
 		String listingID = null;
 		while(rankCounter < 5){
 	%>
 		<% 	rankCounter = rankCounter+1;
 			String query1 = ("Select * FROM listings, favorites WHERE (SELECT listing" + rankCounter + "ID FROM search4houses.favorites, search4houses.user_favorites WHERE search4houses.user_favorites.user_id = "+ userID + " AND search4houses.favorites.listID = search4houses.user_favorites.list_id) = listings.listingID");

 			ResultSet rs = stmt.executeQuery(query1);
 			
	 		rs.next();
	 	
	 		if(rs.next() == true) 
	 		{
	 		 roomType = rs.getString("roomType");
	 		 price = rs.getString("price");
	 		 leaseTimeFrame = rs.getString("leaseTimeFrame");
	 		 roomNumber = rs.getString("roomNum");
	 		 bathNumber = rs.getString("bathroomNum");
	 		 listingLocation = "location.href='Listing.jsp?listing=" + rs.getString("listingID") + "'";
	 		 
 		%>
 		<tr><td><%=rankCounter%></td>
			<td><%=roomType%></td>
			<td><%=price%></td>
			<td><%=leaseTimeFrame%></td>
			<td><%=roomNumber%></td>
			<td><%=bathNumber%></td>
			<td><button onClick = <%=listingLocation%> type = button >Visit</button></td>
			

		</tr>
 		<%} %>
 <%}%>
	</table>
		
			
		<!-- 	<td><button  type  = button id = delete5 onClick = <%stmt.executeUpdate("UPDATE search4houses.favorites SET search4houses.favorites.listing5ID = '10' WHERE (search4houses.favorites.listID = '7');");%>>Delete</button></td>
	-->
	
	<%
 		stmt.close();
 		
	} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage());}} %>
	     
	</body>
</html>
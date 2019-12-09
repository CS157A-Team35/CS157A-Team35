<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
  <style>
  #buttonColor {
background-color: #ff6363;
  color: white;
    width: 300px;
    height: 40px;
    font-size:16px;
}
  
  
  
  </style>
  
  <script>

  
  
  
  </script>
<head>
<meta charset="UTF-8">
<title>search4House</title>


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

	
	<h2 align = "left"><p style="margin-left: 40px">Listings</p></h2>
	
	<br>
	<br>
	
	<table border = "1" cellspacing = "5" cellpadding  = "5">
		<tr>
			<th>Room Type</th>
			<th>Price</th>
			<th>Lease Time Frame</th>
			<th>Room Number</th>
			<th>Bathroom Number</th>
			<th>Description</th>
			<th>Visit Listing</th>
		</tr>
		
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

 		
 		String roomType = null;
 		String price = null;
 		String leaseTimeFrame = null;
 		String roomNumber = null;
 		String bathNumber = null;
 		String listingEditLocation = null;
 		String description = null;
		String query1 = ("SELECT listingID, roomType, price, leaseTimeframe, roomNum, bathroomNum, description FROM listings, accounts_listings WHERE " + userID + " = accounts_listings.user_id AND accounts_listings.listing_id = listings.listingID");

		ResultSet rs = stmt.executeQuery(query1);
 		while(rs.next() == true){
 	
 			
 			
	 		
	 		 roomType = rs.getString("roomType");
	 		 price = rs.getString("price");
	 		 leaseTimeFrame = rs.getString("leaseTimeFrame");
	 		 roomNumber = rs.getString("roomNum");
	 		 bathNumber = rs.getString("bathroomNum");
	 		 description = rs.getString ("description");
	 		 listingEditLocation = "location.href='ProfileListingView.jsp?listing=" + rs.getString("listingID") + "'";
	 		 
 		%>
 		<tr>
			<td><%=roomType%></td>
			<td><%=price%></td>
			<td><%=leaseTimeFrame%></td>
			<td><%=roomNumber%></td>
			<td><%=bathNumber%></td>
			<td><%=description%></td>
			<td><button onClick = <%=listingEditLocation%> type = button >Visit</button></td>
			

		</tr>
 		
 <%}%>
	</table>
		
			

	
	<%
 		stmt.close();
 		
	} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage());}} %>
	     
</body>
</html>
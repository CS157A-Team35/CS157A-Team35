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
<title>Insert title here</title>

<!-- links to other parts of website. These are not final until we can get all the parts together -->
<h1 align  = "center" style = "color: #4B4B4B">Search4House</h1>
 <div id = "menuTop" align  = "center">
	<a href  = "WelcomePage.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Home</strong></a> |
	<a href  = "Profile.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Profile</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Favorites List</strong></a> | 
	<a href = "Search.jsp" style="text-decoration: none; color: #4B4B4B"><strong>Search</strong></a>

	</div><hr>
	<% String db = "search4houses"; %>






<style>
.container {
  position: relative;
  width: 50%;
}


.container .btn {
  position: absolute;
  top: 5%;
  left: 5%;
  background-color: #FF4B4B;
  color: white;
  font-size: 16px;
  padding: 6px 12px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
}

.container .btn:hover {
  background-color: black;
}
.button-clicked {
  background: #6CA2F1;
}

.column {
  float: left;
  width: 50%;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

@media screen and (max-width: 600px) {
  .column {
    width: 100%;
  }
}

</style>

</head>
<body>
<div class = "row"><div class="column">
<%
 String listing_id = request.getParameter("listing");
 //out.println(listing_id);  
 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","FuukaYamagishi1337");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     
     

     ResultSet rs = stmt.executeQuery("SELECT * FROM Listings");
    
    
    
    
    
    
     while(rs.next()){
      	String listingID = rs.getString("listingID");
      	//out.println(theZip + zipCode);
      	if (listingID.equals(listing_id)) {
      		
      		
      		String photo = rs.getString("photosID");
        	//out.println("photoID: " + photo); 
        	
    		ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Photos");
           //rs1.first();
           while (rs1.next()){
           	String photoID = rs1.getString("photoID");
           	if (photo.equals(photoID)){
               	String URL = rs1.getString("photoURL")+".jpg";
               	//out.println(URL);
               	%><div class = "container"> <img src="img/<%out.println(URL);%>" height="450" width="650">  <button class="btn" id ="button">♡</button>
           
               	
               	</div>
           
               	<%


           	}
           } %> <br><%
      		
      		
           %></div> <div class = "column"><%

      		
      		
      		String roomT = rs.getString("roomType");
            if (roomT.equals("Apartment")){
           	 
           			 
            	//out.println("listingID: " + listingID);%> <br><h1><% 
            	String price = rs.getString("price");
            	out.println("$" + price);%></h1> <br> <h3><% 
            	
            	
               
            	
            	ResultSet rs2 = stmt3.executeQuery("SELECT * FROM Addresses");
           	 while(rs2.next()){
           	      	String theListID = rs2.getString("listingID");
           	      	//out.println(theZip + zipCode);
           	      	if (theListID.equals(listing_id)) {
           	
       		String street = rs2.getString("streetAddress");
       		String city = rs2.getString("city");
       		String state = rs2.getString("state");

       		out.println(street + " " + city+ ", "+ state);
           	      	}}
            	%></h3> <br><% 
            	String roomNo = rs.getString("roomNum");
            	out.println("| "+roomNo + " bedroom(s) | ");
            	String bathNo = rs.getString("bathroomNum");
            	out.println("| "+bathNo + " bathroom(s) | ");
            	String leaseTime = rs.getString("leaseTimeframe");
            	out.println("| Lease time: "+leaseTime + " months | ");
            	String desc = rs.getString("description");%> <br><%
            	
            	out.println(" Information: "+ desc);
            	%> <br><br></td><% 
            	
            	
            	
            	
      	}}}
      	


		%> 
		
		
		
		</div></div>

		<%
		stmt.close();
		con.close();
} catch(SQLException e) {
out.println("SQLException caught: " + e.getMessage()); }
 %>
</body>
</html>
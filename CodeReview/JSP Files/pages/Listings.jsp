<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search4House</title>

<script>

$("#button").click(function() {
	  $("#button").css('background-color','green');
	});
</script>


<style>


body{
			background: linear-gradient(#FFFF99 20%, #0066CC 80%) fixed;
		}
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


.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }

.backLink { 
text-decoration:none;
color: #FF94D5; }
.backLink:hover { color: #4B4B4B; }





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
 <h2>Listings for: <% 
 String theZip = request.getParameter("zipcode");
 out.println(theZip); 
 

 String db = "search4houses";
 String user;
 String addressID;
 %></h2> 
 

 
 <h4>
 <br> <a name = "top"></a> <div align = "center">
 <a class = "link" href = "#apartments" > Apartments</a> | 
 <a href = "#duplex" class = "link" > Duplex</a> | 
 <a href = "#sharedRoom" class = "link" > Shared Room</a> | 
 <a href = "#singleRoom" class = "link"> Single Room</a> | 
 <a href = "#studio" class = "link" > Studio</a> <br></h4>
 
 </div>
 <h3 id = "apartments">Apartments</h3>
 <% 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     Statement stmt4 = con.createStatement();

		%> <table border="0" style = "border-spacing: 50px"><tr><%

     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");
     int count = 0;
     while(rs.next()){
     	String zipCode = rs.getString("zipCode");
     	//out.println(theZip + zipCode);
     	if (theZip.equals(zipCode)) {
     		String addrID = rs.getString("addrID");
     		addressID = addrID;
     	//	out.println("hi");
     		//out.println("wat "+addrID);
     		
             ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Listing_Address");
             //rs1.first();
             while (rs1.next()){
             	String addr_id = rs1.getString("addr_id");
             	//out.println("yo" + addrID + addr_id);
             	if (addrID.equals(addr_id)) {
     		//out.println("o");

             		String listing = rs1.getString("listing_id");
                     ResultSet rs2 = stmt2.executeQuery("SELECT * FROM Listings");
                     //rs1.first();
                     while (rs2.next()){
                     	String listingID = rs2.getString("listingID");
                     	//out.println("ya"+ listing + listingID);

                     	
                     	if (listing.equals(listingID)) {
                         		//out.println("listingID: " + listingID);
                         		String roomT = rs2.getString("roomType");
                                 if (roomT.equals("Apartment")){
                                	 
                                	 %><td><%
                                			 
                                 	//out.println("listingID: " + listingID);%> <br><% 
                                 	String price = rs2.getString("price");
                                 	out.println("price: $" + price);%> <br><% 
                                 	String photo = rs2.getString("photosID");
                                 	//out.println("photoID: " + photo); 
                                 	
                             		ResultSet rs3 = stmt4.executeQuery("SELECT * FROM Photos");
                                    //rs1.first();
                                    while (rs3.next()){
                                    	String photoID = rs3.getString("photoID");
                                    	if (photo.equals(photoID)){
                                        	String URL = rs3.getString("photoURL")+".jpg";
                                        	//out.println(URL);
                                        	%><div class = "container"><a href = Listing.jsp?<%out.println("listing="+listing); %>> <img src="img/<%out.println(URL);%>" height="200" width="300"></a>  <button class="btn" id ="button">♡</button>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	</div>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<%


                                    	}
                                    } %> <br><%
                                 	
                             		String street = rs.getString("streetAddress");
                             		String city = rs.getString("city");
                             		String state = rs.getString("state");

                             		out.println(street + " " + city+ ", "+ state);
                                 	
                                 	
                                 	
                                 	
                                 	%> <br><% 
                                 	String roomNo = rs2.getString("roomNum");
                                 	out.println("| "+roomNo + " bd | ");
                                 	String bathNo = rs2.getString("bathroomNum");
                                 	out.println("| "+bathNo + " ba | ");%> <br><br></td><% 
                                 	count++;
                                 	if (count == 4){
                                 		%> </tr><tr> <%
                                 	}
                                 } 
                         		
                         		break;}}break;}}}}
     stmt.close();
     con.close();
 } catch(SQLException e) { 
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %> </tr><%%></table><%
     
    %>
 
  <a href = "#top"> Back to top</a> <br>
 
 <br><hr> <h3 id = "duplex">Duplex</h3>
 
 <% 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     Statement stmt4 = con.createStatement();

		%> <table border="0" style = "border-spacing: 50px"><tr><%

     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");
     int count = 0;
     while(rs.next()){
     	String zipCode = rs.getString("zipCode");
     	//out.println(theZip + zipCode);
     	if (theZip.equals(zipCode)) {
     		String addrID = rs.getString("addrID");
     		addressID = addrID;
     	//	out.println("hi");
     		//out.println("wat "+addrID);
     		
             ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Listing_Address");
             //rs1.first();
             while (rs1.next()){
             	String addr_id = rs1.getString("addr_id");
             	//out.println("yo" + addrID + addr_id);
             	if (addrID.equals(addr_id)) {
     		//out.println("o");

             		String listing = rs1.getString("listing_id");
                     ResultSet rs2 = stmt2.executeQuery("SELECT * FROM Listings");
                     //rs1.first();
                     while (rs2.next()){
                     	String listingID = rs2.getString("listingID");
                     	//out.println("ya"+ listing + listingID);

                     	
                     	if (listing.equals(listingID)) {
                         		//out.println("listingID: " + listingID);
                         		String roomT = rs2.getString("roomType");
                                 if (roomT.equals("Duplex")){
                                	 
                                	 %><td><%
                                			 
                                 	//out.println("listingID: " + listingID);%> <br><% 
                                 	String price = rs2.getString("price");
                                 	out.println("price: $" + price);%> <br><% 
                                 	String photo = rs2.getString("photosID");
                                 	//out.println("photoID: " + photo); 
                                 	
                             		ResultSet rs3 = stmt4.executeQuery("SELECT * FROM Photos");
                                    //rs1.first();
                                    while (rs3.next()){
                                    	String photoID = rs3.getString("photoID");
                                    	if (photo.equals(photoID)){
                                        	String URL = rs3.getString("photoURL")+".jpg";
                                        	//out.println(URL);
                                        	%><div class = "container"><a href = Listing.jsp?<%out.println("listing="+listing); %>> <img src="img/<%out.println(URL);%>" height="200" width="300"></a>  <button class="btn" id ="button">♡</button>
                                        	
                                        	
                                        	
                                        	</div>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<%


                                    	}
                                    } %> <br><%
                                 	
                             		String street = rs.getString("streetAddress");
                             		String city = rs.getString("city");
                             		String state = rs.getString("state");

                             		out.println(street + " " + city+ ", "+ state);
                                 	
                                 	
                                 	
                                 	
                                 	%> <br><% 
                                 	String roomNo = rs2.getString("roomNum");
                                 	out.println("| "+roomNo + " bd | ");
                                 	String bathNo = rs2.getString("bathroomNum");
                                 	out.println("| "+bathNo + " ba | ");%> <br><br></td><% 
                                 	count++;
                                 	if (count == 4){
                                 		%> </tr><tr> <%
                                 	}
                                 } 
                         		
                         		break;}}break;}}}}
     stmt.close();
     con.close();
 } catch(SQLException e) { 
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %> </tr><%%></table><%
     
    %>
   <a href = "#top"> Back to top</a> <br>
 


 <br><hr> <h3 id = "sharedRoom">Shared Room</h3>
 
 <% 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     Statement stmt4 = con.createStatement();

		%> <table border="0" style = "border-spacing: 50px"><tr><%

     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");
     int count = 0;
     while(rs.next()){
     	String zipCode = rs.getString("zipCode");
     	//out.println(theZip + zipCode);
     	if (theZip.equals(zipCode)) {
     		String addrID = rs.getString("addrID");
     		addressID = addrID;
     	//	out.println("hi");
     		//out.println("wat "+addrID);
     		
             ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Listing_Address");
             //rs1.first();
             while (rs1.next()){
             	String addr_id = rs1.getString("addr_id");
             	//out.println("yo" + addrID + addr_id);
             	if (addrID.equals(addr_id)) {
     		//out.println("o");

             		String listing = rs1.getString("listing_id");
                     ResultSet rs2 = stmt2.executeQuery("SELECT * FROM Listings");
                     //rs1.first();
                     while (rs2.next()){
                     	String listingID = rs2.getString("listingID");
                     	//out.println("ya"+ listing + listingID);

                     	
                     	if (listing.equals(listingID)) {
                         		//out.println("listingID: " + listingID);
                         		String roomT = rs2.getString("roomType");
                                 if (roomT.equals("Shared Room")){
                                	 
                                	 %><td><%
                                			 
                                 	//out.println("listingID: " + listingID);%> <br><% 
                                 	String price = rs2.getString("price");
                                 	out.println("price: $" + price);%> <br><% 
                                 	String photo = rs2.getString("photosID");
                                 	//out.println("photoID: " + photo); 
                                 	
                             		ResultSet rs3 = stmt4.executeQuery("SELECT * FROM Photos");
                                    //rs1.first();
                                    while (rs3.next()){
                                    	String photoID = rs3.getString("photoID");
                                    	if (photo.equals(photoID)){
                                        	String URL = rs3.getString("photoURL")+".jpg";
                                        	//out.println(URL);
                                        	%><div class = "container"><a href = Listing.jsp?<%out.println("listing="+listing); %>> <img src="img/<%out.println(URL);%>" height="200" width="300"></a>  <button class="btn" id ="button">♡</button>
                                        	
                                        	
                                        	
                                        	</div>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<%


                                    	}
                                    } %> <br><%
                                 	
                             		String street = rs.getString("streetAddress");
                             		String city = rs.getString("city");
                             		String state = rs.getString("state");

                             		out.println(street + " " + city+ ", "+ state);
                                 	
                                 	
                                 	
                                 	
                                 	%> <br><% 
                                 	String roomNo = rs2.getString("roomNum");
                                 	out.println("| "+roomNo + " bd | ");
                                 	String bathNo = rs2.getString("bathroomNum");
                                 	out.println("| "+bathNo + " ba | ");%> <br><br></td><% 
                                 	count++;
                                 	if (count == 4){
                                 		%> </tr><tr> <%
                                 	}
                                 } 
                         		
                         		break;}}break;}}}}
     stmt.close();
     con.close();
 } catch(SQLException e) { 
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %> </tr><%%></table><%
     
    %>
 
  <a href = "#top"> Back to top</a> <br>



 <br><hr> <h3 id = "singleRoom">Single Room</h3>

<% 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     Statement stmt4 = con.createStatement();

		%> <table border="0" style = "border-spacing: 50px"><tr><%

     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");
     int count = 0;
     while(rs.next()){
     	String zipCode = rs.getString("zipCode");
     	//out.println(theZip + zipCode);
     	if (theZip.equals(zipCode)) {
     		String addrID = rs.getString("addrID");
     		addressID = addrID;
     	//	out.println("hi");
     		//out.println("wat "+addrID);
     		
             ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Listing_Address");
             //rs1.first();
             while (rs1.next()){
             	String addr_id = rs1.getString("addr_id");
             	//out.println("yo" + addrID + addr_id);
             	if (addrID.equals(addr_id)) {
     		//out.println("o");

             		String listing = rs1.getString("listing_id");
                     ResultSet rs2 = stmt2.executeQuery("SELECT * FROM Listings");
                     //rs1.first();
                     while (rs2.next()){
                     	String listingID = rs2.getString("listingID");
                     	//out.println("ya"+ listing + listingID);

                     	
                     	if (listing.equals(listingID)) {
                         		//out.println("listingID: " + listingID);
                         		String roomT = rs2.getString("roomType");
                                 if (roomT.equals("Single Room")){
                                	 
                                	 %><td><%
                                			 
                                 	//out.println("listingID: " + listingID);%> <br><% 
                                 	String price = rs2.getString("price");
                                 	out.println("price: $" + price);%> <br><% 
                                 	String photo = rs2.getString("photosID");
                                 	//out.println("photoID: " + photo); 
                                 	
                             		ResultSet rs3 = stmt4.executeQuery("SELECT * FROM Photos");
                                    //rs1.first();
                                    while (rs3.next()){
                                    	String photoID = rs3.getString("photoID");
                                    	if (photo.equals(photoID)){
                                        	String URL = rs3.getString("photoURL")+".jpg";
                                        	//out.println(URL);
                                        	%><div class = "container"><a href = Listing.jsp?<%out.println("listing="+listing); %>> <img src="img/<%out.println(URL);%>" height="200" width="300"></a>  <button class="btn" id ="button">♡</button>
                                        	
                                        	
                                        	
                                        	</div>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<%


                                    	}
                                    } %> <br><%
                                 	
                             		String street = rs.getString("streetAddress");
                             		String city = rs.getString("city");
                             		String state = rs.getString("state");

                             		out.println(street + " " + city+ ", "+ state);
                                 	
                                 	
                                 	
                                 	
                                 	%> <br><% 
                                 	String roomNo = rs2.getString("roomNum");
                                 	out.println("| "+roomNo + " bd | ");
                                 	String bathNo = rs2.getString("bathroomNum");
                                 	out.println("| "+bathNo + " ba | ");%> <br><br></td><% 
                                 	count++;
                                 	if (count == 4){
                                 		%> </tr><tr> <%
                                 	}
                                 } 
                         		
                         		break;}}break;}}}}
     stmt.close();
     con.close();
 } catch(SQLException e) { 
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %> </tr><%%></table><%
     
    %>
  <a href = "#top"> Back to top</a> <br>

 <br><hr> <h3 id = "studio">Studio</h3>

 <% 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     Statement stmt4 = con.createStatement();

		%> <table border="0" style = "border-spacing: 50px"><tr><%

     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");
     int count = 0;
     while(rs.next()){
     	String zipCode = rs.getString("zipCode");
     	//out.println(theZip + zipCode);
     	if (theZip.equals(zipCode)) {
     		String addrID = rs.getString("addrID");
     		addressID = addrID;
     	//	out.println("hi");
     		//out.println("wat "+addrID);
     		
             ResultSet rs1 = stmt1.executeQuery("SELECT * FROM Listing_Address");
             //rs1.first();
             while (rs1.next()){
             	String addr_id = rs1.getString("addr_id");
             	//out.println("yo" + addrID + addr_id);
             	if (addrID.equals(addr_id)) {
     		//out.println("o");

             		String listing = rs1.getString("listing_id");
                     ResultSet rs2 = stmt2.executeQuery("SELECT * FROM Listings");
                     //rs1.first();
                     while (rs2.next()){
                     	String listingID = rs2.getString("listingID");
                     	//out.println("ya"+ listing + listingID);

                     	
                     	if (listing.equals(listingID)) {
                         		//out.println("listingID: " + listingID);
                         		String roomT = rs2.getString("roomType");
                                 if (roomT.equals("Studio")){
                                	 
                                	 %><td><%
                                			 
                                 	//out.println("listingID: " + listingID);%> <br><% 
                                 	String price = rs2.getString("price");
                                 	out.println("price: $" + price);%> <br><% 
                                 	String photo = rs2.getString("photosID");
                                 	//out.println("photoID: " + photo); 
                                 	
                             		ResultSet rs3 = stmt4.executeQuery("SELECT * FROM Photos");
                                    //rs1.first();
                                    while (rs3.next()){
                                    	String photoID = rs3.getString("photoID");
                                    	if (photo.equals(photoID)){
                                        	String URL = rs3.getString("photoURL")+".jpg";
                                        	//out.println(URL);
                                        	%><div class = "container"><a href = Listing.jsp?<%out.println("listing="+listing); %>> <img src="img/<%out.println(URL);%>" height="200" width="300"></a>  <button class="btn" id ="button">♡</button>
                                        	
                                        	
                                        	
                                        	</div>
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	<%


                                    	}
                                    } %> <br><%
                                 	
                             		String street = rs.getString("streetAddress");
                             		String city = rs.getString("city");
                             		String state = rs.getString("state");

                             		out.println(street + " " + city+ ", "+ state);
                                 	
                                 	
                                 	
                                 	
                                 	%> <br><% 
                                 	String roomNo = rs2.getString("roomNum");
                                 	out.println("| "+roomNo + " bd | ");
                                 	String bathNo = rs2.getString("bathroomNum");
                                 	out.println("| "+bathNo + " ba | ");%> <br><br></td><% 
                                 	count++;
                                 	if (count == 4){
                                 		%> </tr><tr> <%
                                 	}
                                 } 
                         		
                         		break;}}break;}}}}
     stmt.close();
     con.close();
 } catch(SQLException e) { 
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %> </tr><%%></table><%
     
    %>
   <a href = "#top"> Back to top</a> <br>
 
 <% /*
 String loadAddress(){
	 try {
	     
	     java.sql.Connection con; 
	 		Class.forName("com.mysql.jdbc.Driver"); 

	 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + "search4houses" + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
	     
	 		
	     Statement stmt = con.createStatement();
	     
	     ResultSet rs = stmt.executeQuery("SELECT * FROM Addresses");

	 String street = rs.getString("streetAddress");
		String city = rs.getString("city");
		String state = rs.getString("state");

		
		rs.close();
		 stmt.close();
	     con.close();
			return (street + " " + city+ ", "+ state);

	 } catch(SQLException e) { 
	     System.out.println("SQLException caught: " + e.getMessage()); 
	 }

	 
 } */
 
 %>

<% 



%>
</body>
</html>
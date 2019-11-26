<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> 


</script>
  <link rel="stylesheet" href="style.css">

	<style>
		
	</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script >
function setMainPhoto(a){
	
	document.getElementById("mainPhoto").src = a;
	alert("testing");

}
</script>

<jsp:include page="navBar.jsp" />

	


	<% String db = "search4houses"; %>








</head>
<body>
<div class = "row"><div class="column">





<%
 String listing_id = request.getParameter("listing");
 //out.println(listing_id);  
 
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     Statement stmt1 = con.createStatement();
     Statement stmt2 = con.createStatement();
     Statement stmt3 = con.createStatement();
     
     

     ResultSet rs = stmt.executeQuery("SELECT * FROM search4houses.Listings WHERE listingID="+listing_id);
    
    
     ResultSet rs5 = stmt1.executeQuery("SELECT * FROM search4houses.Photos,search4houses.Listings_Photos WHERE photoID=photo_id AND listing_id ="+listing_id);
     //rs1.first();
     //out.println(rs5);
     if (rs5.next() == true){
     	String photoID = rs5.getString("photoID");
         	String URL = rs5.getString("photoURL")+".jpg";
         	//out.println(URL);
         	%><div class = "container" style="padding-left: 2%; padding-top: 10px"> <img id="mainPhoto" src="img/<%out.println(URL);%>" height="450" width="650">  <button class="btn" id ="button">♡</button>
     
         	
         	</div>
     
         	<%


     	
     } %> <br><%
    
    
    
     while(rs.next()){
      	String listingID = rs.getString("listingID");
      	//out.println(theZip + zipCode);
      	//if (listingID.equals(listing_id)) {
      		
      		
    		 %> <br><%
      		
      		
           %></div> <div class = "column"><%

      		
      		
           	 
           			 
            	//out.println("listingID: " + listingID);%> <br><h1><% 
            	String price = rs.getString("price");
            	out.println("$" + price + "/month");%></h1> <br> <h3><% 
            	
            	
               
            	
            	ResultSet rs2 = stmt3.executeQuery("SELECT * FROM search4houses.Addresses, search4houses.Listing_Address WHERE addrID=addr_id AND listing_id="+listing_id);
           	 while(rs2.next()){
           	      	//out.println(theZip + zipCode);
           	
       		String street = rs2.getString("streetAddress");
       		String city = rs2.getString("city");
       		String state = rs2.getString("state");

       		out.println(street + " " + city+ ", "+ state);
           	      	}
            	%></h3> <br><% 

            	%><b><%out.println("Bedroom(s): ");%></b><%
            	out.println(rs.getString("roomNum"));

            	%><br><b><%out.println("Bathroom(s): ");%></b><%
            	out.println(rs.getString("bathroomNum"));
            	
            	%><br><b><%out.println("Lease length: ");%></b><%
            	out.println(rs.getString("leaseTimeframe") +" months");
            	            	
            	%><br><b><%out.println("Information: ");%></b><%
            	out.println(rs.getString("description"));
            	%> <br><br><% 
            	
            	
            	
                //rs1.first();
                //out.println(rs5);
                 %> <br><%
            	
            	
            	
            	
      	}
      	


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
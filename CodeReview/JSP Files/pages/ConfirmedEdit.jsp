<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
<head>
<meta charset="UTF-8">
<title>search4House</title>

<script>


</script>


<style>
#buttonColor {
background-color: #ff6363;
  color: white;
    width: 300px;
    height: 40px;
    font-size:16px;
}






</style>

</head>
<body>

<jsp:include page="navBar.jsp" />


 
	<%
 


	 
 
 
 
 
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     

 
    Statement stmt = con.createStatement();
	

    if (request.getParameter("listID") != "" && request.getParameter("contactName") != "" && request.getParameter("email") != "" &&  
    		request.getParameter("phoneNum") != ""  && request.getParameter("street") != "" &&  request.getParameter("city") != "" && 
    		request.getParameter("state") != "" && request.getParameter("zipcode") != "" && request.getParameter("price") != "" && 
    		request.getParameter("bedrooms") != "" && request.getParameter("bathrooms") != "" && request.getParameter("lease") != "" && 
    		request.getParameter("roomType") != ""){
    	
    
    	String listID = request.getParameter("listID");
	    //out.println("listID" + listID);
	    
	    String contactName = request.getParameter("contactName");
	    String email = request.getParameter("email");
	    String phoneNum = request.getParameter("phoneNum");
	    

	    
 	   // out.println(contactName);
 	    %><br><%
	   // out.println(email);
	    %><br><%
 	   // out.println(phoneNum);
	    
	    String  street = request.getParameter("street");
	    //out.println(street);
	    
	   String  city = request.getParameter("city");
    //out.println(city);
	  String  state = request.getParameter("state");
	   // out.println(state);
		  String  zipcode = request.getParameter("zipcode");
	    //out.println(zipcode);
	    
		  String price = request.getParameter("price");
		   // out.println("$"+price +"/month");
		String bedrooms = request.getParameter("bedrooms");
		  //  out.println(bedrooms+" bedroom(s)");
		String bathrooms = request.getParameter("bathrooms");
		   // out.println(bathrooms+" bathroom(s)");
		    String lease = request.getParameter("lease");
		   // out.println(lease+" month(s)");

			String roomType = request.getParameter("roomType");
		    			String info = request.getParameter("info");
		    			if (info == "" || info == null){
		    				info = "No additional information.";
		    			}

		   // out.println(info);


		    
		    //Listings
		   stmt.executeUpdate("UPDATE search4houses.Listings SET roomType= '"+roomType+"', price='"+price+"', leaseTimeFrame='"+lease+"', roomNum='"+bedrooms+"',bathroomNum='"+bathrooms+"', description='"+info+"' WHERE listingID = "+listID+";"); 
		  
		   String userID = (String)session.getAttribute("userID");
		   Statement stmt1 = con.createStatement();

		    
		    
		    //Address
Statement stmt3 = con.createStatement();
			
		    ResultSet rs3 = stmt3.executeQuery("SELECT addr_id FROM search4houses.Listing_Address WHERE listing_id = "+listID+";"); 		   
		    if (rs3.next()==true){

		    	 int addrID = Integer.parseInt(rs3.getString("addr_id"));		        
		        Statement stmt4 = con.createStatement();
				stmt4.executeUpdate("UPDATE search4houses.Addresses SET streetAddress = '"+street+"', city='"+city+"',state='"+state+"',zipCode='"+zipcode+"' WHERE addrID = "+addrID+";");
				   System.out.println("zipcode : "+zipcode);
				   
				   stmt4.close();


		    }
			  
		    
		    
		  //Additional Contact
		    Statement stmt4 = con.createStatement();
		    			
		    		    ResultSet rs4 = stmt4.executeQuery("SELECT contactAccID FROM search4houses.AdditionalContacts ORDER BY contactAccID DESC LIMIT 1;"); 		   
		    		    if (rs4.next()==true){

		    		    	 int contactID = Integer.parseInt(rs4.getString("contactAccID"));
		    		    	 int newGeneratedContactID = contactID+1;
		    		        Statement stmt7 = con.createStatement();
			    			
			    		    ResultSet rs7 = stmt7.executeQuery("SELECT contactAccID FROM search4houses.AdditionalContacts WHERE email='"+email+"' AND phoneNum='"+phoneNum+"' AND name='"+contactName+"';"); 		   
			    		    if (rs7.next()!=true){
			    		    	Statement stmt5 = con.createStatement();
			    				   stmt5.executeUpdate("INSERT INTO search4houses.AdditionalContacts (contactAccID, phoneNum, email, name) VALUES ("+newGeneratedContactID+", '"+phoneNum+"', '"+email+"', '"+contactName+"');");
			    				   stmt5.close();
			    				  

			    		    } 
			    		    	 Statement stmt6= con.createStatement();
			    				   stmt6.executeUpdate("UPDATE search4houses.Listings_AdditionalContact SET addContact_id = '"+contactID+"' WHERE listing_id = "+listID+";");
			    				    
			    				   
			    				    stmt6.close();
			    		   
		    				    stmt7.close();


		    		    }
		    		    
		    		   

		    stmt.close();
		    stmt1.close();
		    stmt3.close();
		    stmt4.close();
		    
		    String redirectURL = "Listing.jsp?listing="+listID;
			  
			 %>
			  <div class="addListTitle"  style="position: absolute; align: center; padding-right:30%; padding-left:30%;">
			  Listing successfully updated!<br>
			  <small>You will be redirected in 3 seconds...</small>
			  </div>
			          <meta http-equiv="refresh" content="3;url=<%out.println(redirectURL);%>" />
			          
			          <%   
    }
    


 
 stmt.close();



 con.close();
 
 
 //String confirmed = "window.location.href = 'Listing.jsp?listing="+fefw+"'";

 
//  <br><br><input type="button" name="submitBtn" id="buttonColor" onclick="<%out.println(confirmed);" value="Confirm">


} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage()); 
	 } %>
	 


	  



	
</body>
</html>

   
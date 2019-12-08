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
	 if (session == null || session.getAttribute("userID") == null) {
		 
		 %> 
		 
		  <div class="addListTitle"  style="position: absolute; align: center; padding-right:30%; padding-left:30%;">
		  Log in required to do this action<br>
		  <small>You will be redirected in 3 seconds...</small>
		  </div>
		          <meta http-equiv="refresh" content="3;url=Register.jsp" />
		  



		<%

	 } else {
 
 String db = "search4houses";
 String userID = session.getAttribute("userID").toString();
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     

 
    Statement stmt = con.createStatement();
	

    if (request.getParameter("listID") != ""){
    	String listID= request.getParameter("listID");
    	
    	
    	
        ResultSet rs = stmt.executeQuery("SELECT * FROM search4houses.Favorites, search4houses.User_Favorites WHERE user_id ='"+userID+"' AND listID=list_id;"); 
        
       
        
        if (rs.next()==true){
        	String userListID = rs.getString("listID");
        	 if (rs.getString("listing1ID")==null){
        	stmt.executeUpdate("UPDATE search4houses.Favorites SET listing1ID= '"+listID+"' WHERE listID = "+userListID+";");
			   stmt.close();
           	System.out.println("2");

        	} else if (rs.getString("listing2ID")==null){
            	stmt.executeUpdate("UPDATE search4houses.Favorites SET listing2ID= '"+listID+"' WHERE listID = "+userListID+";");
 			   stmt.close();
           	System.out.println("3");

         	}else if (rs.getString("listing3ID")==null){
            	stmt.executeUpdate("UPDATE search4houses.Favorites SET listing3ID= '"+listID+"' WHERE listID = "+userListID+";");
 			   stmt.close();
           	System.out.println("4");

         	}else if (rs.getString("listing4ID")==null){
            	stmt.executeUpdate("UPDATE search4houses.Favorites SET listing4ID= '"+listID+"' WHERE listID = "+userListID+";");
 			   stmt.close();
           	System.out.println("5");

         	}else if (rs.getString("listing5ID")==null || (rs.getString("listing5ID")!=null && rs.getString("listing1ID")!=null)){
            	stmt.executeUpdate("UPDATE search4houses.Favorites SET listing5ID= '"+listID+"' WHERE listID = "+userListID+";");
 			   stmt.close();
           	System.out.println("6");

         	}
        	 
 		    String redirectURL = "Listing.jsp?listing="+listID;
		    
			  
 			 %>
 			  <div class="addListTitle"  style="position: absolute; align: center; padding-right:30%; padding-left:30%;">
 			  Listing successfully added to Favorites!<br>
 			  <small>You will be redirected in 2 seconds...</small>
 			  </div>
					<script>
					        setTimeout("window.history.go(-1)",2000);
					</script>
 			          
 			          <%   
        	
        }
    
    	

		    stmt.close();
		    

    }
    


 
 stmt.close();



 con.close();
 
 
 //String confirmed = "window.location.href = 'Listing.jsp?listing="+newGeneratedID+"'";

 
//  <br><br><input type="button" name="submitBtn" id="buttonColor" onclick="<%out.println(confirmed);" value="Confirm">


} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage()); 
	 } 
	 }%>
	 


	  



	
</body>
</html>
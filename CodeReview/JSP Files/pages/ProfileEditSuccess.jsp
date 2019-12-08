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

	

  
    

	
    
	String redirectURL = "";
    if (request.getParameter("password") != null ||request.getParameter("name") != null || request.getParameter("email") != null ||  
    		request.getParameter("phoneNum") != null){
    	
    
	   // out.println(newGeneratedID);
	   
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String name = request.getParameter("name");
	    String phoneNum = request.getParameter("phoneNum");
 		String sessionUserID=(String)session.getAttribute("userID"); 
 		redirectURL = "Profile.jsp?userID="+sessionUserID;
	    Statement stmt2 = con.createStatement();
	    //update Account
			 if(password != "")
			 {
		   		stmt2.executeUpdate("UPDATE search4houses.accounts SET search4houses.accounts.password = '" + password + "' WHERE search4houses.accounts.accID = " + sessionUserID); 
				  
			 }
			 if(email != "")
			 {
		   		stmt2.executeUpdate("UPDATE search4houses.accounts SET search4houses.accounts.email = '" + email + "' WHERE search4houses.accounts.accID = " + sessionUserID); 
			 }
			 if(name != "")
			 {
		   		stmt2.executeUpdate("UPDATE search4houses.accounts SET search4houses.accounts.fullName = '" + name + "' WHERE search4houses.accounts.accID = " + sessionUserID);
			 }
			 if(phoneNum != "")
			 {
		   		stmt2.executeUpdate("UPDATE search4houses.accounts SET search4houses.accounts.phoneNum = '" + phoneNum + "' WHERE search4houses.accounts.accID = " + sessionUserID); 
			 }
			 
		    
		  //Additional Contact
		    Statement stmt1 = con.createStatement();
		    		       
		    				    


		    				    stmt1.close();
		    				    stmt2.close();


		    		    
		    
		    
		   

		    
		    }

		    stmt.close();
		   
		    
			  
		
    


 

    stmt.close();



 con.close();
 
 
 //String confirmed = "window.location.href = 'Listing.jsp?listing="+newGeneratedID+"'";

 
//  <br><br><input type="button" name="submitBtn" id="buttonColor" onclick="<%out.println(confirmed);" value="Confirm">
%>       
	<div class="col-3" style="margin-left:40%; margin-right:5%; ">
	<label class="addListTitle">Profile Edit Success!</label> <br>
	<small>You will be redirected in 3 seconds...</small>
		  </div>
		          <meta http-equiv="refresh" content="3;url=<%out.println(redirectURL);%>" />
		          <%


} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage()); 
	 } %>
</body>
</html>
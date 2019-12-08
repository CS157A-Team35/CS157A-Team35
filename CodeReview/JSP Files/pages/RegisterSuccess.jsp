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
	
    ResultSet rs = stmt.executeQuery("SELECT accID FROM search4houses.Accounts ORDER BY accID DESC LIMIT 1;"); 
    
   
    int userID = 0;
    if (rs.next()==true){
    	
    	  userID = Integer.parseInt(rs.getString("accID"));
         userID = userID+1;
         
		    

    }
	String newUserID = Integer.toString(userID);
	System.out.println(newUserID);

    

    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String phoneNum = request.getParameter("phoneNum");
    

    if (request.getParameter("username") != null ||request.getParameter("password") != null ||request.getParameter("name") != null || request.getParameter("email") != null ||  
    		request.getParameter("phoneNum") != null){
    	System.out.println("fefef");

    	
    
	   // out.println(newGeneratedID);


			  
	    //Accounts
	        Statement stmt2 = con.createStatement();
		   stmt2.executeUpdate("INSERT INTO search4houses.Accounts (accID, username, password, fullName, email, phoneNum) VALUES ('"+newUserID+"','"+username+"','"+password+"','"+name+"','"+email+"','"+phoneNum+"');"); 
		  

		   //session.setAttribute("userID",userID); 
		   //session.setAttribute("username",username); 
		  
		    	System.out.println("bofefeb");

		    	
		    	//Favorites
		    	Statement stmt5 = con.createStatement();
				   stmt5.executeUpdate("INSERT INTO search4houses.Favorites (listID) VALUES ("+newUserID+");");
				   stmt5.close();
				   
				   Statement stmt6 = con.createStatement();
				   stmt6.executeUpdate("INSERT INTO search4houses.User_Favorites (user_id, list_id) VALUES ("+newUserID+", "+newUserID+");");
				   stmt6.close();

		    
		 

		    stmt.close();
		   
		    
			  
		
    }


 

    stmt.close();



 con.close();
 
 
 //String confirmed = "window.location.href = 'Listing.jsp?listing="+newGeneratedID+"'";

     String redirectURL = "LogIn.jsp";

//  <br><br><input type="button" name="submitBtn" id="buttonColor" onclick="<%out.println(confirmed);" value="Confirm">
%>       
	<div class="col-3" style="margin-left:40%; margin-right:5%; ">
	<label class="addListTitle">Registration Success!</label> <br>
	<small>You will be redirected in 3 seconds...</small>
		  </div>
		          <meta http-equiv="refresh" content="3;url=<%out.println(redirectURL);%>" />
		          <%


} catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage()); 
	 } %>
	 


	
	



	
</body>
</html>
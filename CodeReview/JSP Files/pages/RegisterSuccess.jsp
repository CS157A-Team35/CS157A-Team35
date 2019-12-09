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
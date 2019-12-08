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
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();     
     
     
     
     %> 
     
      <form name = "newUser" action="RegisterSuccess.jsp" style="margin-left:5%; margin-right:5%" method="POST" onSubmit="" autocomplete="on">
	<div class="form-group" style="padding-right:20%; padding-left:20%;"><fieldset style="padding:15px;">
	
	<legend style ="font-size:24px;color: #ff6363; padding-top: 10px;">New User Registration</legend>
	<b> Username:</b> <br>
        <input type="text" class="form-control" name="username" id="username" size=50 required placeholder="Username"/> <br>
        <b> Full name:</b> <br>
        <input type="text" class="form-control" name="name" id="name" size=50 required placeholder="Full Name"/> <br>
      <b> Password:</b> <br>
        <input type="password" class="form-control" name="password" id="password" size=30 required placeholder="Password"/> <br>
        <b> Email Address:</b> <br>
        <input type="email" class="form-control" name="email" id="email" size=60 required placeholder="123@abc.com"/> <br>  
       <b> Phone Number:</b> <br>
        <input type="tel" class="form-control" name="phoneNum" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" id="phoneNum" size=30 required placeholder="123-456-7890"/>

       </fieldset>	  </div>
       
       
       <div style="position: relative; align: center;padding-right:20%; padding-left:20%;">
       <div class="col-6">
   <button type="submit" id="buttonColor" name="submitButton" style="position: absolute;"  onclick="">Sign Up</button>
    </div>
    
    <div class="col-6">
    <button type="button" id="buttonColor" name=""   style="position: absolute;"  onclick="location.href='LogIn.jsp';">Log In</button>
       <br>
    
    </div>
    
     <div class="col-6">
     
     <%
     Statement stmt1 = con.createStatement();     

     if (request.getParameter("username") != null && request.getParameter("email")!=null){

     String aUsername = request.getParameter("username");
 // System.out.println(aUsername);

  String aEmail = request.getParameter("email");  
 // System.out.println(aPassword);
  ResultSet rs = stmt.executeQuery("SELECT * FROM search4houses.Accounts WHERE username='"+aUsername+"';"); 
  ResultSet rs1 = stmt1.executeQuery("SELECT * FROM search4houses.Accounts WHERE email='"+aEmail+"';"); 
  
  
  boolean res = rs.next();
  boolean res1 = rs1.next();
  
  if (res==false && res1==false){
 // System.out.println(userID);
 
  

  //System.out.println("hefefei");

  response.sendRedirect("RegisterSuccess.jsp"); 
  } else{
	 // System.out.println("hadi");
	 // System.out.println(rs.getString("email"));
	 // System.out.println(rs.getString("username"));
	 // System.out.println(aUsername);
	 // System.out.println(aEmail);
	  
  	//System.out.println("fefefef");


	   if (res==true && res1==true){
		  // System.out.println("hib");

		   %>
			<span id="hint" class="error text-danger"  ><small>Both username and email are already in use</small></span>
			
			<%
		   
	   }
	   else if (res==true){
		   System.out.println("hic");

		   %>
			<span id="hint" class="error text-danger"  ><small>Username is already in use</small></span>
			
			<%
			} else if (res1==true){
				  System.out.println("hia");

		   %>
			<span id="hint" class="error text-danger"  ><small>Email is already in use</small></span>
			
			<%	   }
  }
     }
     stmt.close();
     con.close();
     } catch(SQLException e) {
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %>

</div>
     <div class="col-4">
<label for="registered" style="padding-left: 25%;"><small>Already have an Account?</small></label>

</div>



</div>
</form>
</body>
</html>
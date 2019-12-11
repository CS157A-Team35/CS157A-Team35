<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
        <%@ page import = "java.util.*" %>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">

<head>
<meta charset="UTF-8">
<title>Search4House</title>

<script>


</script>


<style>

.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }


</style>

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
 
 }
 else{
	 
	 String db = "search4houses";
	 String user;
	 String addressID;
	 String fullName = null;
	 String email = null;
	 String phoneNum = null;
	 String userName=(String)session.getAttribute("username");
	 try {
	     
	     java.sql.Connection con; 
	 		Class.forName("com.mysql.jdbc.Driver"); 
	
	 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");

	 		String userID=(String)session.getAttribute("userID"); 
	 		 		
	     Statement stmt = con.createStatement();
	     ResultSet rs = stmt.executeQuery("SELECT * FROM search4houses.accounts WHERE search4houses.accounts.accID = " + userID); 
	    
	   	while(rs.next())
	   	{
	     fullName=rs.getString("fullname");
	     email = rs.getString("email");
	     phoneNum = rs.getString("phoneNum");
	   	}

 
%>  

		<p style="margin-left: 40px"><font size = "5"><%=fullName%></font></p>
	
	<p style="margin-left: 40px"><button onClick = "location.href='ProfileEdit.jsp'" type = button >Edit Profile</button></p>
	<p style="margin-left: 40px"><button onClick = "location.href='ProfileListingGroup.jsp'" type = button >View Your Listings</button></p>
	
	
	
	
	<br>
	<br>
	<br>
	<div>
	<table>
	<table class = "center" border = "0" width  = "50%" style= "background-color:white">
		<thead>
			<tr>
				<td colspan  = "4"></td>
			</tr>
		</thead>
		<tr>
			<td><p style="margin-left: 40px">Username:</p></td><td><p style="margin-left: 40px"><%=userName%></p></td>
		</tr>
		<tr> 
			<td><p style="margin-left: 40px">Email:</p></td><td><p style="margin-left: 40px"><%=email%></p></td>
		</tr>
		<tr>
			<td><p style="margin-left: 40px">Phone Number:</p></td><td><p style="margin-left: 40px"><%=phoneNum%></p></td>
		</tr>
		
	</table>
	</div>
	
	<br>
	<br>
	<br>

	
	<div class = "menuBottom" align  = "center" style = "position: fixed; bottom: 10%; left: 45%; text-decoration: none; color: white">
	<a href  = "index.jsp" style="text-decoration: none; color: white"><strong>Home</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: white"><strong>Favorites List</strong></a>
	</div>
	<%
	stmt.close();
    con.close();
    } catch(SQLException e) {
    out.println("SQLException caught: " + e.getMessage()); 
	}}
	%>
	
	</body>
	
</html>
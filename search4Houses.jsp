<%@ page import="java.sql.*"%>
<html>
  <head>
    <title>Search4House</title>
    </head>
  <body>
    <h1>Search4House</h1>
    
    <table border="1">
      <tr>
        <td>TypeOf</td>
        <td>numOfRoom</td>
        <td>numOfBath</td>
        <td>price</td>
        <td>leaseLength</td>
        <td>Location</td>
        <td>owner</td>
   </tr>
    <% 
     String db = "search4houses";
        String user; // assumes database name is the same as username
         // user = "root";
        //String password = "newpassword";
        try {
            
            java.sql.Connection con; 
           // Class.forName("com.mysql.cj.jdbc.Driver");
     		Class.forName("com.mysql.jdbc.Driver"); 

     		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");

           // con = DriverManager.getConnection("jdbc:mysql://localhost:3306/search4houses?serverTimezone=EST5EDT",user, password);
            out.println(db + " database successfully opened.<br/><br/>");
            
            out.println("Initial entries in table \"listing\": <br/>");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM listing");
            while(rs.next())
			{	
				//System.out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getFloat(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7));
             	%>	
          		<tr>
          		<td><%out.println(rs.getString(1)); 
          		//removing the "out.println" will not print it onto the web page%></td>
          		<td><%out.println(rs.getInt(2)); %></td>
          		<td><%out.println(rs.getFloat(3)); %></td>
          		<td><%out.println(rs.getInt(4)); %></td>
          		<td><%out.println(rs.getString(5)); %></td>
          		<td><%out.println(rs.getString(6)); %></td>
          		<td><%out.println(rs.getString(7)); %></td>



          		</tr>
         
            <%
			}
            rs.close();
            stmt.close();
            con.close();
        } catch(SQLException e) { 
            out.println("SQLException caught: " + e.getMessage()); 
        }
    %>
  </body>
</html>

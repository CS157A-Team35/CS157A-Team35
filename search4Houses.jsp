<%@ page import="java.sql.*"%>
<html>
  <head>
    <title>JDBC Connection example</title>
    </head>
  <body>
    <h1>JDBC Connection example</h1>
    
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
          user = "root";
        String password = "FuukaYamagishi1337";
        try {
            
            java.sql.Connection con; 
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/search4houses?serverTimezone=EST5EDT",user, password);
            out.println(db + " database successfully opened.<br/><br/>");
            
            out.println("Initial entries in table \"listing\": <br/>");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM listing");
            while(rs.next())
			{	
				System.out.println(rs.getString(1)+" "+rs.getInt(2)+" "+rs.getFloat(3)+" "+rs.getInt(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7));
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

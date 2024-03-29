<%@ page import="java.sql.*"%>
<html>
  <head>
    <title>Search4House</title>
    </head>
  <body>
    <h1>Search4House</h1>
    

    <% 
     String db = "search4houses";
        String user; // assumes database name is the same as username
         // user = "root";
        //String password = "newpassword";
        try {
            
            java.sql.Connection con; 
           // Class.forName("com.mysql.cj.jdbc.Driver");
     		Class.forName("com.mysql.jdbc.Driver"); 

     		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","root");

           // con = DriverManager.getConnection("jdbc:mysql://localhost:3306/search4houses?serverTimezone=EST5EDT",user, password);
            out.println(db + " database successfully opened.<br/><br/>");
            
            out.println("List of Accounts: \"Accounts\": <br/>");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Accounts");
            %>     <table border="1">
			<tr> <td> accID </td> <td> username </td> <td> password </td> <td> fullName </td> <td> profilePicURL </td> <td> email </td> <td> phoneNum </td> 
			</tr> <%
            while(rs.next())
			{	%><tr><% for (int x = 1; x<=7; x++)
            	{ %>
            	
              		<td><%out.println(rs.getObject(x)); }}%> </td>
              		</tr> </table><%
			
            
              		
              		
            out.println("List of all Listings: \"Listings\": <br/>");
              		rs = stmt.executeQuery("SELECT * FROM Listings");
            //stmt.executeUpdate("INSERT INTO Listings (listingID, userID, location, roomType, price, leaseTimeframe, roomNum, bathroomNum, description, photosID) " +"VALUES ('2', '10', 22)");    	
            %> <table border="1"> <tr> <td> listingID </td> <td> userID </td> <td> location </td> <td> roomType </td> <td> price </td> <td> leaseTimeframe </td> <td> roomNum </td> <td> bathroomNum </td> <td> description </td> <td> photosID </td></tr> 
			<%
            while(rs.next())
            {	%><tr><% for (int x = 1; x<= 10; x++)
            	{ %>
              		<td><%out.println(rs.getObject(x)); }}%> </td></tr> </table><%
            
            
            
                    
                    
                    out.println("List of all Photos: \"Photos\": <br/>");
                            rs = stmt.executeQuery("SELECT * FROM Photos");
                            //stmt.executeUpdate("INSERT INTO Listings (listingID, userID, location, roomType, price, leaseTimeframe, roomNum, bathroomNum, description, photosID) " +"VALUES ('2', '10', 22)");    	
                            %> <table border="1"> <tr> <td> photoID </td> <td> photoURL </td> <td> listingID </td></tr>  <% 
                            while(rs.next())
                            {	              		
                            	%><tr><% for (int x = 1; x<= 3; x++)
                            	{ %>
                              		<td><%out.println(rs.getObject(x)); }}%> </td></tr> </table><%
                			
                    
                            out.println("List of all Favorite Lists: \"Favorites\": <br/>");
                              		rs = stmt.executeQuery("SELECT * FROM Favorites");
                                    //stmt.executeUpdate("INSERT INTO Listings (listingID, userID, location, roomType, price, leaseTimeframe, roomNum, bathroomNum, description, photosID) " +"VALUES ('2', '10', 22)");    	
                                    
                                    
 %> <table border="1"> <tr> <td> listID </td> <td> listingID </td> <td> accID </td></tr> <%
                            while(rs.next())
                                    {	
                                    %><tr><% for (int x = 1; x<= 3; x++)
                                    	{ %>
                                      		<td><%out.println(rs.getObject(x));}}%> </td></tr></table><% 

                    
                    
                    
                                    out.println("List of all Addition Contacts: \"AdditionalContacts\": <br/>");
                                      		rs = stmt.executeQuery("SELECT * FROM AdditionalContacts");
                                            //stmt.executeUpdate("INSERT INTO Listings (listingID, userID, location, roomType, price, leaseTimeframe, roomNum, bathroomNum, description, photosID) " +"VALUES ('2', '10', 22)");    	
                                            
                                            
         %> <table border="1"> <tr> <td> contactAccID </td> <td> phoneNum </td> <td> email </td> <td>name</td><td>listingID</td></tr> <%
                                    while(rs.next())
                                            {	
                                            %><tr><% for (int x = 1; x<= 5; x++)
                                            	{ %>
                                              		<td><%out.println(rs.getObject(x));}}%> </td></tr></table><% 

                            
                            
                            
                    
            rs.close();
            stmt.close();
            con.close();
        } catch(SQLException e) { 
            out.println("SQLException caught: " + e.getMessage()); 
        }
    %>
  </body>
</html>

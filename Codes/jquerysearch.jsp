<%-- 
    Document   : jqueryserach
    Created on : 18 Jan, 2019, 12:04:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>

        
     <!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://jqueryui.com/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    var availableTags = [
      <% 
         try
                {  
                    Class.forName("com.mysql.jdbc.Driver");  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fymscit","root","");  
                    //here sonoo is database name, root is username and password  
                    Statement stmt=con.createStatement();  
                    ResultSet rs=stmt.executeQuery("select * from students");  
                    
            
       
                    while(rs.next())
                    {
                        out.print("'"+rs.getString(2)+"',");  
                    }
                    
                    con.close();  
                }
                catch(Exception e)
                { 
                    out.println(e);  
                }  
      %>
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  $( function() {
    $( "#accordion" ).accordion();
  } );
  </script>
  
</head>
<body>
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input id="tags">
</div>
 <div id="accordion">
     <% try
                {  
                    Class.forName("com.mysql.jdbc.Driver");  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fymscit","root","");  
                    //here sonoo is database name, root is username and password  
                    Statement stmt=con.createStatement();  
                    ResultSet rs=stmt.executeQuery("select * from programs");  
                    
            
       
                    while(rs.next())
                    {
                        out.print("<h3>"+rs.getString(2)+"</h3>"
                                + "<div>"
                                + "<p>This is " +rs.getString(2) + ""
                                + "</p> "
                                + "</div>");  
                    }
                    
                    con.close();  
                }
                catch(Exception e)
                { 
                    out.println(e);  
                }  
     %>
  
  
</div>
 
</body>
</html>

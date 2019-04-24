<%-- 
    Document   : viewData
    Created on : 8 Jan, 2019, 11:32:04 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String a,b;
            a = request.getParameter("id");
           
            
         
               try
                {  
                    Class.forName("com.mysql.jdbc.Driver");  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fymscit","root","");  
                    //here sonoo is database name, root is username and password  
                    Statement stmt=con.createStatement();  
                    int c = stmt.executeUpdate("delete from `students` where sid="+a+"");  
                   if(c==1)
                   {
                       out.print("Deleted Successfully");
                   }
                   else
                   {
                       out.print("Error");
                   }
                    con.close();
                    
                }
                catch(Exception e)
                { 
                    out.println(e);  
                }  
               

         %>
    </body>
</html>

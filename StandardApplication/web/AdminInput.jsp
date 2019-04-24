<%-- 
    Document   : AdminInput
    Created on : Apr 23, 2019, 8:17:04 AM
    Author     : Harsh Mehta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           
            String id = request.getParameter("id");
            String marks = request.getParameter("marks");
            String update = request.getParameter("update");
            try{ 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh","root","");
            
                Statement insertValue = con.createStatement();
                
                int flag = 0;
             
                flag = insertValue.executeUpdate("INSERT INTO `student_marks`(`id`, `marks`) VALUES ('"+ id +"', '" + marks + "')");
                
                if(flag == 1){
                    out.println("Saved");
                }
                
            } catch (Exception e){
           
               out.println(e);
               
            }

        %>
    </body>
</html>

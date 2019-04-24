<%-- 
    Document   : editData
    Created on : Apr 23, 2019, 8:05:44 PM
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
        <form action="editData.jsp" method="POST">
            
            Enter Marks<input type="text" name="marks">
            <br><input type="submit" value="Update Details">
        </form>
        
        <% 
            String id = request.getParameter("");
            
            try{ 
               
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh", "harsh", "");
            
                Statement update = con.createStatement();
                int flag = 0;
                flag = update.executeUpdate("UPDATE `student_marks` SET `marks`=[value-2] WHERE 1");
           } catch(Exception e){
                out.print(e);
           
           }
            
            
        %>
    </body>
</html>

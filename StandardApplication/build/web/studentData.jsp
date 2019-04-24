<%-- 
    Document   : studentData
    Created on : Apr 24, 2019, 9:32:35 AM
    Author     : Harsh Mehta
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@ include file="LoginInclude.jsp"  %>
       
       <% 
            String id = request.getParameter("id");
           
            try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con;
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh", "root", "");
                    
                    Statement getData = con.createStatement();
                    ResultSet rs = getData.executeQuery("select * from student_marks where id='"+ id +"'");
                    while(rs.next()){
                         out.println(
                            "       ID :   " + rs.getString(1) +
                            "       Name : " + rs.getString(2)

                    );
                    
                    }
                    
            } catch (Exception e){
                out.println(e);
            }
       
       %>
    </body>
</html>

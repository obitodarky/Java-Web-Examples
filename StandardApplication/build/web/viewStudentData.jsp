<%-- 
    Document   : viewStudentData
    Created on : Apr 23, 2019, 7:49:28 PM
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
        <%@include file="LoginInclude.jsp"%>
        <% 
            int count=0;
            try{
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con;
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/harsh","root","");
                Statement viewStudentData = con.createStatement();
                ResultSet rs = viewStudentData.executeQuery("select * from student_marks");
                
                while(rs.next()){
                    out.println(
                            "       ID :   " + rs.getString(1) +
                            "       Name : " + rs.getString(2) +
                            "       <a href='editData.jsp?id="+ rs.getString(1) +"'>Edit</a>"        
                            + "<br>"
                    );
                    count++;
                }
                
                if(count==0){
                    out.println("No such user");
                }
                con.close();
                
            } catch (Exception e){
            
                out.println(e);
            }
        
        %>
    </body>
</html>

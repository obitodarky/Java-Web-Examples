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
         
                try
                {  
                    Class.forName("com.mysql.jdbc.Driver");  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fymscit","root","");  
                    //here sonoo is database name, root is username and password  
                    Statement stmt=con.createStatement();  
                    ResultSet rs=stmt.executeQuery("select * from students");  
                    out.println("<table width='500px' border='1' align='center'>"
                            + "<tr>"
                            + ""
                            + " <td align='center'><b>Sr. No.</b></td>"
                            + "<td><b>Name of Student</b></td>"
                            + "<td align='center'><b>View</b></td><td align='center'><b>Update</b></td>"
                            + "<td align='center'><b>Delete</b></td></tr>");
            
       
                    while(rs.next())
                    {
                        out.print("<tr ><td align='center'>"+rs.getInt(1)+"</td>"
                                + "<td >"+rs.getString(2)+"</td>"
                                + "<td align='center'><a href='updateData.jsp?id="+rs.getInt(1)+"'><b>View</b></a></td><td align='center'><a href='updateData.jsp?id="+rs.getInt(1)+"'><b>Update</b></a></td>"
                                + "<td align='center'><a href='deleteData.jsp?id="+rs.getInt(1)+"'><b>Delete</b></a></td> </tr>");
                     // out.println("<br>"+rs.getInt(1)+" -> "+rs.getString(2));  
                    }
                    out.print("</table>");
                    con.close();  
                }
                catch(Exception e)
                { 
                    out.println(e);  
                }  

         %>
    </body>
</html>

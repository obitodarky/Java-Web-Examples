<%-- 
    Document   : studentLogin
    Created on : Apr 24, 2019, 9:44:11 AM
    Author     : Harsh Mehta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="LoginInclude.jsp"  %>
        <form action="studentData.jsp" method="POST">
            
            ID: <input type="text" name="id"/>
                <input type="Submit" value="show marks">
            
        </form>
    </body>
</html>

<%-- 
    Document   : Logout
    Created on : Apr 24, 2019, 8:21:16 AM
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
        <% 
            session.invalidate();
            out.println("Logged out");
        
        %>
    </body>
</html>

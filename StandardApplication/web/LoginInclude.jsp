<%-- 
    Document   : LoginInclude
    Created on : Apr 24, 2019, 8:15:37 AM
    Author     : Harsh Mehta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
Logged in as <% out.println(session.getAttribute("name")); %>
<a href="Logout.jsp">Logout</a>
<hr>

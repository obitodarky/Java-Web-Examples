<%-- 
    Document   : viewData
    Created on : 8 Jan, 2019, 11:32:04 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
    <head>
        <title>Practical 2</title>
        <style>
            .l1
            {
                font-size:17px;
            }
            .t1
            {
                height:30px;
                border-radius:3px;
                
            }
        </style>
        <script>
            function check()
            {
                var a,b;
               
               
                b = document.getElementById("txtname").value;
               
                if(b==="")
                {
                    
                    alert("Enter the Value of Name");
                    return false;
                }
                else
                {
                     document.getElementById("frmmain").submit();
                }
                
               
                
            }
        </script>
    </head>
    <body>
        <%
            String a,b="";
            int c=0;
            a = request.getParameter("id");
            
            try
                {  
                    Class.forName("com.mysql.jdbc.Driver");  
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fymscit","root","");  
                    //here sonoo is database name, root is username and password  
                    Statement stmt=con.createStatement();  
                    ResultSet rs=stmt.executeQuery("select * from students where sid="+ a +""); 
                    while(rs.next())
                    {
                        c = rs.getInt(1);
                        b = rs.getString(2);
                        
                    }
                     out.print("<form name='frmmain' action='saveData.jsp' method='get' id='frmmain'><input type='hidden' name='act' value='update'> ");
                               out.print("<input type='hidden' id='txtno' class='t1' name='txtno' value='"+c+"'>"
                                       + "<table align='center' width=400px>"
                                       + "<tr><td><div class='l1'>Enter Name</div></td><td><input type='text' id='txtname' class='t1' name='txtname' value='"+ b +"'></td>"
                                       + "</tr><tr><td></td><td><input type='button' id='btn_click' value='Update Details' onclick='check()'></td>"
                                       + " </tr> </table></form>"); 
                }
                catch(Exception e)
                { 
                    out.println(e);  
                }  
            %>
       
    </body>
</html>

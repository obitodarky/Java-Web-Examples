/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harsh Mehta
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            PrintWriter out = response.getWriter();
        
            String admin= request.getParameter("admin");
            String student= request.getParameter("student");
            
            if(admin==null){
                HttpSession session = request.getSession();
                session.setAttribute("name",student);
                response.sendRedirect("studentLogin.jsp");
                
            } else if(student==null){
                HttpSession session = request.getSession();
                session.setAttribute("name",admin);
                response.sendRedirect("AdminModule.html");
                
            }
    }
}

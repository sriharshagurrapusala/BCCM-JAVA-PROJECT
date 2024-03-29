package com.admin;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
public class AdminLogin extends HttpServlet {
	
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		AdminLoginDao dao=new AdminLoginDao();
		
		if(dao.check(uname,pass))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("adminfunctions.jsp");
			
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
		}
	}

}

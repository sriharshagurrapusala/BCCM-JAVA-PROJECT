package com.player;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerRegister
 */
public class PlayerRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname1=request.getParameter("pname1");
		String puname1=request.getParameter("puname1");
		String pass1=request.getParameter("pass1");
		String dob1=request.getParameter("dob1");
		String address1=request.getParameter("address1");
		String contact1=request.getParameter("contact1");
		String email1=request.getParameter("email1");
		
		PlayerInsertDao pidao=new PlayerInsertDao();
		if(pidao.insert(pname1,puname1,pass1,dob1,address1,contact1,email1))
		{
			response.sendRedirect("player.jsp");
		}
		else
		{
			response.sendRedirect("player.jsp");
		}
		
		
	}

}

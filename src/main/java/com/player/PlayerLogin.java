package com.player;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerLogin
 */
public class PlayerLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String puname1=request.getParameter("puname1");
		String pass1=request.getParameter("pass1");
		
		PlayerLoginDao pldao=new PlayerLoginDao();
		
		if(pldao.check(puname1, pass1))
		{
			HttpSession session=request.getSession();
			session.setAttribute("pusername", puname1);
			response.sendRedirect("playerfunctions.jsp");
		}
		else
		{
			response.sendRedirect("playerlogin.jsp");
		}
	}

}

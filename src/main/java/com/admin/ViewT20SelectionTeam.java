package com.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewT20SelectionTeam
 */
public class ViewT20SelectionTeam extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AdminViewPlayersDao avpdao=new AdminViewPlayersDao();
		List<AdminViewPlayersDao> t20playerslist=new ArrayList<>(avpdao.viewT20());
		
		if(t20playerslist !=null && !t20playerslist.isEmpty())
		{
			
			request.setAttribute("t20playersdetails",t20playerslist);
			
			System.out.println("T20 Players details: " + t20playerslist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("t20playersdisplay.jsp");
			System.out.println("t20 Player details: " + t20playerslist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("adminfunctions.jsp");
		}
	}

}

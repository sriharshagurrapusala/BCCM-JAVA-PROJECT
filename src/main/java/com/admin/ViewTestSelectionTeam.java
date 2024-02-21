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
public class ViewTestSelectionTeam extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AdminViewPlayersDao avpdao=new AdminViewPlayersDao();
		List<AdminViewPlayersDao> testplayerslist=new ArrayList<>(avpdao.viewTest());
		
		if(testplayerslist !=null && !testplayerslist.isEmpty())
		{
			
			request.setAttribute("testplayersdetails",testplayerslist);
			
			System.out.println("Test Players details: " + testplayerslist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("testplayersdisplay.jsp");
			System.out.println("Test Player details: " + testplayerslist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("adminfunctions.jsp");
		}
	}

}

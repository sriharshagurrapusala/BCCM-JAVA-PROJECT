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
public class ViewOdiSelectionTeam extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AdminViewPlayersDao avpdao=new AdminViewPlayersDao();
		List<AdminViewPlayersDao> odiplayerslist=new ArrayList<>(avpdao.viewOdi());
		
		if(odiplayerslist !=null && !odiplayerslist.isEmpty())
		{
			
			request.setAttribute("odiplayersdetails",odiplayerslist);
			
			System.out.println("Odi Players details: " + odiplayerslist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("odiplayersdisplay.jsp");
			System.out.println("Odi Player details: " + odiplayerslist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("adminfunctions.jsp");
		}
	}

}

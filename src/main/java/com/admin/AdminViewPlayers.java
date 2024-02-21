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
 * Servlet implementation class PlayerViewStatus
 */
public class AdminViewPlayers extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session=request.getSession();
		//String puname1=(String) session.getAttribute("pusername");
		
		AdminViewPlayersDao avpdao=new AdminViewPlayersDao();
		List<AdminViewPlayersDao> playerslist=new ArrayList<>(avpdao.view());
		if(playerslist !=null && !playerslist.isEmpty())
		{
			
			
			// Iterate through each player
			for(AdminViewPlayersDao player:playerslist)
			{
				System.out.println("Player details: " + player.toString());
			}
			
			request.setAttribute("playersdetails",playerslist);
			
			System.out.println("Players details: " + playerslist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("adminplayersdisplay.jsp");
			System.out.println("Player details: " + playerslist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("adminfunctions.jsp");
		}
	}

}

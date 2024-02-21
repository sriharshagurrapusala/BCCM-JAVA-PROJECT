package com.player;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerViewStatus
 */
public class PlayerViewStatus extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String puname1=(String) session.getAttribute("pusername");
		
		PlayerViewStatusDao pvsdao=new PlayerViewStatusDao();
		
		if(pvsdao.view(puname1)!=null)
		{
			List<PlayerViewStatusDao> playerlist=new ArrayList<>(pvsdao.view(puname1));
			System.out.println("Player details: " + playerlist);
			
			
			request.setAttribute("playerdetails",playerlist);
			
			System.out.println("Player details: " + playerlist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("playerdisplay.jsp");
			System.out.println("Player details: " + playerlist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("playerfunctions.jsp");
		}
	}

}

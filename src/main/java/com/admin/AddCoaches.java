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
public class AddCoaches extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		AddCoachesDao acdao=new AddCoachesDao();
		List<AddCoachesDao> coacheslist=new ArrayList<>(acdao.view());
		if(coacheslist !=null && !coacheslist.isEmpty())
		{
			
			
			// Iterate through each coach
			for(AddCoachesDao coach:coacheslist)
			{
				System.out.println("Coach details: " + coach.toString());
			}
			
			request.setAttribute("coachesdetails",coacheslist);
			
			System.out.println("coaches details: " + coacheslist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("admincoachesdisplay.jsp");
			System.out.println("Player details: " + coacheslist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("adminfunctions.jsp");
		}
	}

}

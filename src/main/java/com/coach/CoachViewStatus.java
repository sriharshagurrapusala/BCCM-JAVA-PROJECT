package com.coach;

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
public class CoachViewStatus extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String cuname1=(String) session.getAttribute("cusername");
		
		CoachViewStatusDao cvsdao=new CoachViewStatusDao();
		
		if(cvsdao.view(cuname1)!=null)
		{
			List<CoachViewStatusDao> coachlist=new ArrayList<>(cvsdao.view(cuname1));
			System.out.println("Coach details: " + coachlist);
			
			
			request.setAttribute("coachdetails",coachlist);
			
			System.out.println("Coach details: " + coachlist);

			RequestDispatcher dispatcher=request.getRequestDispatcher("coachdisplay.jsp");
			System.out.println("Coach details: " + coachlist);

			dispatcher.forward(request, response);
		}
		else
		{
			response.sendRedirect("coachfunctions.jsp");
		}
	}

}

package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateCoachStatus
 */
public class DeleteCoachStatus extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DeleteCoachStatusDao dcsdao=new DeleteCoachStatusDao();
		String coachUsername1=request.getParameter("coachUsername1");
		if(dcsdao.view(coachUsername1)) {
			response.sendRedirect("deletecoaches.jsp?success=true");
		}
		else
		{
			response.sendRedirect("deletecoaches.jsp?success=false");
		}
		
	}

}

package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateCoachStatus
 */
public class UpdateCoachStatus extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UpdateCoachStatusDao ucsdao=new UpdateCoachStatusDao();
		String coachUsername1=request.getParameter("coachUsername1");
		if(ucsdao.view(coachUsername1)) {
			response.sendRedirect("addcoaches.jsp");
		}
		else
		{
			response.sendRedirect("addcoaches.jsp");
		}
		
	}

}

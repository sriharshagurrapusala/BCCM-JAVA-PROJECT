package com.coach;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerRegister
 */
public class CoachRegister extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cname1=request.getParameter("cname1");
		String cuname1=request.getParameter("cuname1");
		String cpass1=request.getParameter("cpass1");
		String position1=request.getParameter("position1");
		String experience1=request.getParameter("experience1");
		
		CoachInsertDao cidao=new CoachInsertDao();
		if(cidao.insert(cname1,cuname1,cpass1,position1,experience1))
		{
			response.sendRedirect("coach.jsp");
		}
		else
		{
			response.sendRedirect("coach.jsp");
		}
		
		
	}

}

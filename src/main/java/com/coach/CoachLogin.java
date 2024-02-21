package com.coach;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerLogin
 */
public class CoachLogin extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cuname1=request.getParameter("cuname1");
		String cpass1=request.getParameter("cpass1");
		
		CoachLoginDao cldao=new CoachLoginDao();
		CoachDao cdao=new CoachDao();
		if(cldao.check(cuname1, cpass1))
		{
			HttpSession session=request.getSession();
			session.setAttribute("cusername", cuname1);
			session.setAttribute("selectionstatus",cdao.getSelectionStatus(cuname1));
			session.setAttribute("position",cdao.getPosition(cuname1));
			response.sendRedirect("coachfunctions.jsp");
		}
		else
		{
			response.sendRedirect("coachlogin.jsp");
		}
	}

}

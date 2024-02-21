package com.player;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PlayerApplyForSelection
 */
public class PlayerApplyForSelection extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		String puname1=(String) session.getAttribute("pusername");
		String batting1=request.getParameter("batting1");
		String bowling1=request.getParameter("bowling1");
		String wicketkeeping1=request.getParameter("wicketkeeping1");
		String hruns1=request.getParameter("hruns1");
		String hwickets1=request.getParameter("hwickets1");
		String hstumpouts1=request.getParameter("hstumpouts1");
		String applicationstatus1="received";
		PlayerApplicationInsertDao paidao=new PlayerApplicationInsertDao();
		if(paidao.getApplicationstatus1(puname1)!=null)
		{
			request.setAttribute("applicationFilledStatus","filled");
			RequestDispatcher dispatcher=request.getRequestDispatcher("playerfunctions.jsp");
			dispatcher.forward(request, response);
		}
		
		if(paidao.insert(puname1,batting1, bowling1, wicketkeeping1, hruns1, hwickets1, hstumpouts1,applicationstatus1))
		{
			response.sendRedirect("playerfunctions.jsp");
		}
		else
		{
			response.sendRedirect("playerapplyforselection.jsp");
		}
		
	}

}

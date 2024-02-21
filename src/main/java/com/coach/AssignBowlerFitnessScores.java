package com.coach;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.player.PlayerDao;

/**
 * Servlet implementation class AssignBatsmenFitnessScores
 */
public class AssignBowlerFitnessScores extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String puname=request.getParameter("playerUsername1");
		String pscore=request.getParameter("fitnessScore");
		PlayerDao pdao=new PlayerDao();
		if(pdao.setFitnessscore1(puname, pscore)) {
			response.sendRedirect("bowlingassignfitnessscores.jsp");
		}
		else
		{
			response.sendRedirect("bowlingassignfitnessscores.jsp");
		}
		
	}

}

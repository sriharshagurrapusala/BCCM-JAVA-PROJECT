package com.coach;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.player.PlayerDao; // Import the PlayerDao class or replace it with your actual implementation

/**
 * Servlet implementation class UpdatePlayerStatus
 */
public class UpdatePlayerStatus extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String playerUsername = request.getParameter("playerUsername");
        String t20Status = request.getParameter("t20Status");
        String odiStatus = request.getParameter("odiStatus");
        String testStatus = request.getParameter("testStatus");

        
        PlayerDao playerDao = new PlayerDao(); 
        boolean success = playerDao.updatePlayerStatus(playerUsername, t20Status, odiStatus, testStatus);

        if (success) {
            
            response.sendRedirect("coachfunctions.jsp");
        } else {
            
            response.getWriter().println("Failed to update player status.");
        }
    }
}

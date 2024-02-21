package com.coach;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.player.PlayerDao;

/**
 * Servlet implementation class BattingPlayers
 */
public class BowlingPlayers extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PlayerDao pd = new PlayerDao();
        List<PlayerDao> bowlerlist = pd.bowlingYes();
        if (bowlerlist != null && !bowlerlist.isEmpty()) {
            request.setAttribute("bowlersdetails", bowlerlist);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewbowlingingplayers.jsp");
            dispatcher.forward(request, response);
        } 
    }
}

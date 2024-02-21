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
public class AllrounderPlayers extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PlayerDao pd = new PlayerDao();
        List<PlayerDao> allrounderlist = pd.allrounderYes();
        if (allrounderlist != null && !allrounderlist.isEmpty()) {
            request.setAttribute("allroundersdetails", allrounderlist);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewallrounderplayers.jsp");
            dispatcher.forward(request, response);
        } 
    }
}

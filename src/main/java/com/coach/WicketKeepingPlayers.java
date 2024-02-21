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
public class WicketKeepingPlayers extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PlayerDao pd = new PlayerDao();
        List<PlayerDao> keeperlist = pd.wicketKeepingYes();
        if (keeperlist != null && !keeperlist.isEmpty()) {
            request.setAttribute("keeperssdetails", keeperlist);
            RequestDispatcher dispatcher = request.getRequestDispatcher("viewwicketkeepingplayers.jsp");
            dispatcher.forward(request, response);
        } 
    }
}

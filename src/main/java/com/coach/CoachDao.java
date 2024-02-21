package com.coach;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CoachDao {

    private String url = "jdbc:mysql://localhost:3306/bccm";
    private String username = "root";
    private String password = "Password@1729";

    public String getSelectionStatus(String uname) {
        String query = "SELECT selectionstatus FROM bccm.coaches WHERE cuname=? ";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, username, password);
                 PreparedStatement pst = con.prepareStatement(query)) {
                pst.setString(1, uname);
                try (ResultSet rs = pst.executeQuery()) {
                    if (rs.next()) {
                        return rs.getString(1);
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    
    
    public String getPosition(String uname) {
        String query = "SELECT battingcoach,bowlingcoach,wicketkeepingcoach,allroundercoach FROM bccm.coaches WHERE cuname=? ";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, username, password);
                 PreparedStatement pst = con.prepareStatement(query)) {
                pst.setString(1, uname);
                try (ResultSet rs = pst.executeQuery()) {
                    if (rs.next()) {
                    	String position="";
                        if(rs.getString(1).equals("yes"))
                        {
                        	position="battingcoach";
                        }
                        else if(rs.getString(2).equals("yes"))
                        {
                        	position="bowlingcoach";
                        }
                        else if(rs.getString(3).equals("yes"))
                        {
                        	position="wicketkeepingcoach";
                        }
                        else if(rs.getString(4).equals("yes"))
                        {
                        	position="allroundercoach";
                        }
                        return position;
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    public List<CoachViewStatusDao> getCoachDetails(String uname) {
        String query = "SELECT * FROM bccm.coaches WHERE cuname=? ";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(url, username, password);
                 PreparedStatement pst = con.prepareStatement(query)) {
                pst.setString(1, uname);
                try (ResultSet rs = pst.executeQuery()) {
                    List<CoachViewStatusDao> coaches = new ArrayList<>();
                    if (rs.next()) {
                        CoachViewStatusDao coach = new CoachViewStatusDao();
                        coach.setCname1(rs.getString(1));
                        coach.setCuname1(rs.getString(2));
                        coach.setCpass1(rs.getString(3));
                        coach.setCbattingcoach1(rs.getString(4));
                        coach.setCbowlingcoach1(rs.getString(5));
                        coach.setCwicketkeepingcoach1(rs.getString(6));
                        coach.setCallroundercoach1(rs.getString(7));
                        coach.setCexperience1(rs.getString(8));
                        coach.setCapplicationstatus1(rs.getString(9));
                        coach.setCselectionstatus1(rs.getString(10));
                        coaches.add(coach);
                        return coaches;
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

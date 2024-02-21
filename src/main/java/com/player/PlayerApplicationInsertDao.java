package com.player;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PlayerApplicationInsertDao {
	
	
	
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	String applicationstatus1;
	
	public String getApplicationstatus1(String puname1) {
		
		String query="select applicationstatus from bccm.players  where puname=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
				
		
			pst.setString(1, puname1);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				String status=rs.getString(1);
				System.out.println("application status is "+status);
				return status;
			}
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
			}
		return null;
	}
	//If no arguments are given
	public String getApplicationStatus1()
	{
		return this.applicationstatus1;
	}
	public void setApplicationstatus1(String applicationstatus1) {
		this.applicationstatus1 = applicationstatus1;
	}

	public boolean insert(String puname1,String batting1,String bowling1,String wicketkeeping1,String hruns1,String hwickets1,String hstumpouts1,String applicationstatus1)
	{
		
		String query="update bccm.players set batting=? ,bowling=? ,wicketkeeping=? ,hruns=? ,hwickets=?,hstumpouts=? ,applicationstatus=? where puname=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
				
			pst.setString(1,batting1);
			pst.setString(2,bowling1);
			pst.setString(3,wicketkeeping1);
			pst.setString(4,hruns1);
			pst.setString(5,hwickets1);
			pst.setString(6,hstumpouts1);
			pst.setString(7, applicationstatus1);
			pst.setString(8, puname1);
			int count=pst.executeUpdate();
			System.out.println(count+" rows affected ");
			return true;
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
			}
		return false;
		
		
	}
}

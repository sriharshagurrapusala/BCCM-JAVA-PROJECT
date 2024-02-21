package com.coach;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CoachInsertDao {

	String query="insert into bccm.coaches(cname,cuname,cpass,battingcoach,bowlingcoach,wicketkeepingcoach,allroundercoach,experience) values (?,?,?,?,?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	
	public boolean insert(String cname1,String cuname1,String cpass1,String position1,String experience1)
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
				
			pst.setString(1,cname1);
			pst.setString(2,cuname1);
			pst.setString(3,cpass1);
			
			if(position1.equals("battingcoach"))
			{
				pst.setString(4,"yes");
				pst.setString(5,"no");
				pst.setString(6,"no");
				pst.setString(7,"no");
			}
			else if(position1.equals("bowlingcoach"))
			{
				pst.setString(4,"no");
				pst.setString(5,"yes");
				pst.setString(6,"no");
				pst.setString(7,"no");
			}
			else if(position1.equals("wicketkeepingcoach"))
			{
				pst.setString(4,"no");
				pst.setString(5,"no");
				pst.setString(6,"yes");
				pst.setString(7,"no");
			}
			else if(position1.equals("allroundercoach"))
			{
				pst.setString(4,"no");
				pst.setString(5,"no");
				pst.setString(6,"no");
				pst.setString(7,"yes");
			}
			
			pst.setString(8,experience1);
			
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

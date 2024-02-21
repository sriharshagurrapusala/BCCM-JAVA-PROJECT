package com.coach;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CoachLoginDao {

	String query="select * from bccm.coaches where cuname=? and cpass=?";
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	
	public boolean check(String uname,String pass)
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
			pst.setString(1,uname);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				return true;
			}
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
			}
		
		return false;
	}
}

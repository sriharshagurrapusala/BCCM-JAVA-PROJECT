package com.player;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PlayerInsertDao {

	String query="insert into bccm.players(pname,puname,pass,dob,address,contact,email) values (?,?,?,?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	
	public boolean insert(String pname1,String puname1,String pass1,String dob1,String address1,String contact1,String email1)
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
				
			pst.setString(1,pname1);
			pst.setString(2,puname1);
			pst.setString(3,pass1);
			pst.setString(4,dob1);
			pst.setString(5,address1);
			pst.setString(6,contact1);
			pst.setString(7,email1);
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

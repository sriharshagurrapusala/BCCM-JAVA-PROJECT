package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteCoachStatusDao {

	
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	
	String cname1;
	String cuname1;
	String cpass1 ;
	String cbattingcoach1 ;
	String cbowlingcoach1 ;
	String cwicketkeepingcoach1 ;
	String callroundercoach1 ;
	String cexperience1 ;
	String capplicationstatus1;
	String cselectionstatus1;
	
	
	
	
	


	public String getCname1() {
		return cname1;
	}







	public void setCname1(String cname1) {
		this.cname1 = cname1;
	}







	public String getCuname1() {
		return cuname1;
	}







	public void setCuname1(String cuname1) {
		this.cuname1 = cuname1;
	}







	public String getCpass1() {
		return cpass1;
	}







	public void setCpass1(String cpass1) {
		this.cpass1 = cpass1;
	}







	public String getCbattingcoach1() {
		return cbattingcoach1;
	}







	public void setCbattingcoach1(String cbattingcoach1) {
		this.cbattingcoach1 = cbattingcoach1;
	}







	public String getCbowlingcoach1() {
		return cbowlingcoach1;
	}







	public void setCbowlingcoach1(String cbowlingcoach1) {
		this.cbowlingcoach1 = cbowlingcoach1;
	}







	public String getCwicketkeepingcoach1() {
		return cwicketkeepingcoach1;
	}







	public void setCwicketkeepingcoach1(String cwicketkeepingcoach1) {
		this.cwicketkeepingcoach1 = cwicketkeepingcoach1;
	}







	public String getCallroundercoach1() {
		return callroundercoach1;
	}







	public void setCallroundercoach1(String callroundercoach1) {
		this.callroundercoach1 = callroundercoach1;
	}







	public String getCexperience1() {
		return cexperience1;
	}







	public void setCexperience1(String cexperience1) {
		this.cexperience1 = cexperience1;
	}







	public String getCapplicationstatus1() {
		return capplicationstatus1;
	}







	public void setCapplicationstatus1(String capplicationstatus1) {
		this.capplicationstatus1 = capplicationstatus1;
	}







	public String getCselectionstatus1() {
		return cselectionstatus1;
	}







	public void setCselectionstatus1(String cselectionstatus1) {
		this.cselectionstatus1 = cselectionstatus1;
	}







	public  boolean view(String cuname1)
	{
		String query="update bccm.coaches set applicationstatus=? , selectionstatus=? where cuname=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
				pst.setString(1,"received");
				pst.setString(2,"un selected");
				pst.setString(3,cuname1);
				
			int count=pst.executeUpdate();
			
			
			System.out.println(count+" rows affected");
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

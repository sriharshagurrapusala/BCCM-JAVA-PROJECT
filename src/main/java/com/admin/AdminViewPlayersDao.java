package com.admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminViewPlayersDao {

	
	String url="jdbc:mysql://localhost:3306/bccm";
	String username="root";
	String password="Password@1729";
	
	String pname1;
	String puname1;
	String pass1 ;
	String dob1;
	String address1 ;
	String contact1 ;
	String email1;
	String batting1 ;
	String bowling1 ;
	String wicketkeeping1 ;
	String hruns1 ;
	String hwickets1 ;
	String hstumpouts1 ;
	String t201 ;
	String odi1 ;
	String test1;
	String fitnessscore1;
	String applicationstatus1;
	
	
	



	


	public String getApplicationstatus1() {
		return applicationstatus1;
	}


	public void setApplicationstatus1(String applicationstatus1) {
		this.applicationstatus1 = applicationstatus1;
	}


	public String getPname1() {
		return pname1;
	}


	public void setPname1(String pname1) {
		this.pname1 = pname1;
	}


	public String getPuname1() {
		return puname1;
	}


	public void setPuname1(String puname1) {
		this.puname1 = puname1;
	}


	public String getPass1() {
		return pass1;
	}


	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}


	public String getDob1() {
		return dob1;
	}


	public void setDob1(String dob1) {
		this.dob1 = dob1;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getContact1() {
		return contact1;
	}


	public void setContact1(String contact1) {
		this.contact1 = contact1;
	}


	public String getEmail1() {
		return email1;
	}


	public void setEmail1(String email1) {
		this.email1 = email1;
	}


	public String getBatting1() {
		return batting1;
	}


	public void setBatting1(String batting1) {
		this.batting1 = batting1;
	}


	public String getBowling1() {
		return bowling1;
	}


	public void setBowling1(String bowling1) {
		this.bowling1 = bowling1;
	}


	public String getWicketkeeping1() {
		return wicketkeeping1;
	}


	public void setWicketkeeping1(String wicketkeeping1) {
		this.wicketkeeping1 = wicketkeeping1;
	}


	public String getHruns1() {
		return hruns1;
	}


	public void setHruns1(String hruns1) {
		this.hruns1 = hruns1;
	}


	public String getHwickets1() {
		return hwickets1;
	}


	public void setHwickets1(String hwickets1) {
		this.hwickets1 = hwickets1;
	}


	public String getHstumpouts1() {
		return hstumpouts1;
	}


	public void setHstumpouts1(String hstumpouts1) {
		this.hstumpouts1 = hstumpouts1;
	}


	public String getT201() {
		return t201;
	}


	public void setT201(String t201) {
		this.t201 = t201;
	}


	public String getOdi1() {
		return odi1;
	}


	public void setOdi1(String odi1) {
		this.odi1 = odi1;
	}


	public String getTest1() {
		return test1;
	}


	public void setTest1(String test1) {
		this.test1 = test1;
	}

	public String getFitnessscore1() {
		return fitnessscore1;
	}


	public void setFitnessscore1(String fitnessscore1) {
		this.fitnessscore1 = fitnessscore1;
	}
	
	@Override
	public String toString() {
		return "PlayerViewStatusDao [url=" + url + ", username=" + username + ", password=" + password + ", pname1="
				+ pname1 + ", puname1=" + puname1 + ", pass1=" + pass1 + ", dob1=" + dob1 + ", address1=" + address1
				+ ", contact1=" + contact1 + ", email1=" + email1 + ", batting1=" + batting1 + ", bowling1=" + bowling1
				+ ", wicketkeeping1=" + wicketkeeping1 + ", hruns1=" + hruns1 + ", hwickets1=" + hwickets1
				+ ", hstumpouts1=" + hstumpouts1 + ", t201=" + t201 + ", odi1=" + odi1 + ", test1=" + test1
				+ ", fitnessscore1=" + fitnessscore1 + ", applicationstatus1=" + applicationstatus1 + "]";
	}

	
	
	public List<AdminViewPlayersDao> viewTest()
	{
		String query="select * from bccm.players where test=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
			pst.setString(1,"selected");
			ResultSet rs=pst.executeQuery();
			List<AdminViewPlayersDao> player=new ArrayList<AdminViewPlayersDao>();
			int count=0;
			while(rs.next())
			{
				AdminViewPlayersDao avpdao=new AdminViewPlayersDao(); //Multiple object creations
				avpdao.pname1=rs.getString(1);
				avpdao.puname1=rs.getString(2);
				avpdao.pass1=rs.getString(3);
				avpdao.dob1=rs.getString(4);
				avpdao.address1=rs.getString(5);
				avpdao.contact1=rs.getString(6);
				avpdao.email1=rs.getString(7);
				avpdao.batting1=rs.getString(8);
				avpdao.bowling1=rs.getString(9) ;
				avpdao.wicketkeeping1=rs.getString(10) ;
				avpdao.hruns1=rs.getString(11);
				avpdao.hwickets1=rs.getString(12) ;
				avpdao.hstumpouts1=rs.getString(13) ;
				avpdao.t201=rs.getString(14) ;
				avpdao.odi1=rs.getString(15) ;
				avpdao.test1=rs.getString(16);
				avpdao.fitnessscore1=rs.getString(17);
				avpdao.applicationstatus1=rs.getString(18);
				player.add(avpdao);
				count++;
				System.out.println(count+"players list is "+player);
				
			}
			return player;
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
				
			}
		return null;
	}

	
	
	public List<AdminViewPlayersDao> viewOdi()
	{
		String query="select * from bccm.players where odi=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
			pst.setString(1,"selected");
			ResultSet rs=pst.executeQuery();
			List<AdminViewPlayersDao> player=new ArrayList<AdminViewPlayersDao>();
			int count=0;
			while(rs.next())
			{
				AdminViewPlayersDao avpdao=new AdminViewPlayersDao(); //Multiple object creations
				avpdao.pname1=rs.getString(1);
				avpdao.puname1=rs.getString(2);
				avpdao.pass1=rs.getString(3);
				avpdao.dob1=rs.getString(4);
				avpdao.address1=rs.getString(5);
				avpdao.contact1=rs.getString(6);
				avpdao.email1=rs.getString(7);
				avpdao.batting1=rs.getString(8);
				avpdao.bowling1=rs.getString(9) ;
				avpdao.wicketkeeping1=rs.getString(10) ;
				avpdao.hruns1=rs.getString(11);
				avpdao.hwickets1=rs.getString(12) ;
				avpdao.hstumpouts1=rs.getString(13) ;
				avpdao.t201=rs.getString(14) ;
				avpdao.odi1=rs.getString(15) ;
				avpdao.test1=rs.getString(16);
				avpdao.fitnessscore1=rs.getString(17);
				avpdao.applicationstatus1=rs.getString(18);
				player.add(avpdao);
				count++;
				System.out.println(count+"players list is "+player);
				
			}
			return player;
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
				
			}
		return null;
	}


	public List<AdminViewPlayersDao> viewT20()
	{
		String query="select * from bccm.players where t20=?";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
			pst.setString(1,"selected");
			ResultSet rs=pst.executeQuery();
			List<AdminViewPlayersDao> player=new ArrayList<AdminViewPlayersDao>();
			int count=0;
			while(rs.next())
			{
				AdminViewPlayersDao avpdao=new AdminViewPlayersDao(); //Multiple object creations
				avpdao.pname1=rs.getString(1);
				avpdao.puname1=rs.getString(2);
				avpdao.pass1=rs.getString(3);
				avpdao.dob1=rs.getString(4);
				avpdao.address1=rs.getString(5);
				avpdao.contact1=rs.getString(6);
				avpdao.email1=rs.getString(7);
				avpdao.batting1=rs.getString(8);
				avpdao.bowling1=rs.getString(9) ;
				avpdao.wicketkeeping1=rs.getString(10) ;
				avpdao.hruns1=rs.getString(11);
				avpdao.hwickets1=rs.getString(12) ;
				avpdao.hstumpouts1=rs.getString(13) ;
				avpdao.t201=rs.getString(14) ;
				avpdao.odi1=rs.getString(15) ;
				avpdao.test1=rs.getString(16);
				avpdao.fitnessscore1=rs.getString(17);
				avpdao.applicationstatus1=rs.getString(18);
				player.add(avpdao);
				count++;
				System.out.println(count+"players list is "+player);
				
			}
			return player;
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
				
			}
		return null;
	}

	
	
	
	
	
	
	
	
	
	public  List<AdminViewPlayersDao> view()
	{
		String query="select * from bccm.players";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
		
			ResultSet rs=pst.executeQuery();
			List<AdminViewPlayersDao> player=new ArrayList<AdminViewPlayersDao>();
			int count=0;
			while(rs.next())
			{
				AdminViewPlayersDao avpdao=new AdminViewPlayersDao(); //Multiple object creations
				avpdao.pname1=rs.getString(1);
				avpdao.puname1=rs.getString(2);
				avpdao.pass1=rs.getString(3);
				avpdao.dob1=rs.getString(4);
				avpdao.address1=rs.getString(5);
				avpdao.contact1=rs.getString(6);
				avpdao.email1=rs.getString(7);
				avpdao.batting1=rs.getString(8);
				avpdao.bowling1=rs.getString(9) ;
				avpdao.wicketkeeping1=rs.getString(10) ;
				avpdao.hruns1=rs.getString(11);
				avpdao.hwickets1=rs.getString(12) ;
				avpdao.hstumpouts1=rs.getString(13) ;
				avpdao.t201=rs.getString(14) ;
				avpdao.odi1=rs.getString(15) ;
				avpdao.test1=rs.getString(16);
				avpdao.fitnessscore1=rs.getString(17);
				avpdao.applicationstatus1=rs.getString(18);
				player.add(avpdao);
				count++;
				System.out.println(count+"players list is "+player);
				
			}
			return player;
			}
			} catch(ClassNotFoundException | SQLException e)
			{
				//System.out.println(e);
				e.printStackTrace();
				
				
			}
		return null;
		
		// = null;
		
	}
}

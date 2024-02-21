package com.player;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PlayerDao {

	
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


	
	
	@Override
	public String toString() {
		return "PlayerViewStatusDao [url=" + url + ", username=" + username + ", password=" + password + ", pname1="
				+ pname1 + ", puname1=" + puname1 + ", pass1=" + pass1 + ", dob1=" + dob1 + ", address1=" + address1
				+ ", contact1=" + contact1 + ", email1=" + email1 + ", batting1=" + batting1 + ", bowling1=" + bowling1
				+ ", wicketkeeping1=" + wicketkeeping1 + ", hruns1=" + hruns1 + ", hwickets1=" + hwickets1
				+ ", hstumpouts1=" + hstumpouts1 + ", t201=" + t201 + ", odi1=" + odi1 + ", test1=" + test1
				+ ", fitnessscore1=" + fitnessscore1 + ", applicationstatus1=" + applicationstatus1 + "]";
	}

	
	
	
	public boolean updatePlayerStatus(String playerUsername,String  t20Status,String  odiStatus,String  testStatus)
	{
		String query = "UPDATE players SET t20 = ?, odi = ?, test = ? WHERE puname = ?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	        	pst.setString(1, t20Status);
	        	pst.setString(2, odiStatus);
	        	pst.setString(3, testStatus);
	        	pst.setString(4, playerUsername);
	            int count = pst.executeUpdate();
	            System.out.println(count+" rows affected");
	            return true;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return false;
	}
	
	
	
	
	
	
	
	
	public boolean setFitnessscore1(String puname,String score) {
		String query = "update  bccm.players set fitnessscore=? where puname=?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	        	System.out.println("puname is "+puname+" score is "+score);
	            pst.setString(1,score );
	            pst.setString(2, puname);
	            int count = pst.executeUpdate();
	            System.out.println(count+" rows affected");
	            return true;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    
	    return false;
	}
	
	
	
	
	
	
	
	public List<PlayerDao> battingYes() {
	    String query = "SELECT * FROM bccm.players WHERE batting = ? and bowling= ? and wicketkeeping=?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	            pst.setString(1, "yes");
	            pst.setString(2, "no");
	            pst.setString(3, "no");
	            ResultSet rs = pst.executeQuery();

	            List<PlayerDao> players = new ArrayList<>();

	            while (rs.next()) {
	                PlayerDao pvsdao = new PlayerDao();
	                pvsdao.pname1 = rs.getString(1);
	                pvsdao.puname1 = rs.getString(2);
	                pvsdao.pass1 = rs.getString(3);
	                pvsdao.dob1 = rs.getString(4);
	                pvsdao.address1 = rs.getString(5);
	                pvsdao.contact1 = rs.getString(6);
	                pvsdao.email1 = rs.getString(7);
	                pvsdao.batting1 = rs.getString(8);
	                pvsdao.bowling1 = rs.getString(9);
	                pvsdao.wicketkeeping1 = rs.getString(10);
	                pvsdao.hruns1 = rs.getString(11);
	                pvsdao.hwickets1 = rs.getString(12);
	                pvsdao.hstumpouts1 = rs.getString(13);
	                pvsdao.t201 = rs.getString(14);
	                pvsdao.odi1 = rs.getString(15);
	                pvsdao.test1 = rs.getString(16);
	                pvsdao.fitnessscore1 = rs.getString(17);
	                pvsdao.applicationstatus1 = rs.getString(18);

	                players.add(pvsdao);
	            }
	            return players;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	public List<PlayerDao> bowlingYes() {
	    String query = "SELECT * FROM bccm.players WHERE batting = ? and bowling= ? and wicketkeeping=?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	            pst.setString(1, "no");
	            pst.setString(2, "yes");
	            pst.setString(3, "no");
	            ResultSet rs = pst.executeQuery();

	            List<PlayerDao> players = new ArrayList<>();

	            while (rs.next()) {
	                PlayerDao pvsdao = new PlayerDao();
	                pvsdao.pname1 = rs.getString(1);
	                pvsdao.puname1 = rs.getString(2);
	                pvsdao.pass1 = rs.getString(3);
	                pvsdao.dob1 = rs.getString(4);
	                pvsdao.address1 = rs.getString(5);
	                pvsdao.contact1 = rs.getString(6);
	                pvsdao.email1 = rs.getString(7);
	                pvsdao.batting1 = rs.getString(8);
	                pvsdao.bowling1 = rs.getString(9);
	                pvsdao.wicketkeeping1 = rs.getString(10);
	                pvsdao.hruns1 = rs.getString(11);
	                pvsdao.hwickets1 = rs.getString(12);
	                pvsdao.hstumpouts1 = rs.getString(13);
	                pvsdao.t201 = rs.getString(14);
	                pvsdao.odi1 = rs.getString(15);
	                pvsdao.test1 = rs.getString(16);
	                pvsdao.fitnessscore1 = rs.getString(17);
	                pvsdao.applicationstatus1 = rs.getString(18);

	                players.add(pvsdao);
	            }
	            return players;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	
	
	
	public List<PlayerDao> wicketKeepingYes() {
	    String query = "SELECT * FROM bccm.players WHERE batting = ? and bowling= ? and wicketkeeping=?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	            pst.setString(1, "yes");
	            pst.setString(2, "no");
	            pst.setString(3, "yes");
	            ResultSet rs = pst.executeQuery();

	            List<PlayerDao> players = new ArrayList<>();

	            while (rs.next()) {
	                PlayerDao pvsdao = new PlayerDao();
	                pvsdao.pname1 = rs.getString(1);
	                pvsdao.puname1 = rs.getString(2);
	                pvsdao.pass1 = rs.getString(3);
	                pvsdao.dob1 = rs.getString(4);
	                pvsdao.address1 = rs.getString(5);
	                pvsdao.contact1 = rs.getString(6);
	                pvsdao.email1 = rs.getString(7);
	                pvsdao.batting1 = rs.getString(8);
	                pvsdao.bowling1 = rs.getString(9);
	                pvsdao.wicketkeeping1 = rs.getString(10);
	                pvsdao.hruns1 = rs.getString(11);
	                pvsdao.hwickets1 = rs.getString(12);
	                pvsdao.hstumpouts1 = rs.getString(13);
	                pvsdao.t201 = rs.getString(14);
	                pvsdao.odi1 = rs.getString(15);
	                pvsdao.test1 = rs.getString(16);
	                pvsdao.fitnessscore1 = rs.getString(17);
	                pvsdao.applicationstatus1 = rs.getString(18);

	                players.add(pvsdao);
	            }
	            return players;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	
	
	
	public List<PlayerDao> allrounderYes() {
	    String query = "SELECT * FROM bccm.players WHERE batting = ? and bowling= ? and wicketkeeping=?";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        try (Connection con = DriverManager.getConnection(url, username, password);
	             PreparedStatement pst = con.prepareStatement(query)) {
	            pst.setString(1, "yes");
	            pst.setString(2, "yes");
	            pst.setString(3, "no");
	            ResultSet rs = pst.executeQuery();

	            List<PlayerDao> players = new ArrayList<>();

	            while (rs.next()) {
	                PlayerDao pvsdao = new PlayerDao();
	                pvsdao.pname1 = rs.getString(1);
	                pvsdao.puname1 = rs.getString(2);
	                pvsdao.pass1 = rs.getString(3);
	                pvsdao.dob1 = rs.getString(4);
	                pvsdao.address1 = rs.getString(5);
	                pvsdao.contact1 = rs.getString(6);
	                pvsdao.email1 = rs.getString(7);
	                pvsdao.batting1 = rs.getString(8);
	                pvsdao.bowling1 = rs.getString(9);
	                pvsdao.wicketkeeping1 = rs.getString(10);
	                pvsdao.hruns1 = rs.getString(11);
	                pvsdao.hwickets1 = rs.getString(12);
	                pvsdao.hstumpouts1 = rs.getString(13);
	                pvsdao.t201 = rs.getString(14);
	                pvsdao.odi1 = rs.getString(15);
	                pvsdao.test1 = rs.getString(16);
	                pvsdao.fitnessscore1 = rs.getString(17);
	                pvsdao.applicationstatus1 = rs.getString(18);

	                players.add(pvsdao);
	            }
	            return players;
	        }
	    } catch (ClassNotFoundException | SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
	
	
	
	

	public  List<PlayerViewStatusDao> view(String uname)
	{
		String query="select * from bccm.players where puname=? ";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			try(Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement pst=con.prepareStatement(query); )
			{
			pst.setString(1,uname);
			ResultSet rs=pst.executeQuery();
			List<PlayerViewStatusDao> player=new ArrayList<PlayerViewStatusDao>();
			PlayerViewStatusDao pvsdao=new PlayerViewStatusDao();
			if(rs.next()!=false)
			{
				pvsdao.pname1=rs.getString(1);
				pvsdao.puname1=rs.getString(2);
				pvsdao.pass1=rs.getString(3);
				pvsdao.dob1=rs.getString(4);
				pvsdao.address1=rs.getString(5);
				pvsdao.contact1=rs.getString(6);
				pvsdao.email1=rs.getString(7);
				pvsdao.batting1=rs.getString(8);
				pvsdao.bowling1=rs.getString(9) ;
				pvsdao.wicketkeeping1=rs.getString(10) ;
				pvsdao.hruns1=rs.getString(11);
				pvsdao.hwickets1=rs.getString(12) ;
				pvsdao.hstumpouts1=rs.getString(13) ;
				pvsdao.t201=rs.getString(14) ;
				pvsdao.odi1=rs.getString(15) ;
				pvsdao.test1=rs.getString(16);
				pvsdao.fitnessscore1=rs.getString(17);
				pvsdao.applicationstatus1=rs.getString(18);
				player.add(pvsdao);
				System.out.println("in dao 1"+pvsdao.pname1+" "+pvsdao.puname1);
				return player;
			}
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

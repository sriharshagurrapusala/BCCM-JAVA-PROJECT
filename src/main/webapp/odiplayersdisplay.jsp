<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.admin.AdminViewPlayersDao" %>
<%@ page import="java.util.List" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Odi selected players</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ffd700;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #ff00ff;
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #008080;
        color: #fff;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #fff;
    }

    th {
        background-color: #ff00ff;
    }

    tr:nth-child(even) {
        background-color: #00ced1;
    }

    tr:hover {
        background-color: #7fffd4;
    }

    .back-link-container {
        text-align: center;
        margin-top: 20px;
    }

    .back-link {
        display: inline-block;
        padding: 10px 20px;
        background-color: #ff00ff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
    }

    .back-link:hover {
        background-color: #800080;
    }
</style>
</head>
<body>
    <h2>Odi selected players</h2>
    <table border="1">
        <tr>
            <th>Player Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Date of Birth</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Email</th>
            <th>Batting</th>
            <th>Bowling</th>
            <th>Wicket Keeping</th>
            <th>Highest Runs</th>
            <th>Highest Wickets</th>
            <th>Highest Stump Outs</th>
            <th>T20 Status</th>
            <th>ODI Status</th>
            <th>Test Status</th>
            <th>Fitness Score Assigned</th>
            <th>Application Status</th>
        </tr>
        <% 
            List<AdminViewPlayersDao> odiplayersdetails = (List<AdminViewPlayersDao>) request.getAttribute("odiplayersdetails");
            if (odiplayersdetails != null) {
                for (AdminViewPlayersDao player : odiplayersdetails) {
        %>
                    <tr>
                        <td><%= player.getPname1() %></td>
                        <td><%= player.getPuname1() %></td>
                        <td><%= player.getPass1()%></td>
                        <td><%= player.getDob1() %></td>
                        <td><%= player.getAddress1() %></td>
                        <td><%= player.getContact1()%></td>
                        <td><%= player.getEmail1() %></td>
                        <td><%= player.getBatting1() %></td>
                        <td><%= player.getBowling1() %></td>
                        <td><%= player.getWicketkeeping1() %></td>
                        <td><%= player.getHruns1() %></td>
                        <td><%= player.getHwickets1() %></td>
                        <td><%= player.getHstumpouts1() %></td>
                        <td><%= player.getT201() %></td>
                        <td><%= player.getOdi1() %></td>
                        <td><%= player.getTest1() %></td>
                        <td><%= player.getFitnessscore1() %></td>
                        <td><%= player.getApplicationstatus1()%></td>
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="18">No ODI players details available</td>
                </tr>
        <% 
            }
        %>
    </table>
    
    <div class="back-link-container">
        <a href="adminfunctions.jsp" class="back-link">Back</a>
    </div>
</body>
</html>

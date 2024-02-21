<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.admin.AdminViewPlayersDao" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test selected players</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #673AB7; 
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #FF9800; 
    }

    tr:nth-child(odd) {
        background-color: #4CAF50; 
    }

    .back-link-container {
        text-align: center;
        margin-top: 20px;
    }

    .back-link {
        color: #333;
        text-decoration: none;
        padding: 5px 10px;
        border: 1px solid #333;
        border-radius: 3px;
        transition: background-color 0.3s ease;
    }

    .back-link:hover {
        background-color: #333;
        color: #fff;
    }
</style>
</head>
<body>
    <h2>Test selected players</h2>
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
            List<AdminViewPlayersDao> testplayersdetails = (List<AdminViewPlayersDao>) request.getAttribute("testplayersdetails");
            if (testplayersdetails != null) {
                for (AdminViewPlayersDao player : testplayersdetails) {
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
                    <td colspan="2">No Test players details available</td>
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

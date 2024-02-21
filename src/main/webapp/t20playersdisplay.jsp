<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.admin.AdminViewPlayersDao" %>
<%@ page import="java.util.List" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>T20 selected players</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #800080;
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #ffc0cb;
        border: 2px solid #0000ff;
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        color: #000;
    }

    th {
        background-color: #87ceeb;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #fff;
    }

    tr:hover {
        background-color: #add8e6;
    }

    .back-link-container {
        text-align: center;
        margin-top: 20px;
    }

    .back-link {
        display: inline-block;
        padding: 10px 20px;
        background-color: #800080;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
    }

    .back-link:hover {
        background-color: #4b0082;
    }
</style>
</head>
<body>
    <h2>T20 selected players</h2>
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
            List<AdminViewPlayersDao> t20playersdetails = (List<AdminViewPlayersDao>) request.getAttribute("t20playersdetails");
            if (t20playersdetails != null) {
                for (AdminViewPlayersDao player : t20playersdetails) {
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
                    <td colspan="18">No T20 players details available</td>
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

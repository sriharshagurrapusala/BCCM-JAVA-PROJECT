<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Batsmen</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
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
            margin: 20px auto;
            background-color: #87CEEB; /* Sky blue color */
            border: 2px solid #000080; /* Navy blue border */
        }
        
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #000080; /* Navy blue border */
        }
        
        tr:nth-child(even) {
            background-color: #ADD8E6; /* Light blue color */
        }
        
        form {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        
        select, input[type="submit"] {
            padding: 8px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        select {
            background-color: #fff;
        }
        
        input[type="submit"] {
            background-color: #4CAF50; /* Green color */
            color: #fff;
            transition: background-color 0.3s;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green color */
        }
        
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
        }
    </style>
</head>
<body>
    <h2>Select Batsmen for Formats</h2>
    <table border="1">
        <tr>
            <th>Player Name</th>
            <th>Username</th>
            <th>Batting</th>
            <th>Bowling</th>
            <th>Wicket Keeping</th>
            <th>Highest Runs</th>
            <th>Highest Wickets</th>
            <th>Highest Stump Outs</th>
            <th>T20 Status</th>
            <th>ODI Status</th>
            <th>Test Status</th>
            <th>Application Status</th>
            <th>Fitness Score Assigned</th>
        </tr>
        <% 
            List<PlayerDao> batsmendetails = (List<PlayerDao>) request.getAttribute("batsmendetails");
            if (batsmendetails != null) {
                for (PlayerDao player : batsmendetails) {
        %>
        <tr>
            <td><%= player.getPname1() %></td>
            <td><%= player.getPuname1() %></td>
            <td><%= player.getBatting1() %></td>
            <td><%= player.getBowling1() %></td>
            <td><%= player.getWicketkeeping1()%></td>
            <td><%= player.getHruns1() %></td>
            <td><%= player.getHwickets1() %></td>
            <td><%= player.getHstumpouts1() %></td>
            <td>
                <form action="UpdatePlayerStatus" method="post">
                    <select name="t20Status">
                        <option value="selected" <%= "selected".equals(player.getT201()) ? "selected" : "" %>>Selected</option>
                        <option value="notSelected" <%= "notSelected".equals(player.getT201()) ? "selected" : "" %>>Not Selected</option>
                    </select>
                    <input type="hidden" name="playerUsername" value="<%= player.getPuname1() %>">
                    <input type="submit" value="Select">
                </form>
            </td>
            <td>
                <form action="UpdatePlayerStatus" method="post">
                    <select name="odiStatus">
                        <option value="selected" <%= "selected".equals(player.getOdi1()) ? "selected" : "" %>>Selected</option>
                        <option value="notSelected" <%= "notSelected".equals(player.getOdi1()) ? "selected" : "" %>>Not Selected</option>
                    </select>
                    <input type="hidden" name="playerUsername" value="<%= player.getPuname1() %>">
                    <input type="submit" value="Select">
                </form>
            </td>
            <td>
                <form action="UpdatePlayerStatus" method="post">
                    <select name="testStatus">
                        <option value="selected" <%= "selected".equals(player.getTest1()) ? "selected" : "" %>>Selected</option>
                        <option value="notSelected" <%= "notSelected".equals(player.getTest1()) ? "selected" : "" %>>Not Selected</option>
                    </select>
                    <input type="hidden" name="playerUsername" value="<%= player.getPuname1() %>">
                    <input type="submit" value="Select">
                </form>
            </td>
            <td><%= player.getApplicationstatus1() %></td>
            <td><%= player.getFitnessscore1() %></td>
        </tr>
        <% 
                }
            } else {
        %>
        <tr>
            <td colspan="13">No Batsmen details available</td>
        </tr>
        <% 
            }
        %>
    </table>
    <a href="coachfunctions.jsp">Back</a>
</body>
</html>

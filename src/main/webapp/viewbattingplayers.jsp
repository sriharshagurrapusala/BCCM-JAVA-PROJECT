<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Batting Players</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F65314; 
            color: #fff; 
            margin: 0;
            padding: 20px;
        }
        
        h1 {
            text-align: center;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #fff; 
        }
        
        thead {
            background-color: #7CBB00; 
        }
        
        tbody tr:nth-child(even) {
            background-color: #00A1F1; 
        }
        
        tbody tr:nth-child(odd) {
            background-color: #FFBB00; 
        }
        
        .back-button {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            background-color: #3498DB;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .back-button:hover {
            background-color: #2980B9;
        }
    </style>
</head>
<body>
    <h1>Batting Players</h1>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Date of Birth</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Batting</th>
                <th>Bowling</th>
                <th>Wicketkeeping</th>
                <th>Highest Runs</th>
                <th>Highest Wickets</th>
                <th>Highest Stump Outs</th>
                <th>T20</th>
                <th>ODI</th>
                <th>Test</th>
                <th>Fitness Score</th>
                <th>Application Status</th>
            </tr>
        </thead>
        <tbody>
            <% 
            List<PlayerDao> batsmenlist = (List<PlayerDao>) request.getAttribute("batsmendetails");

            if (batsmenlist != null && !batsmenlist.isEmpty()) {
                for (PlayerDao player : batsmenlist) {
            %>
                    <tr>
                        <td><%= player.getPname1() %></td>
                        <td><%= player.getPuname1() %></td>
                        <td><%= player.getPass1() %></td>
                        <td><%= player.getDob1() %></td>
                        <td><%= player.getAddress1() %></td>
                        <td><%= player.getContact1() %></td>
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
                        <td><%= player.getApplicationstatus1() %></td>
                    </tr>
            <% 
                }
            } else {
            %>
                <tr>
                    <td colspan="18">No batting players found</td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <a href="battingcoachplayers.jsp" class="back-button">Back</a>
</body>
</html>

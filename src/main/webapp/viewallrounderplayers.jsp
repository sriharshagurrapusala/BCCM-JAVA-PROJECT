<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Allrounder Players</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #FFD700; /* Gold */
        }

        h1 {
            color: #FF6347; /* Tomato */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            background-color: #FF69B4; /* Hot Pink */
            border: 2px solid #FF6347; /* Tomato */
            margin: 20px auto; /* Center the table */
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #FF6347; /* Tomato border for rows */
        }

        th {
            background-color: #48D1CC; /* Medium Turquoise */
            color: #fff; /* White text */
        }

        tr:nth-child(even) {
            background-color: #7CFC00; /* Lawn Green */
        }

        tr:hover {
            background-color: #00FFFF; /* Cyan */
            color: #fff; /* White text on hover */
        }

        td[colspan="18"] {
            text-align: center;
            background-color: #48D1CC; /* Medium Turquoise */
            color: #fff; /* White text */
        }

        .back-button {
            display: block;
            width: 150px;
            margin: 20px auto;
            text-align: center;
            padding: 10px;
            background-color: #FF4500; /* Orange Red */
            color: #fff; /* White text */
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #FF6347; /* Tomato */
        }
    </style>
</head>
<body>
    <h1 align="center">Allrounder Players</h1>
    <table border="1">
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
            List<PlayerDao> allrounderslist = (List<PlayerDao>) request.getAttribute("allroundersdetails");

            if (allrounderslist != null && !allrounderslist.isEmpty()) {
                for (PlayerDao player : allrounderslist) {
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
                    <td colspan="18">No allrounder players found</td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <a href="allroundercoachplayers.jsp" class="back-button">Back</a>
</body>
</html>

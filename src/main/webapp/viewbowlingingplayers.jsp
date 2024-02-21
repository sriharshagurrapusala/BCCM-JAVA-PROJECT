<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bowling Players</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5; /* Light gray background */
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: yellow; /* Gold color */
            text-shadow: 
                -1px -1px 0 #000,  
                1px -1px 0 #000,
                -1px 1px 0 #000,
                1px 1px 0 #000; /* Black stroke */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #90EE90; /* Light green background */
            border: 1px solid #8B7500; /* Gold color border */
        }

        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #8B7500; /* Gold color border */
        }

        thead {
            background-color: #8B7500; /* Gold color background */
            color: #fff; /* White text color */
        }

        tbody tr:nth-child(even) {
            background-color: #f0f0f0; /* Light gray background for even rows */
        }

        tbody tr:nth-child(odd) {
            background-color: #fff; /* White background for odd rows */
        }

        tbody td {
            color: #333; /* Dark text color */
        }

        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }

        .back-button {
            background-color: #FFD700; /* Gold color */
            color: #000; /* Black text color */
            padding: 10px 20px;
            border: 1px solid #8B7500; /* Gold color border */
            border-radius: 5px;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #FFFF00; /* Yellow color on hover */
        }
    </style>
</head>
<body>
    <h1>Bowling Players</h1>
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
            List<PlayerDao> bowlerslist = (List<PlayerDao>) request.getAttribute("bowlersdetails");

            if (bowlerslist != null && !bowlerslist.isEmpty()) {
                for (PlayerDao player : bowlerslist) {
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
                    <td colspan="18">No bowling players found</td>
                    <!-- Adjust colspan based on the number of columns in your table -->
                </tr>
            <% } %>
        </tbody>
    </table>
    <div class="back-button-container">
        <a href="bowlingcoachplayers.jsp" class="back-button">Back</a>
    </div>
</body>
</html>

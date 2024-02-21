<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Batsmen Fitness Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        
        h2 {
            text-align: center;
            color: #333;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border: 1px solid #ddd;
            background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet); /* Rainbow gradient background */
        }
        
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
            color: white; /* White text color */
        }
        
        th {
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
        }
        
        tr:nth-child(even) {
            background-color: rgba(255, 255, 255, 0.5); /* Semi-transparent white background for even rows */
        }
        
        tr:nth-child(odd) {
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background for odd rows */
        }
        
        form {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        
        label {
            margin-right: 10px;
        }
        
        input[type="range"] {
            width: 150px;
            margin-right: 10px;
        }
        
        input[type="submit"] {
            padding: 8px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <h2>Batsmen Fitness Score Details</h2>
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
                        <td><%= player.getT201() %></td>
                        <td><%= player.getOdi1() %></td>
                        <td><%= player.getTest1() %></td>
                        <td><%= player.getApplicationstatus1() %></td>
                        <td>
                            <form action="AssignBatsmenFitnessScores" method="post">
                                <label for="playerUsername_<%= player.getPuname1() %>">Fitness Score (0-10):</label>
                                <input type="range" id="fitnessScore_<%= player.getPuname1() %>" name="fitnessScore" min="0" max="10" value="<%= player.getFitnessscore1() %>" onchange="updateRangeValue(this.value, '<%= player.getPuname1() %>')">
                                <input type="hidden" name="playerUsername1" value="<%= player.getPuname1() %>">
                                <span id="rangeValue_<%= player.getPuname1() %>"><%= player.getFitnessscore1() %></span>
                                <input type="submit" value="Assign">
                            </form>
                        </td>
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

    <script>
        function updateRangeValue(value, username) {
            document.getElementById("rangeValue_" + username).innerText = value;
            document.getElementById("fitnessScore_" + username).value = value;
        }
    </script>
</body>
</html>

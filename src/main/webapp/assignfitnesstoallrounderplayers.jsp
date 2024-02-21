<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Allrounder Fitness Details</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .back-button {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2 align="center">Allrounder Fitness Score Details</h2>
    <table>
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
            <th>Action</th>
        </tr>
        <% 
        List<PlayerDao> allrounderdetails = (List<PlayerDao>) request.getAttribute("allrounderdetails");
            if (allrounderdetails != null) {
                for (PlayerDao player : allrounderdetails) {
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
                        <td><%= player.getFitnessscore1() %></td>
                        <td>
                            <form action="AssignAllrounderFitnessScores" method="post">
                                <label for="fitnessScore_<%= player.getPuname1() %>">Fitness Score (between 0 and 10):</label>
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
    <a href="coachfunctions.jsp" class="back-button">Back</a>

    <script>
        function updateRangeValue(value, username) {
            document.getElementById("rangeValue_" + username).innerText = value;
            document.getElementById("fitnessScore_" + username).value = value; // Update the hidden input value
        }
    </script>
</body>
</html>

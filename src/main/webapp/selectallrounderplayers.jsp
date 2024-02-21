<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Allrounder</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        h2 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        form {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        select, input[type="submit"] {
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-right: 10px;
        }

        select {
            width: 100px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
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
    <h2>Select Allrounder for Formats</h2>
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
            <td colspan="13">No Bowler details available</td>
        </tr>
        <% 
            }
        %>
    </table>
    <a href="coachfunctions.jsp" class="back-button">Back</a>
</body>
</html>

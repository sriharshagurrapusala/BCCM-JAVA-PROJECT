<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Bowler</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(240, 240, 240); /* Light Gray */
            color: rgb(40, 40, 40); /* Dark Gray */
            margin: 0;
            padding: 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid rgb(200, 200, 200); /* Light Gray */
        }
        th {
            background-color: rgb(70, 130, 180); /* Steel Blue */
            color: white;
        }
        form select, form input[type="submit"] {
            padding: 8px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid rgb(150, 150, 150); /* Gray */
        }
        form input[type="submit"] {
            background-color: rgb(50, 205, 50); /* Lime Green */
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        form input[type="submit"]:hover {
            background-color: rgb(34, 139, 34); /* Forest Green */
        }
    </style>
</head>
<body>
    <h2 align="center">Select Bowler for Formats</h2>
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
            List<PlayerDao> bowlerdetails = (List<PlayerDao>) request.getAttribute("bowlerdetails");
            if (bowlerdetails != null) {
                for (PlayerDao player : bowlerdetails) {
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
    <a href="coachfunctions.jsp">Back</a>
</body>
</html>

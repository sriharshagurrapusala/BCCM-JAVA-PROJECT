<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Wicket Keepers</title>
    <style>
        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            background-color: #13294B; /* Dark blue, similar to Team India jersey */
            color: #fff; /* White text */
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #fff; /* White border */
        }

        th {
            background-color: #EF3E42; /* Vermilion red, similar to Team India jersey */
        }

        /* Center align the table */
        table {
            margin: 0 auto;
        }

        /* Style for the select and submit elements */
        select, input[type="submit"] {
            padding: 5px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            background-color: #EF3E42; /* Vermilion red, similar to Team India jersey */
            color: #fff; /* White text */
        }

        select:hover, input[type="submit"]:hover {
            background-color: #A61920; /* Darker shade of red on hover */
        }

        /* Center the back button */
        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }

        /* Style for the back button */
        .back-button {
            padding: 10px 20px;
            background-color: #13294B; /* Dark blue, similar to Team India jersey */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #0E1E33; /* Darker shade of blue on hover */
        }
    </style>
</head>
<body>
    <h2 align="center">Select Wicket Keepers for Formats</h2>
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
        List<PlayerDao> wicketkeeperrdetails = (List<PlayerDao>) request.getAttribute("wicketkeeperrdetails");
        if (wicketkeeperrdetails != null) {
            for (PlayerDao player : wicketkeeperrdetails) {
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
            <td colspan="13">No Keeper details available</td>
        </tr>
        <% 
        }
        %>
    </table>
    <div class="back-button-container">
        <a href="coachfunctions.jsp" class="back-button">Back</a>
    </div>
</body>
</html>

<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bowler Fitness Details</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:nth-child(odd) {
            background-color: #ffffff; /* white background for odd rows */
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <h2 align="center">Bowler Fitness Score Details</h2>
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
                        <td><%= player.getT201() %></td>
                        <td><%= player.getOdi1() %></td>
                        <td><%= player.getTest1() %></td>
                        <td><%= player.getApplicationstatus1() %></td>
                        <td>
                            <form action="AssignBowlerFitnessScores" method="post">
                                <label for="playerUsername_<%= player.getPuname1() %>">Fitness Score (between 0 and 10):</label>
                                <input type="range" id="fitnessScore_<%= player.getPuname1() %>" name="fitnessScore" min="0" max="10" value="<%= player.getFitnessscore1() %>" onchange="updateRangeValue(this.value, '<%= player.getPuname1() %>')">
                                <input type="hidden" name="playerUsername1" value="<%= player.getPuname1() %>">
                                <span id="rangeValue_<%= player.getPuname1() %>"><%= player.getFitnessscore1() %></span>

                                <script>
                                    function updateRangeValue(value, username) {
                                        document.getElementById("rangeValue_" + username).innerText = value;
                                        document.getElementById("fitnessScore_" + username).value = value; // Update the hidden input value
                                    }
                                </script>

                                <input type="submit" value="Assign">
                            </form>
                        </td>
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

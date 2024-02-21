<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Keeper Fitness Details</title>
    <style>
        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd; /* Light gray border */
        }

        th {
            background-color: #006994; /* Sky blue */
            color: #fff; /* White text */
        }

        tr:nth-child(even) {
            background-color: #f2c4d1; /* Mezantha */
        }

        /* Center the back button */
        .back-button-container {
            text-align: center;
            margin-top: 20px;
        }

        /* Style for the back button */
        .back-button {
            padding: 10px 20px;
            background-color: #006994; /* Sky blue */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #004b5e; /* Darker shade of blue on hover */
        }
    </style>
</head>
<body>
    <h2 align="center">Keeper Fitness Score Details</h2>
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
        List<PlayerDao> keeperdetails = (List<PlayerDao>) request.getAttribute("keeperdetails");
            if (keeperdetails != null) {
                for (PlayerDao player : keeperdetails) {
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
                            <form action="AssignKeeperFitnessScores" method="post">
                                <label for="playerUsername1">Fitness Score (between 0 and 10):</label>
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
    <div class="back-button-container">
        <a href="coachfunctions.jsp" class="back-button">Back</a>
    </div>

    <script>
        function updateRangeValue(value, username) {
            document.getElementById("rangeValue_" + username).innerText = value;
            document.getElementById("fitnessScore_" + username).value = value; // Update the hidden input value
        }
    </script>
</body>
</html>

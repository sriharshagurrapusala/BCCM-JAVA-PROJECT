<%@ page import="java.util.List" %>
<%@ page import="com.admin.AdminViewPlayersDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Player Details</title>
     <style>
        body {
            background-color:#CCFFFF;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .back-link-container {
            text-align: center;
            margin-top: 20px;
        }

        .back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-link:hover {
            background-color: #45a049;
        }
        
    </style>
</head>
<body>
    <h2 align="center">Player Application Status Details</h2>
    <div style="overflow-x:auto;">
        <table border="1">
            <tr>
                <th>Player Name</th>
                <th>Username</th>
                <th>Password</th>
                <th>Date of Birth</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Batting</th>
                <th>Bowling</th>
                <th>Wicket Keeping</th>
                <th>Highest Runs</th>
                <th>Highest Wickets</th>
                <th>Highest Stump Outs</th>
                <th>T20 Status</th>
                <th>ODI Status</th>
                <th>Test Status</th>
                <th>Fitness Score Assigned</th>
                <th>Application Status</th>
            </tr>
            <% 
                List<AdminViewPlayersDao> playersdetails = (List<AdminViewPlayersDao>) request.getAttribute("playersdetails");
                if (playersdetails != null) {
                    for (AdminViewPlayersDao player : playersdetails) {
            %>
                        <tr>
                            <td><%= player.getPname1() %></td>
                            <td><%= player.getPuname1() %></td>
                            <td><%= player.getPass1()%></td>
                            <td><%= player.getDob1() %></td>
                            <td><%= player.getAddress1() %></td>
                            <td><%= player.getContact1()%></td>
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
                            <td><%= player.getApplicationstatus1()%></td>
                        </tr>
            <% 
                    }
                } else {
            %>
                    <tr>
                        <td colspan="2">No players details available</td>
                    </tr>
            <% 
                }
            %>
        </table>
    </div>
    
    <div class="back-link-container">
        <a href="adminfunctions.jsp" class="back-link">Back</a>
    </div>
</body>
</html>

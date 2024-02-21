<%@ page import="java.util.List" %>
<%@ page import="com.player.PlayerViewStatusDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Player Details</title>
     <style>
        /* Define styles for the body */
        body {
            background-image: url('images/dharmashala.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-color: rgba(255, 255, 255, 0.5); /* Adjust the last value (0.5) for transparency */
            font-family: Arial, sans-serif;
        }

        /* Define styles for the table */
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px; /* Adjust as needed */
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50; /* Green */
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray */
        }
         /* Style for back link container */
        .back-link-container {
            text-align: center;
            margin-top: 20px; /* Adjust as needed */
        }

        /* Style for the back link */
        .back-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50; /* Green */
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-link:hover {
            background-color: #45a049; /* Darker green on hover */
        }
        
    </style>
</head>
<body>
    <h2 align="center">Player Application Status Details</h2>
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
            <!-- Add other column headers as needed -->
        </tr>
        <% 
        	//We can directly access PlayerViewStatusDao Because we IMPORTED 
        	// page import="com.player.PlayerViewStatusDao"
            List<PlayerViewStatusDao> playerdetails = (List<PlayerViewStatusDao>) request.getAttribute("playerdetails");
            if (playerdetails != null) {
                for (PlayerViewStatusDao player : playerdetails) {
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
                        
                        
                        <!-- Add other cells for additional properties -->
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="2">No player details available</td>
                </tr>
        <% 
            }
        %>
    </table>
    
    <div class="back-link-container">
        <a href="playerfunctions.jsp" class="back-link">Back</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.player.PlayerDao" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wicket Keeping Players</title>
    <style>
        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            background-color: #ffebcd; /* Warm color */
            border: 1px solid #ccc; /* Gray border */
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd; /* Light gray border */
        }

        th {
            background-color: #f4a460; /* Sandy brown for header */
            color: #fff; /* White text */
        }

        /* Alternate row background color */
        tr:nth-child(even) {
            background-color: #ffe4b5; /* Moccasin */
        }

        /* Hover effect */
        tr:hover {
            background-color: #fafad2; /* Light goldenrod yellow on hover */
        }

        /* Style for the back button */
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #6dbb63; /* Light green */
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #5ca352; /* Darker shade of green on hover */
        }
    </style>
</head>
<body>
    <h1 align="center">Wicket Keeping Players</h1>
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
            List<PlayerDao> keeperlist = (List<PlayerDao>) request.getAttribute("keeperssdetails");

            if (keeperlist != null && !keeperlist.isEmpty()) {
                for (PlayerDao player : keeperlist) {
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
                    <td colspan="18">No wicket keeping players found</td>
                    <!-- Adjust colspan based on the number of columns in your table -->
                </tr>
            <% } %>
        </tbody>
    </table>
    <div style="text-align: center;">
        <a href="wicketkeepingcoachplayers.jsp" class="back-button">Back</a>
    </div>
</body>
</html>

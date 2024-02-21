<%@ page import="java.util.List" %>
<%@ page import="com.coach.CoachViewStatusDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coach Details</title>
     <style>
        /* Define styles for the body */
        body {
            background-image: url('images/coachdisplay.jpg');
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
    <h2 align="center">Coach Application Status Details</h2>
    <table border="1">
        <tr>
            <th>Coach Name</th>
            <th>Coach Username</th>
            <th>Password</th>
            <th>Batting Coach</th>
            <th>Bowling Coach</th>
            <th>Wicket Keeping Coach</th>
            <th>All-Rounder Coach</th>
            <th>Experience</th>
            <th>Application Status</th>
            <th>Selection Status</th>
            <!-- Add other column headers as needed -->
        </tr>
        <% 
        	//We can directly access CoachViewStatusDao Because we IMPORTED 
        	// page import="com.coach.CoachViewStatusDao"
            List<CoachViewStatusDao> coachdetails = (List<CoachViewStatusDao>) request.getAttribute("coachdetails");
            if (coachdetails != null) {
                for (CoachViewStatusDao coach : coachdetails) {
        %>
                    <tr>
                        <td><%= coach.getCname1() %></td>
                        <td><%= coach.getCuname1() %></td>
                        <td><%= coach.getCpass1()%></td>
                        <td><%= coach.getCbattingcoach1() %></td>
                        <td><%= coach.getCbowlingcoach1() %></td>
                        <td><%= coach.getCwicketkeepingcoach1()%></td>
                        <td><%= coach.getCallroundercoach1() %></td>
                        <td><%= coach.getCexperience1() %></td>
                        <td><%= coach.getCapplicationstatus1() %></td>
                        <td><%= coach.getCselectionstatus1() %></td>
                        
                        
                        
                        <!-- Add other cells for additional properties -->
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="2">No coach details available</td>
                </tr>
        <% 
            }
        %>
    </table>
    
    <div class="back-link-container">
        <a href="coachfunctions.jsp" class="back-link">Back</a>
    </div>
</body>
</html>

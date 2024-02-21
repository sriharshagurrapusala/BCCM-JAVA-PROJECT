<%@ page import="java.util.List" %>
<%@ page import="com.admin.AddCoachesDao" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coach Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            color: #333;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            display: block;
            width: 150px;
            margin: 20px auto;
            padding: 12px 20px;
            background-color: #007bff;
            color: #fff;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background-color: #0056b3;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Coach Application Status Details</h2>
    <table>
        <tr>
            <th>Coach Name</th>
            <th>Username</th>
            <th>Password</th>
            <th>Batting Coach</th>
            <th>Bowling Coach</th>
            <th>Wicketkeeping Coach</th>
            <th>Allrounder Coach</th>
            <th>Experience</th>
            <th>Application Status</th>
            <th>Selected Status</th>
            <th>Select</th>
        </tr>
        <% 
            List<AddCoachesDao> coachesdetails = (List<AddCoachesDao>) request.getAttribute("coachesdetails");
            if (coachesdetails != null) {
                for (AddCoachesDao coach : coachesdetails) {
        %>
                    <tr>
                        <td><%= coach.getCname1() %></td>
                        <td><%= coach.getCuname1() %></td>
                        <td><%= coach.getCpass1()%></td>
                        <td><%= coach.getCbattingcoach1() %></td>
                        <td><%= coach.getCbowlingcoach1() %></td>
                        <td><%= coach.getCwicketkeepingcoach1() %></td>
                        <td><%= coach.getCallroundercoach1() %></td>
                        <td><%= coach.getCexperience1() %></td>
                        <td><%= coach.getCapplicationstatus1() %></td>
                        <td><%= coach.getCselectionstatus1() %></td>
                        <td>
                            <form action="UpdateCoachStatus" method="post">
                                <input type="hidden" name="coachUsername1" value="<%= coach.getCuname1() %>">
                                <input type="submit" value="Select">
                            </form>
                        </td>
                    </tr>
        <% 
                }
            } else {
        %>
                <tr>
                    <td colspan="11">No coach details available</td>
                </tr>
        <% 
            }
        %>
    </table>
    <a href="adminfunctions.jsp">Back</a>
</body>
</html>

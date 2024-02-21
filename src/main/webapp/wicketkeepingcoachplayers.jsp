<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* Style for the buttons */
        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 5px;
            text-align: center;
            text-decoration: none;
            color: #ffffff;
            background-color: #6dbb63; /* Light green */
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Style for the links */
        .button a {
            text-decoration: none;
            color: inherit;
        }

        /* Style for the body */
        body {
            background-color: #333; /* Dark color */
            color: #fff; /* White text */
            font-family: Arial, sans-serif;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="button-container">
        <a href="wicketkeepingplayers.jsp" class="button">Only wicketkeeping Players</a>
        <a href="wicketkeepingassignfitnessscores.jsp" class="button">Assign Fitness Scores</a>
        <a href="wicketkeepingselectplayers.jsp" class="button">Select Players</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Batting Players Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .container a {
        display: block;
        color: #000; 
        margin-bottom: 10px;
        text-decoration: none;
        padding: 10px 20px;
        background-color: #87ceeb; 
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .container a:hover {
        background-color: #4ba3c7; 
    }
</style>
</head>
<body>
<div class="container">
    <a href="battingplayers.jsp">Only Batting Players</a>
    <a href="battingassignfitnessscores.jsp">Assign Fitness Scores</a>
    <a href="battingselectplayers.jsp">Select Players</a>
</div>
</body>
</html>

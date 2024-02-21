<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Batting Players</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }

    form {
        text-align: center;
        margin-top: 50px;
    }

    input[type="submit"] {
        padding: 10px 20px;
        background-color: #ff69b4; 
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #ff1493; 
    }
</style>
</head>
<body>
<form action="BattingPlayers" method="post">
    <input type="submit" value="View Batting Players">
</form>
</body>
</html>

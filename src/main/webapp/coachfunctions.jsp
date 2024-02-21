<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coach Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }

    .container {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 600px;
        margin: 20px auto;
    }

    .link-container {
        margin-bottom: 20px;
    }

    .link-container a {
        display: block;
        padding: 10px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        margin-bottom: 10px;
        transition: background-color 0.3s ease;
    }

    .link-container a:hover {
        background-color: #0056b3;
    }

    .logout-container {
        text-align: center;
    }

    .logout-container input[type="submit"] {
        padding: 10px 20px;
        background-color: #dc3545;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .logout-container input[type="submit"]:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<div class="container">
    <div class="link-container">
        <a href="coachapplicationstatus.jsp">Coach Application Status</a>
        <a href="coachviewplayer.jsp">Coach View Player</a>
    </div>

    <a href="home.jsp">Back to Home Page</a>

    <div class="logout-container">
        <form action="CoachLogout" method="post">
            <input type="submit" value="Coach Logout">
        </form>
    </div>
</div>
</body>
</html>

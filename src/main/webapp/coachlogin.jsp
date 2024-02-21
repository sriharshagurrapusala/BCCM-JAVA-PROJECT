<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coach Login</title>
<style>
    body {
        background-color: #fceed1;
        font-family: Arial, sans-serif;
        color: #FFFFFF;
        padding: 20px;
        margin: 0;
    }

    form {
        background-color: #34495E;
        padding: 20px;
        border-radius: 10px;
        width: 300px;
        margin: 0 auto;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"],
    .back-button {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        text-align: center;
    }

    input[type="text"],
    input[type="password"] {
        background-color: #2C3E50;
        color: #FFFFFF;
    }

    input[type="submit"] {
        background-color: #3498DB;
        color: #FFFFFF;
    }

    input[type="submit"]:hover {
        background-color: #2980B9;
    }

    .back-button {
        background-color: #2980B9;
    }

    .back-button:hover {
        background-color: #3498DB;
    }

    a {
        color: #FFFFFF;
        text-decoration: none;
        display: block;
        margin-top: 10px;
        text-align: center;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <form action="CoachLogin" method="post">
        <h2 style="text-align: center;">Coach Login</h2>
        <label for="cuname1">Enter Coach UserName:</label>
        <input type="text" name="cuname1" id="cuname1">
        <br>
        <label for="cpass1">Enter Coach Password:</label>
        <input type="password" name="cpass1" id="cpass1">
        <br>
        <input type="submit" value="Coach Login">
    </form>
    <a href="home.jsp" class="back-button">Back to Home Page</a>
</body>
</html>

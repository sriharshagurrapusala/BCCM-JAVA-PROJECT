<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="styles/adminlogin.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-container {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 400px;
        width: 100%;
        text-align: center;
    }

    .login-container h2 {
        color: #333;
        margin-bottom: 30px;
    }

    .input-field {
        margin-bottom: 20px;
    }

    .input-field input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
    }

    .submit-button {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .submit-button:hover {
        background-color: #45a049;
    }

    .back-button {
        color: #333;
        text-decoration: none;
        margin-top: 20px;
        display: inline-block;
        transition: color 0.3s ease;
    }

    .back-button:hover {
        color: #007bff;
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLogin" method="post" class="login-form">
            <div class="input-field">
                Enter Admin UserName: <br>
                <input type="text" name="uname">
            </div>
            <div class="input-field">
                Enter Admin Password: <br>
                <input type="password" name="pass">
            </div>
            <input type="submit" value="Admin Login" class="submit-button">
        </form>
        <a href="home.jsp" class="back-button">Back to Home Page</a>
    </div>
</body>
</html>

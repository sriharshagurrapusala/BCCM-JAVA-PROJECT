<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fff; 
        color: #333; 
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-container {
        background-color: #f9f9f9; 
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
        background-color: #fff; 
        color: #333; 
    }

    .submit-button {
        background-color: #007bff; 
        color: #fff; 
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .submit-button:hover {
        background-color: #0056b3; 
    }

    .back-link {
        color: #007bff; 
        text-decoration: none;
        margin-top: 20px;
        display: inline-block;
        transition: color 0.3s ease;
    }

    .back-link:hover {
        color: #0056b3; 
    }
</style>
</head>
<body>
    <div class="login-container">
        <h2>Player Login</h2>
        <form action="PlayerLogin" method="post" class="login-form">
            <div class="input-field">
                Enter Player UserName: <br>
                <input type="text" name="puname1">
            </div>
            <div class="input-field">
                Enter Player Password: <br>
                <input type="password" name="pass1">
            </div>
            <input type="submit" value="Player Login" class="submit-button">
        </form>
        <a href="home.jsp" class="back-link">Back to Home Page</a>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        body {
            background-color: #ffffcc;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #fff;
            color: #333;
            text-decoration: none;
            font-size: 18px;
            border: 2px solid #333;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
            margin-bottom: 10px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #333;
            color: #fff;
        }

        h2 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
    <h2>Coach Portal</h2>
    <div class="button-container">
        <a href="coachregister.jsp" class="button">Coach Register</a>
        <a href="coachlogin.jsp" class="button">Coach Login</a>
    </div>


    <div class="button-container">
        <a href="home.jsp" class="button">Back to Home Page</a>
    </div>
</body>
</html>

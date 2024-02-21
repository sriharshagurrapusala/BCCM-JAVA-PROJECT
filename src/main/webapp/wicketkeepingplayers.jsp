<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        /* Center the form */
        form {
            text-align: center;
            margin-top: 20%;
        }

        /* Style for the button */
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #6dbb63; /* Light green */
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        /* Change background color */
        body {
            background-color: #f0f8ff; /* Light blue */
            font-family: Arial, sans-serif;
            padding: 20px;
        }
    </style>
</head>
<body>
    <form action="WicketKeepingPlayers" method="post">
        <input type="submit" value="View Wicket Keeper Players">
    </form>
</body>
</html>

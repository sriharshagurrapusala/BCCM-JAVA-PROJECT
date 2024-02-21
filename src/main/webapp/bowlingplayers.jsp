<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0; /* Light gray background */
        padding: 20px;
    }

    form {
        text-align: center; /* Center align the form */
    }

    input[type="submit"] {
        padding: 10px 20px; /* Add padding to the button */
        background-color: #87ceeb; /* Sky blue background */
        color: #fff; /* White text color */
        border: none; /* Remove border */
        border-radius: 5px; /* Rounded corners */
        cursor: pointer; /* Change cursor on hover */
        transition: background-color 0.3s; /* Smooth transition */
    }

    input[type="submit"]:hover {
        background-color: #4682b4; /* Darker blue on hover */
    }
</style>
</head>
<body>
<form action="BowlingPlayers" method="post">
    <input type="submit" value="View Bowling Players">
</form>
</body>
</html>

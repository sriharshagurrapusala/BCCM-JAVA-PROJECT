<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Center the form horizontally */
    form {
        text-align: center;
        margin-top: 50px; /* Adjust as needed */
    }

    /* Style the button */
    input[type="submit"] {
        background-color: #4CAF50; /* Green */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    /* Change button color on hover */
    input[type="submit"]:hover {
        background-color: #45a049; /* Darker green */
    }
</style>
</head>
<body>
<form action="AllrounderAssignFitnessScores" method="post">
    <input type="submit" value="Assign Fitness Score">
</form>
</body>
</html>

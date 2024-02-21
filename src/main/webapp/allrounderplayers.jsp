<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        background-color: #f0f0f0; /* Light gray background */
        font-family: Arial, sans-serif;
        text-align: center;
    }

    /* Style for the form */
    form {
        margin-top: 50px;
    }

    /* Style for the submit button */
    input[type="submit"] {
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        color: #ffffff;
        background-color: #6dbb63; /* Light green */
        border: none;
        border-radius: 5px;
        cursor: pointer;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adding a subtle shadow */
        transition: background-color 0.3s, transform 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #5aa853; /* Darker green on hover */
        transform: translateY(-2px); /* Move button slightly upwards on hover */
    }
</style>
</head>
<body>
<form action="AllrounderPlayers" method="post">
    <input type="submit" value="View Allrounder Players">
</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View ODI Selected Team</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color:  #ffde22;
        margin: 0;
        padding: 0;
    }

    form {
        text-align: center;
        margin-top: 100px;
    }

    input[type="submit"] {
        padding: 10px 20px;
        background-color: #FF0033;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
    <form action="ViewOdiSelectionTeam" method="post">
        <input type="submit" value="View ODI Selected Team">
    </form>
</body>
</html>

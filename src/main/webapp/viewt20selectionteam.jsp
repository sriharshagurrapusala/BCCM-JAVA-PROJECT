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
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
    }

    form {
        text-align: center;
        margin-top: 50px;
    }

    input[type="submit"] {
        padding: 12px 24px;
        background-color: #87ceeb;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #5f9ea0;
    }
</style>
</head>
<body>
    <form action="ViewT20SelectionTeam" method="post">
        <input type="submit" value="View T20 Selected Team">
    </form>
</body>
</html>

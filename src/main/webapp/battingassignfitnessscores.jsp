<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #F0FFF0;
        margin: 0;
        padding: 20px;
    }
    
    form {
        background-color: #F0FFF0;
        padding: 20px;
        border-radius: 10px;
        width: 300px;
        margin: 0 auto;
    }
    
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-top: 10px;
        border: none;
        border-radius: 5px;
        background-color: #4682B4; 
        color: #fff;
        cursor: pointer;
    }
    
    input[type="submit"]:hover {
        background-color: #4169E1; 
    }
</style>
</head>
<body>
    <form action="BattingAssignFitnessScores" method="post">
        <input type="submit" value="Assign Fitness Score">
    </form>
</body>
</html>

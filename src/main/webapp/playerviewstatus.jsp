<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Player Status</title>
    <style>
        body {
            background-color: #f5f5f5; 
            font-family: Arial, sans-serif; 
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px; 
            margin: 20px auto; 
            padding: 20px;
            background-color: #fff; 
            border-radius: 5px; 
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
        }

        input[type="submit"] {
            background-color: #007bff; 
            color: #fff; 
            padding: 10px 20px; 
            border: none; 
            border-radius: 5px; 
            cursor: pointer; 
            font-size: 16px; 
        }

        input[type="submit"]:hover {
            background-color: #0056b3; 
        }

        h2 {
            text-align: center; 
            color: #333; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Player Status</h2>
        <form action="PlayerViewStatus" method="post">
            <div style="text-align: center;"> 
                <input type="submit" value="View Player Status">
            </div>
        </form>
    </div>
</body>
</html>

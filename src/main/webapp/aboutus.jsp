<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BCCI Website</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        #iframe-container {
            max-width: 1200px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }
        #iframe-container h2 {
            margin: 0;
            padding: 20px;
            background-color: #007bff;
            color: #fff;
            text-align: center;
        }
        iframe {
            border: none;
            width: 100%;
            height: 600px;
        }
    </style>
</head>
<body>
    <div id="iframe-container">
        <h2>Official BCCI Website</h2>
        <iframe src="https://www.bcci.tv/" frameborder="0"></iframe>
    </div>
</body>
</html>

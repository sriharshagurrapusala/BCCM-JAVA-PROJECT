<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coach Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 20px;
    }

    .container {
        background-color: #ffff00; 
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        padding: 20px;
        max-width: 600px;
        margin: 0 auto;
        text-align: center;
    }

    .container a {
        display: block;
        color: #000; 
        margin-bottom: 10px;
        text-decoration: none;
        padding: 10px 20px;
        background-color: #ffeb3b; 
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .container a:hover {
        background-color: #fdd835; 
    }

    .container p {
        color: #333; 
    }
</style>
</head>
<body>
<div class="container">
<%
    if(session.getAttribute("selectionstatus") != null && session.getAttribute("selectionstatus").equals("selected")) {
        if(session.getAttribute("position") != null) {
            if(session.getAttribute("position").equals("battingcoach")) {
%>
                <a href="battingcoachplayers.jsp">Go to Batting Coach Players Page</a>
<%
            } else if(session.getAttribute("position").equals("bowlingcoach")) {
%>
                <a href="bowlingcoachplayers.jsp">Go to Bowling Coach Players Page</a>
<%
            } else if(session.getAttribute("position").equals("wicketkeepingcoach")) {
%>
                <a href="wicketkeepingcoachplayers.jsp">Go to Wicket Keeping Coach Players Page</a>
<%
            } else if(session.getAttribute("position").equals("allroundercoach")) {
%>
                <a href="allroundercoachplayers.jsp">Go to All Rounder Coach Players Page</a>
<%
            }
        }
    } else {
%>
        <p>Access Denied</p>
        <a href="coachfunctions.jsp">Back</a>
<%
    }
%>
</div>
</body>
</html>

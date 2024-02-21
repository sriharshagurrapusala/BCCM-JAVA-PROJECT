<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #fffbf6; 
        color: #333; 
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #f5f5f5; 
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
    }

    .link {
        display: block;
        padding: 10px;
        margin-bottom: 10px;
        background-color: #f4e1d2; 
        color: #333; 
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    .link:hover {
        background-color: #c8e6c9; 
    }

    .logout-container {
        text-align: center;
    }

    .logout-button {
        padding: 10px 20px;
        background-color: #d1c4e9; 
        color: #333; 
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .logout-button:hover {
        background-color: #bbdefb; 
    }
</style>
</head>
<body>
<div class="container">
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //For HTTP 1.1

//For HTTP 1.0
response.setHeader("Pragma","no-cache"); //Don't Cache code
response.setHeader("Expires","0");		//Expire in Zero Seconds

//

if(session.getAttribute("pusername")==null)
{
	response.sendRedirect("playerlogin.jsp");
}

%>
    <a href="playerapplyforselection.jsp" class="link">Apply for Selection Process</a>
    <a href="playerviewstatus.jsp" class="link">Player View Status</a>
    <div class="logout-container">
        <form action="PlayerLogout" method="post">
            <input type="submit" value="Player Logout" class="logout-button">
        </form>
    </div>
</div>
</body>
</html>

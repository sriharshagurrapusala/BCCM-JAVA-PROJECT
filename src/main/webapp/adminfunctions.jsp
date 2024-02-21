<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    
    body {
        background-color: #d5f4e6; 
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .button-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 10px;
        margin-top: 20px;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #80ced6; 
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin: 5px;
    }

    .button:hover {
        background-color: #618685; 
    }

    
    .logout-container {
        text-align: center;
        margin-top: 20px;
    }

    .logout-button {
        padding: 10px 20px;
        background-color: #fefbd8; 
        color: #333; 
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .logout-button:hover {
        background-color: #fff9c4; 
    }
</style>
</head>
<body>

<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); //For HTTP 1.1
    
    //For HTTP 1.0
    response.setHeader("Pragma","no-cache"); //Don't Cache code
    response.setHeader("Expires","0");        //Expire in Zero Seconds
    
    //
    
    if(session.getAttribute("username")==null)
    {
        response.sendRedirect("home.jsp");
    }
    //out.println(session.getAttribute("username"));
    
%>

<div class="button-container">
    <a href="adminviewplayers.jsp" class="button">View Players</a>
    <a href="managecoaches.jsp" class="button">Manage Coaches</a>
    <a href="viewt20selectionteam.jsp" class="button">View T20 Selection Team</a>
    <a href="viewodiselectionteam.jsp" class="button">View ODI Selection Team</a>
    <a href="viewtestselectionteam.jsp" class="button">View Test Selection Team</a>
</div>

<div class="logout-container">
    <form action="AdminLogout" method="post">
        <input type="submit" value="Logout" class="logout-button">
    </form>
</div>

</body>
</html>

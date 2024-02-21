<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Coach Registration Form</title>
    <style>
        body {
            background-color:#55ACEE;
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #FFFFFF; 
            text-shadow: 2px 2px 4px #000000; 
        }

        table {
            width: 70%;
            margin: 0 auto;
            background-color: rgba(0, 0, 0, 0.5); 
            border-radius: 10px;
            padding: 20px;
            color: #FFFFFF; 
        }

        th {
            background-color: #FF5733; 
            color: #FFFFFF;
            padding: 10px;
            font-size: 24px;
        }

        td {
            padding: 10px;
        }

        label {
            font-size: 20px;
            color: #FFFFFF;
        }

        input[type="text"],
        input[type="password"],
        input[type="radio"] {
            padding: 8px;
            width: 100%;
            border: 1px solid #FF5733; 
            border-radius: 5px;
            box-sizing: border-box;
            margin-top: 5px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            outline: none;
            border-color: #FFFFFF; 
        }

        input[type="radio"] {
            margin-right: 10px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            background-color: #FF5733; 
            color: #FFFFFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            margin-top: 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #FF8C42; 
        }
    </style>
</head>
<body>
    <h1>Coach Registration Form</h1>

    <form action="CoachRegister" method="post">
        <table border="1">
            <tr align="center">
                <th colspan="2">Sign up</th>
            </tr>
            <tr>
                <td><label>Coach Name</label></td>
                <td><input type="text" name="cname1"></td>
            </tr>
            <tr>
                <td><label>Coach User Name</label></td>
                <td><input type="text" name="cuname1"></td>
            </tr>
            <tr>
                <td><label>Password</label></td>
                <td><input type="password" name="cpass1"></td>
            </tr>
            <tr>
                <td><label>Position</label></td>
                <td>
                    <input type="radio" name="position1" value="battingcoach">
                    <label>Batting Coach</label>
                    <input type="radio" name="position1" value="bowlingcoach">
                    <label>Bowling Coach</label>
                    <input type="radio" name="position1" value="wicketkeepingcoach">
                    <label>Wicket Keeping Coach</label>
                    <input type="radio" name="position1" value="allroundercoach">
                    <label>All-Rounder Coach</label>
                </td>
            </tr>
            <tr>
                <td><label>Experience</label></td>
                <td><input type="text" name="experience1" placeholder="Enter number"></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="Submit" value="Register">
                    <input type="reset">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

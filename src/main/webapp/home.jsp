<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="styles/home.css">
    <style>
        /* Additional CSS for the header */
        .header {
            background: linear-gradient(to right, #007bff, #0062cc); /* Gradient background */
            color: #fff; /* White text color */
            text-align: center;
            padding: 20px 0; /* Padding top and bottom */
            margin-bottom: 20px; /* Margin to separate header from content */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow effect */
        }
        .header h1 {
            font-size: 28px; /* Larger font size for title */
            margin: 0; /* Remove default margin */
            font-weight: bold; /* Bold font weight */
            text-transform: uppercase; /* Uppercase text */
            text-shadow: 0 0 10px rgba(255, 255, 255, 0.8), 0 0 20px rgba(255, 255, 255, 0.5), 0 0 30px rgba(255, 255, 255, 0.3); /* Glow effect */
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Board of Control for Cricket Management (BCCM)</h1>
    </div>
    <div class="container">
        <!-- Admin link -->
        <div class="link-img">
            <a href="adminlogin.jsp">
                <img src="images/admin.jpg" alt="Admin">
            </a>
            <div class="link-text">Admin</div>
        </div>

        <!-- Player link -->
        <div class="link-img">
            <a href="player.jsp">
                <img src="images/player.jpg" alt="Player">
            </a>
            <div class="link-text">Player</div>
        </div>

        <!-- Coach link -->
        <div class="link-img">
            <a href="coach.jsp">
                <img src="images/coach.jpg" alt="Coach">
            </a>
            <div class="link-text">Coach</div>
        </div>

        <!-- About Us link -->
        <div class="link-img">
            <a href="aboutus.jsp">
                <img src="images/aboutus.jpg" alt="About Us">
            </a>
            <div class="link-text">About Us</div>
        </div>
    </div>
</body>
</html>

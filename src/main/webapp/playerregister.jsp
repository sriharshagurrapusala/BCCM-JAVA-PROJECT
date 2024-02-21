<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Player Registration Form in Table</title>
<style>
  /* Style to make table transparent */
  table {
    background-color: transparent;
    border-collapse: collapse;
  }
  /* Style for table header */
  th {
    background-color: black;
    color: white;
    padding: 10px;
  }
  /* Style for table cells */
  td {
    padding: 10px;
    color: Dark Gray;
    background-color: rgba(128, 128, 128, 0.5); /* Adjust alpha (4th value) for transparency */
    
  }
  
  label {
    font-size: 20px; /* Adjust as needed */
  }
  
  body {
    background-image: url('images/playerRegistration.jpg');
    background-size:100%; /* Adjust as needed */
   background-position:center; /* Adjust as needed */
  }  


  
</style>
</head>
<body>

<form action="PlayerRegister" method="post">

<h1 align="center"> <font color="white"> Player Registration Form </font> </h1>

<table border="1" width="40%" height="600px" align="center">
<!---row1--->
<tr align="center">
<th colspan="2"><font size="10">Sign up </font></th>
</tr>

<!---row2--->
<tr>
<td>
<label>Player Name</label></td>
<td><input type="text"  name="pname1"></td>
</tr>

<!---row3--->
<tr>
<td><label>Player User Name</label></td>
<td><input type="text"  name="puname1"></td>
</tr>

<!---row4--->
<tr>
<td><label>Password</label></td>
<td><input type="password"  name="pass1"></td>
</tr>

<!---row5--->
<tr>
<td><label>Date of Birth</label></td>
<td><input type="date"  name="dob1"></td>
</tr>

<!---row6--->
<tr>
<td><label>Address</label></td>
<td><textarea rows="4" cols="30" name="address1"></textarea></td>
</tr>

<!---row7--->
<tr>
<td><label>Contact Number</label></td>
<td><input type="text"  name="contact1"></td>
</tr>

<!-- row8 -->
<tr>
<td><label>Email</label></td>
<td><input type="email"  name="email1"></td>
</tr>
<!---row9--->
<tr align="center">
<td colspan="2"><input type="Submit" value="Register">
<input type="reset">
</td>
</tr>

</table>
</form>
</body>
</html>

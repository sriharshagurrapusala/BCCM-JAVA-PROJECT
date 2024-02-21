<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Player Application Form in Table</title>
<style>
  /* Style to make table transparent */
  table {
    background-color: rgba(0, 0, 0, 0); /* Transparent */
    border-collapse: collapse;
  }
  /* Style for table header */
  th {
    background-color: #007bff; /* Blue */
    color: white;
    padding: 10px;
  }
  /* Style for table cells */
  td {
    padding: 10px;
    color: #333; /* Dark Gray */
  }
  
  label {
    font-size: 20px; /* Adjust as needed */
  }
  
  body {
    background-color: springgreen; /* Spring green */
    background-size: 100%; 
  }  
</style>
</head>
<body>

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

<%
    String applicationfilledstatus = (String) request.getAttribute("applicationFilledStatus");
    if (applicationfilledstatus != null && applicationfilledstatus.equals("filled")) {
%>
        <script type="text/javascript">
            window.alert("Application already received");
        </script>
<%
    }
%>





<form action="PlayerApplyForSelection" method="post">

<h1 align="center"> <font color="#007bff"> Player Application Form  </font> </h1>

<table border="1" width="40%" height="600px" align="center">
<!---row1--->
<tr align="center">
<th colspan="2"><font size="10">Apply </font></th>
</tr>

<!---row2--->
<tr>
<td>
<label>Batting</label></td>
<td><select name="batting1">
	<option value="yes">Yes</option>
	<option value="no">No</option>
</select></td>
</tr>

<tr>
<td>
<label>Bowling</label></td>
<td><select name="bowling1">
	<option value="yes">Yes</option>
	<option value="no">No</option>
</select></td>
</tr>

<!---row4--->
<tr>
<td>
<label>Wicket Keeping</label></td>
<td><select name="wicketkeeping1">
	<option value="yes">Yes</option>
	<option value="no">No</option>
</select></td>
</tr>

<!---row5--->
<tr>
<td>
<label>Highest Runs</label></td>
<td><input type="text" name="hruns1">
</td>
</tr>
<!---row6--->
<tr>
<td>
<label>Highest Wickets</label></td>
<td><input type="text" name="hwickets1">
</td>
</tr>

<!---row7--->
<tr>
<td>
<label>Highest Stump Outs</label></td>
<td><input type="text" name="hstumpouts1">
</td>
</tr>


<!---row9--->
<tr align="center">
<td colspan="2"><input type="Submit" value="Apply" style="background-color:#28a745; color:#fff;">
<input type="reset" style="background-color:#dc3545; color:#fff;">
</td>
</tr>

</table>
</form>
</body>
</html>

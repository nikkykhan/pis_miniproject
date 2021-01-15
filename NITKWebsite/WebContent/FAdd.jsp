<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" type="text/css" href="Page.css"> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="login">
<form action="AddFac" method="post" enctype="multipart/form-data">
<% 
HttpSession ses=request.getSession();
if(ses.getAttribute("id")==null)
{
	response.sendRedirect("AdminLogin.jsp");
}
%>
${message}<br>
<label><b>Name</b></label><br><input type="text" name="name" id="id"><br><br>
<label><b>Contact Number</b></label><br><input type="text" name="con" id="id"><br><br>
<label><b>Email-Address</b></label><br><input type="text" name="eadd" id="id"><br><br>
<label><b>Faculty</b></label><br>
<select id="fac" name="fac">
        <option selected>-Choose Faculty-</option>
        <option value="hod">HOD</option>
        <option value="prof">Professor</option>
        <option value="assp">Assistant-Professor</option>
        <option value="assop">Associate-Professor</option>
        <option value="adj">Adjunct Faculty</option>
        <option value="temp">Temporary Lecturer</option>
    </select><br><br>
<label><b>Picture</b></label><br><input type="file" name="pic" id="id"><br><br>
<input type="button" value=" GO TO DELETE USER" id="login" onclick="window.location='Delete.jsp'"><br><br>
<input type="submit" name="submit" id="login">
</form>
<script src='action.js' type='text/javascript'></script>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" type="text/css" href="Page.css"> </head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="login">
<form action="AdminLogin" method="post">
${message}
<label><b>Login Id</b></label><br>
<input type="text" name="id" id="id"><br><br>
<label><b>Password</b></label><br>
<input type="password" name="pass" id="pass"><br><br>
<input type="submit" name="login" id="login" value="Login">
</form>
</div>
</body>
</html>
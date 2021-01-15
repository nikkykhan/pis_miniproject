<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.http.*"%>
<html>
<head><link rel="stylesheet" type="text/css" href="Page.css"> </head>
<body>
<form action="Logout" method="post">
<% 
HttpSession ses=request.getSession();
if(ses.getAttribute("id")==null)
 {
	response.sendRedirect("AdminLogin.jsp");
 }
%>

<%
String id = request.getParameter("name");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/nitk";
String userId = "root";
String password = "root123";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>HOD</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
//-----------------------------------------------------------HOD------------------------------------------------------------//
String sqlhod ="SELECT * FROM hod";

resultSet = statement.executeQuery(sqlhod);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=hod'>DELETE</a></td>

</tr>
<%} %>
</table>
<br><br><br>


<!-- -----------------------------------------------------------PROFESSOR------------------------------------------------ -->

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>PROFESSOR</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%
String sqlp ="SELECT * FROM prof";

resultSet = statement.executeQuery(sqlp);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=p'>DELETE</a></td>

</tr>
<%} %>
</table>
<br><br><br>


<!-- -----------------------------------------------------------ASSITANT-PROFESSOR------------------------------------------------ -->


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>ASSITANT PROFESSOR</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%

String sqlassp ="SELECT * FROM ass_prof";

resultSet = statement.executeQuery(sqlassp);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=assp'>DELETE</a></td>

</tr>
<% }%>
</table>
<br><br><br>
<!-- -----------------------------------------------------------ASSOCIATE-PROFESSOR------------------------------------------------ -->


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>ASSOCIATE PROFESSOR</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%
String sqlasso ="SELECT * FROM asso_prof";

resultSet = statement.executeQuery(sqlasso);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=asso'>DELETE</a></td>

</tr>

<%} %>
</table>
<br><br><br>

<!-- -----------------------------------------------------------ADJUNCT-FACULTY------------------------------------------------ -->

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>ADJUNCT FACULTY</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%

String sqladj ="SELECT * FROM adj_faculty";

resultSet = statement.executeQuery(sqladj);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=adj'>DELETE</a></td>

</tr>
<% }%>
</table>
<br><br><br>

<!-- -----------------------------------------------------------TEMPORARY-FACULTY------------------------------------------------ -->

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<td>TEMPORARY LECTURER</td>
</tr>
<tr bgcolor="#23463f">
<td><label><b>Faculty Name</b></label></td>
<td><label><b>Contact Number</b></label></td>
<td><label><b>Email Address</b></label></td>
<td><label><b>Profile Photo</b></label></td>
<td><label><b>Action</b></label></td>
</tr>
<%

String sqltemp ="SELECT * FROM temp_lect";

resultSet = statement.executeQuery(sqltemp);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("con") %></td>
<td><%=resultSet.getString("email") %></td>
<td><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150></td>
<td style="color:#6abadeba"><a href='Fdelete.jsp?d=<%=resultSet.getString("con") %>&t=temp'>DELETE</a></td>

</tr>
<%

}
} catch (Exception e) {
e.printStackTrace();
}
%>
</table >
<br>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr><td><input type="button" value="ADD NEW FACULTY" id="login" onclick="window.location='FAdd.jsp'"></td>
<td><input type="submit" id="login" value="Logout"></td></tr>
</table>
</form>
</body>
</html>
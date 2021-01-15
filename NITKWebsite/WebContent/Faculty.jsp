<%@page import="java.sql.DriverManager"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head><link rel="stylesheet" type="text/css" href="Home.css"></head>
<body>
 <div class="sidebar1">
        <header><li id="logo" class="items"><img src="image/NITK_logo.png" alt="nitk.ac.in"></li></header>
        <ul>
            <li><a href="Home.jsp"><i class="fas fa-qrcode">Home</i></a></li>
                <ul class="subitems">
                    <li class="sub"><a href="UG.jsp">Undergraduate</a></li>
                    <li class="sub"><a href="PG.jsp">Postgraduate</a></li>
                    <li class="sub"><a href="Doctoral.jsp">Doctoral</a></li>
                </ul></li>
            <li><a href="Faculty.jsp"><i class="fas fa-qrcode">Faculty</i></a></li>
            <li><a href="Placement.jsp"><i class="fas fa-qrcode">Placement</i></a></li>
            <li><a href="Contact.jsp"><i class="fas fa-qrcode">Contact Us</i></a></li>
            <li><a href="AdminLogin.jsp"><i class="fas fa-qrcode">Admin Pannel</i></a></li>
        </ul>
    </div>
    <section class="content">
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
<h2><b>HOD</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
try{ 
connection = DriverManager.getConnection(connectionUrl, userId, password);
statement=connection.createStatement();
//-----------------------------------------------------------HOD------------------------------------------------------------//
String sqlhod ="SELECT * FROM hod";
int hod=1;
resultSet = statement.executeQuery(sqlhod);
while(resultSet.next()){
%>
<%if (hod==1){%>
<tr>
<%}%>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic")%>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%hod++; 
if (hod==7){%>
</tr>
<%hod=1;}
}%>
</table>
<br>
<!--------------------------------------------------------PROFESSOR-------------------------------------------------  -->
<h2><b>PROFESSOR</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
String sqlp ="SELECT * FROM prof";
int p=1;
resultSet = statement.executeQuery(sqlp);
while(resultSet.next()){

%>
<%if (p==4){%>
<tr>
<%} %>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%p++; 
if (p==7){%>
</tr>
<%p=1;}
}%>
</table>
<br>
<!-----------------------------------------------------ASSITANT PROFESSOR------------------------------------------------  -->
<h2><b>ASSISTANT PROFESSOR</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
String sqlassp ="SELECT * FROM ass_prof";
int ass=1;
resultSet = statement.executeQuery(sqlassp);
while(resultSet.next()){

%>
<%if (ass==1){%>
<tr>
<%} %>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%ass++; 
if (ass==7){%>
</tr>
<%ass=1;}
}%>
</table>
<br>
<!--------------------------------------------------------------ASSOCIATE PROFESSOR--------------------------------------------  -->
<h2><b>ASSOCIATE PROFESSOR</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
String sqlasso ="SELECT * FROM asso_prof";
int asso=1;
resultSet = statement.executeQuery(sqlasso);
while(resultSet.next()){

%>
<%if (asso==1){%>
<tr>
<%} %>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%asso++; 
if (asso==7){%>
</tr>
<%asso=1;}
}%>
</table>
<br>
<!-- --------------------------------------------ADJUNCT FACULTY----------------------------------------------------------- -->
<h2><b>ADJUNCT FACULTY</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
String sqladj ="SELECT * FROM adj_faculty";
int adj=1;
resultSet = statement.executeQuery(sqladj);
while(resultSet.next()){

%>
<%if (adj==4){%>
<tr>
<%} %>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%adj++; 
if (adj==4){%>
</tr>
<%adj=1;}
}%>
</table>
<br>
<!-- --------------------------------------------------------TEMPORARY FACULTY--------------------------------------------- -->
<h2><b>TEMPORARY FACULTY</b></h2>
<table cellspacing=10 cellpadding=10>
<% 
String sqltemp ="SELECT * FROM temp_lect";
int temp=1;
resultSet = statement.executeQuery(sqltemp);
while(resultSet.next()){

%>
<%if (temp==1){%>
<tr>
<%} %>
<td style="text-align: center"><img src="image/<%=resultSet.getString("pic") %>" width=150 height=150><br>
<%=resultSet.getString("name") %><br>
<%=resultSet.getString("con") %><br>
<%=resultSet.getString("email") %>
</td>
<%temp++; 
if (temp==6){%>
</tr>
<%temp=1;}
}%>
</table>
</section>
<% }catch (Exception e) {System.out.println(e);} %>

</body>
</html>
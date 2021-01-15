<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//------------------------------Ass Prof-------------------------------------//
if("assp".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from ass_prof where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}

//--------------------------------HOD----------------------------------------//
if("hod".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from hod where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}

//-----------------------------------Prof-------------------------------------//
if("p".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from prof where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}

//--------------------------------adj faculty----------------------------------//
if("adj".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from adj_faculty where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}


//---------------------------------temp faculty----------------------------------//
if("temp".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from temp where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}


//-------------------------------asso Faculty------------------------------------//
if("asso".equals(request.getParameter("t")))
{
	String con=request.getParameter("d");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitk","root","root123");
	Statement smt=cn.createStatement();
	smt.executeUpdate("delete from asso_prof where con='"+con+"'");
	response.sendRedirect("Delete.jsp");
}


%>

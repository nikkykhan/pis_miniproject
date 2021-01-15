package add.faculty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;






public class AddAssProfJDBC {
	final static String protocol="jdbc:mysql://localhost:3306/nitk";
	final static String user="root";
	final static String password="root123";
	public static boolean insertAssFaculty(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into ass_prof(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}
	
	
	public static boolean insertAssoFaculty(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into asso_prof(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}
	
	
	public static boolean insertAdjFaculty(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into adj_faculty(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}
	
	
	
	public static boolean insertProf(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into prof(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}
	
	
	public static boolean insertHOD(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into hod(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}
	
	
	public static boolean insertTemp(FacultyGS C)
	{  
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		String smt= "insert into temp_lect(name,con,email,pic) values (?,?,?,?)";
		PreparedStatement statement=cn.prepareStatement(smt);
		statement.setString(1, C.getName());
		statement.setString(2, C.getContact());
		statement.setString(3, C.getEmail());
		statement.setString(4, C.getPic());
		statement.executeUpdate();
		return true;
		}
	
	catch(Exception e)
	{System.out.println(e);}
	return false;	
	}


}

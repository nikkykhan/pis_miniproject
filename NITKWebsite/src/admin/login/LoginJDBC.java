package admin.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;




public class LoginJDBC {
	static PreparedStatement ps;
	final static String protocol="jdbc:mysql://localhost:3306/nitk";
	final static String user="root";
	final static String password="root123";
	public static LoginGS checkPassword(String loginid,String pwd)
	{
		LoginGS A=new LoginGS();
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection(protocol,user,password);
		
		Statement smt=cn.createStatement();
		String q="select * from admin where loginid='"+loginid+"'and pass='"+pwd+"'";
		ResultSet rs=smt.executeQuery(q);
		if(rs.next())
		   {
			
			A.setLoginid(rs.getString(1));
			A.setName(rs.getString(2));
			A.setPassword(rs.getString(3));
			return (A);
		   }
		else{
			 return null;
		    }
		
	    }
	
	catch(Exception e)
	{System.out.println(e);
	 return null;}
		
	}


}

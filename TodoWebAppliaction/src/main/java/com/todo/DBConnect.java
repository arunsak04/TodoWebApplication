package com.todo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnect {

	public static void main(String[] args) {

Connection con=null;
PreparedStatement ps=null;
Statement stm=null;
ResultSet rs=null;
String name="rahmati";

try {
	//create and register JDBC
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	//Established connection
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
	
	stm=con.createStatement();
	
	String s="select name,username from user";
	
	//execute a query
	 rs=stm.executeQuery(s);
	
	//process the result
	while(rs.next())
	{
		String un=rs.getString(2);
		if(name.equals(un))
		{
			System.out.println(rs.getString(1));
		}
	}
	

}
catch (ClassNotFoundException e) {
	e.printStackTrace();
} catch (SQLException e) {
	e.printStackTrace();

}
	}

}

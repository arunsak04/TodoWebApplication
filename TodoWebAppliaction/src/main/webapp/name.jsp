<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="com.todo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODO</title>
</head>
<body>

<%

if(TodoLogin.username.equals("xyz123"))
{
	
}else
{
	Connection con=null;
	PreparedStatement ps=null;
	Statement stm=null;
	ResultSet rs=null;

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
			if(TodoLogin.username.equals(un))
			{
				TodoLogin.name=rs.getString(1);
				response.sendRedirect("home.jsp");
			}
		}
		

	}
	catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();

	}
}

%>

</body>
</html>
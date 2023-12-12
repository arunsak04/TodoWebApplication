<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODO</title>
</head>
<body>

<%
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

String name= request.getParameter("name");
String email= request.getParameter("email");
String phoneno= request.getParameter("phone");
String gender= request.getParameter("gender");
String dob= request.getParameter("dob");
String username= request.getParameter("username");
String password= request.getParameter("password");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	ps=con.prepareStatement("insert into user values(?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);   
	ps.setString(3, phoneno);
	ps.setString(4, gender);
	ps.setString(5, dob);
	ps.setString(6, username);
	ps.setString(7, password);
	
	ps.executeUpdate();
	%>
		<span class="message1">Account created successfully</span>
	<% 
	response.sendRedirect("login.jsp");
}
catch (Exception e) {
	
}
  
  

%>

</body>
</html>
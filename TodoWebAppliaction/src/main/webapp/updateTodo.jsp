<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="java.sql.*"%>
<%@page import="com.todo .*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update TODO</title>
</head>
<body>

<%
Connection con=null;
Statement st=null;
ResultSet rs=null;

String title= request.getParameter("title");
String description= request.getParameter("description");
String status= request.getParameter("status");
String date= request.getParameter("date");
String a=request.getParameter("id");
int id=Integer.parseInt(a);

try{
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	st=con.createStatement();
	
	String update = "UPDATE todolist SET title = ?, description=?, status=?,date=? WHERE id = ?";
	
	PreparedStatement ps=con.prepareStatement(update);
	ps.setString(1, title);
	ps.setString(2, description);
	ps.setString(3, status);
	ps.setString(4, date);
	ps.setInt(5, id);
	
	ps.executeUpdate();
	
	%>
	<span class="message1  ">update...</span>
	<% 
	
	response.sendRedirect("todoDisplay.jsp");
	
	
	con.close();
}
catch(Exception e)
{
	
}

%>

</body>
</html>
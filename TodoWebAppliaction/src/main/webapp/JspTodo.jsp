<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
    <%@page import="com.todo.TodoLogin" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String username=TodoLogin.username;
Connection con=null;
PreparedStatement ps=null;
Statement st=null;
ResultSet rs=null;


int id=TodoLogin.a;
String title= request.getParameter("title");
String description= request.getParameter("description");
String status= request.getParameter("status");
String date= request.getParameter("date");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	ps=con.prepareStatement("insert into todolist values(?,?,?,?,?,?)");
	ps.setInt(1, id);
	ps.setString(2, title);   
	ps.setString(3, description);
	ps.setString(4, status);
	ps.setString(5, date);
	ps.setString(6, username);
	
	ps.executeUpdate();
	
	response.sendRedirect("todoDisplay.jsp");
}
catch (Exception e) {
	
}
  
  

%>

</body>
</html>
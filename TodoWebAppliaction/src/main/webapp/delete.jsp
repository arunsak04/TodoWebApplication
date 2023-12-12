<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="com.todo.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete TODO</title>
</head>
<body>

<%
Connection con=null;
Statement st=null;
ResultSet rs=null;

String a=request.getParameter("id");
int id=Integer.parseInt(a); 

try{
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
	st=con.createStatement();
	st.execute("delete from todolist where id="+id);
	con.close(); 
	
	%>
		<span class="message">deleted...</span>
	<% 
	
	response.sendRedirect("todoDisplay.jsp");
}
catch(Exception e)
{
	
}

%>
</body>
</html>
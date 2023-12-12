<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<%@page import="com.todo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Connection con=null;
Statement st=null;
ResultSet rs=null;

String password1= request.getParameter("password1");
String password2= request.getParameter("password2");
String username= request.getParameter("username");

if(password1.equals(password2))
{
	try{
		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root","root");
		st=con.createStatement();
		
		String update = "UPDATE user SET password = ? WHERE username = ?";
		
		PreparedStatement ps=con.prepareStatement(update);
		ps.setString(1, password1);
		ps.setString(2, username);

		
		ps.executeUpdate();
		
		response.sendRedirect("login.jsp");
		
		
		con.close();
	}
	catch(Exception e)
	{
		
	}
}
else
{
	out.print("<span style=\"background: rgb(247, 109, 109); color: red; font-size:25px;  position: absolute; bottom: 285px; left: 550px;\">password and confirm password not matcching</span>");
	
	RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
	rd.include(request, response);
	
}
%>

</body>
</html>
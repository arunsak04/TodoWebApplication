package com.todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todologin")
public class TodoLogin extends HttpServlet {
	public static String username ="xyz123";
	public static String name="xyz123";
	public static int a=0;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		username=req.getParameter("username");
		String password=req.getParameter("password");
		
		
		try {
			//create and register JDBC
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//Established connection
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
			
			//create a statement
			PreparedStatement ps=con.prepareStatement("select username,password from user where username = ? and password = ?;");
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			//Execute query
			ResultSet rs = ps.executeQuery();
			
			
			if(rs.next())
			{
				PrintWriter pw = resp.getWriter();
 				pw.print("<div id='liveAlertPlaceholder'>Successfull Login</div>");
				//send response.
				
				resp.sendRedirect("name.jsp");
			}
			else
			{
				//set contain type...
				resp.setContentType("text/html");
				
				PrintWriter pw = resp.getWriter();
				pw.print("<div class='alert alert-danger mt-0 mb-0' role='alert'>username or password is incorrect</div>");
				pw.print("<div class='alert d-flex align-content-center justify-content-center fz-2 alert-danger mt-0' role='alert'>username or password is incorrect</div>");
				
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				rd.include(req, resp);
			}
	
		}
		catch (ClassNotFoundException e) {
			 System.out.println(e);
		} catch (SQLException e) {
			System.out.println(e);
		
	}
	

}}

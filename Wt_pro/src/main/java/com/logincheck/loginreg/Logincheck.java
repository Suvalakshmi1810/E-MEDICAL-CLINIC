package com.logincheck.loginreg;

//import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.awt.Window;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Servlet implementation class Logincheck
 */
@WebServlet("/Logincheck")
public class Logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();   // creating session
		Connection con = null;
		try
		{     
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root123");
		PreparedStatement pst = con.prepareStatement("select *from reg where username=? and password=?");
		pst.setString(1,uname);
		pst.setString(2, upwd);
		pst.executeQuery();
		ResultSet rs = pst.executeQuery();


		if(rs.next())
		{
			
		//session.setAttribute("name", rs.getString("uname1"));
			if(uname.equals("admin") && upwd.equals("1234admin"))
			{
				response.sendRedirect("loading3.html");
			}
			else {
				//session
				
		        
		        

		       

			        String sessionId = session.getId();
			        LocalDateTime now = LocalDateTime.now();
			        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

			        session.setAttribute("sessionId", sessionId);
			        session.setAttribute("date", now.format(formatter));
			        session.setAttribute("time", now.toLocalTime().toString());
			       // session.setAttribute("visitCount", counter);

			       
			
  
			session.setAttribute("creating", session.getCreationTime());
			session.setAttribute("uname",rs.getString("username"));
			session.setAttribute("fullname",rs.getString("fullname"));
			session.setAttribute("address", rs.getString("address"));
			session.setAttribute("phoneno", rs.getString("phoneno"));
			
			String full_name = rs.getString("fullname").toString();
			String username = rs.getString("username").toString();
			String address = rs.getString("address").toString();
			String phoneno = rs.getString("phoneno").toString();
			String gender = rs.getString("gender").toString();
//			
//			
// 			
			Cookie cookie = new Cookie("fullname",full_name);
			cookie.setMaxAge(100*100);
			
			response.addCookie(cookie);
//			
			Cookie cookie1 = new Cookie("username", username);
			cookie1.setMaxAge(100*100);
			response.addCookie(cookie1);
//			
			Cookie cookie2 = new Cookie("address", address);
			cookie2.setMaxAge(100*100);
			response.addCookie(cookie2);
//			
			Cookie cookie3 = new Cookie("phoneno", phoneno);
			cookie3.setMaxAge(100*100);
			response.addCookie(cookie3);
//			
			Cookie cookie4 = new Cookie("gender", gender);
			cookie4.setMaxAge(100*100);
			response.addCookie(cookie4);

//			response.sendRedirect("apoint.jsp");
			// request.getRequestDispatcher("session.jsp").forward(request, response);
	
				response.sendRedirect("http://localhost:8080/Wt_pro/homepage/Home_page.jsp");
			}
			
		}
		else
		{
		request.setAttribute("status","failed");
		//dispatcher= request.getRequestDispatcher("login.jsp"); 

		 response.sendRedirect("login.jsp");
		}

		//dispatcher.forward(request, response);


		}
		catch(Exception e)
		{

		}

		}
	}



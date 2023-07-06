package com.uniquedeveloper.transaction;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.format.DateTimeFormatter;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.IconifyAction;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/payment")
public class Transaction extends HttpServlet{

	
	private static final long serialVersionUID = 1L;
	
	PrintWriter outputPrintWriter = null;
	Connection connection;
	
	PreparedStatement pst;
	PreparedStatement pst1;
	PreparedStatement pst2;
	String cardnum = "";
	String cardname = "";
	int month;
	int year;
	int cvv;
	int amt =0;
	int result =0;
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		outputPrintWriter = response.getWriter();
		
		Date time_obj = new Date(session.getLastAccessedTime());
		
		String time = time_obj.toString();
		
		Connection con;
		
		cardnum = request.getParameter("cardnum");
		cardname = request.getParameter("cardname");
		month = Integer.parseInt(request.getParameter("month"));
		year  = Integer.parseInt(request.getParameter("year"));
		cvv = Integer.parseInt(request.getParameter("cvv"));
		amt = Integer.parseInt(request.getParameter("amount"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useSSL=false","root","root123");
			
			ServletContext context = getServletContext();
			
			pst = con.prepareStatement("select * from accounts where acc_number=? and pin=?");
			pst.setString(1,cardnum);
			pst.setInt(2,cvv);
			ResultSet rs = pst.executeQuery();
			boolean row = false;
			row= rs.next();
			if(row==true)
			{
				Date lastAccessTime = new Date(session.getLastAccessedTime());
				String time1 = lastAccessTime.toString();
				
				pst1 = con.prepareStatement("insert into  transaction(acc_num,date,deposit) values (?,?,?)");
				pst1.setString(1, cardnum);
				pst1.setString(2, time1);
				pst1.setInt(3, amt);
		        int i=pst1.executeUpdate();
		        if(i<=0)
		        {
		        	session.setAttribute("status","fail");
		        }
		        else
		        {
		        	int money=rs.getInt(4);
		        	money=money-amt;
		        	pst2 = con.prepareStatement("Update accounts set amount=? where acc_number=?");
		        	pst2.setInt(1, money);
					pst2.setString(2, cardnum);
					i=pst2.executeUpdate();
					if(i>0)
					{
						response.sendRedirect("success.jsp");
					}
		        	
		        }
			}
			else {
				
			}
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		}
	
}

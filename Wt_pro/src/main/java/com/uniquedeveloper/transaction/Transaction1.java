package com.uniquedeveloper.transaction;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * Servlet implementation class Transaction1
 */
@WebServlet("/Transaction")
public class Transaction1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PrintWriter output = null;
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	boolean row;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transaction1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		output = response.getWriter();
		String result="";
		String  accno = request.getParameter("accno");
		int pinno;
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?useSSL=false","root","root123");

		ServletContext context = getServletContext();
		context.setAttribute("accno", accno);


		pinno = Integer.parseInt(request.getParameter("pinno"));
		int tem=1215;
		pst = con.prepareStatement("select * from acc_holder where acc_num=? and pin=?");
		pst.setString(1,accno);
		pst.setLong(2,pinno);
		rs = pst.executeQuery();

		row = false;

		row= rs.next();

		if(row == true)
		{
		result = rs.getString(1);
		context.setAttribute("accno", result);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/transaction_sec");

		if(dispatcher==null)
		{

		}
		dispatcher.forward(request,response);
		con.close();
		}
		else
		{

		response.setContentType("text/html");
		output.print(row);
		output.println(accno);
		output.println(pinno);
		output.println("result is"+result+" yeah");
		


		}


		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}

		}


}

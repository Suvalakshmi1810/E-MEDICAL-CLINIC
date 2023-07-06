<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv ="refresh" content="2;url=regsuccess.jsp"/>
<title>REGISTER</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String fname = request.getParameter("fname");
String uname = request.getParameter("uname");
String password = request.getParameter("pw");
String address  = request.getParameter("address");
String phn = request.getParameter("pn");
String gender = request.getParameter("gd");
try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root123");
 Statement st = conn.createStatement();
 ResultSet rs = st.executeQuery("select * from reg where username='" + uname + "'");


	if(rs.next())
	{
	    //	out.println("<html><head><style> h1{color:white;text-align:center;} body{ height: 100vh;background-image: linear-gradient(to bottom, #070c13, #152a36, #104a59, #006c75, #0e9089);background-size: 100% 100%; background-position: center;background-repeat: no-repeat;}</style></head>");
		//out.println("<body>");
		//out.println("<h1>Username already exists.Try another username</h1>");
		//out.println("</body>");
		response.sendRedirect("alreadyexist.jsp");
	}
	else
	{
		Statement st1 = conn.createStatement();

 int i = st1.executeUpdate("insert into reg values('" + fname + "','" + uname
 + "','" + password + "','" + address + "','" + phn + "','" + gender + "')");
 out.println("<html><head><style>a{color:white;text-decoration:none;font-size:20px;} h1{color:white;text-align:center;} body{ height: 100vh;background-image: linear-gradient(to bottom, #070c13, #152a36, #104a59, #006c75, #0e9089);background-size: 100% 100%; background-position: center;background-repeat: no-repeat;}</style></head>");
	out.println("<body>");
 out.println("<h1>Thank you "+fname+" for register !</h1>");

 out.println("</body>");
 //response.sendRedirect("login.jsp");
		 
	}

} catch (Exception e) {
 System.out.print(e);
 e.printStackTrace();
}
%>
</body>
</html>
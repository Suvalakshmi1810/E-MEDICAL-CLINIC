<%@page import="java.awt.Desktop.Action"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String userid = request.getParameter("uname1");

session.setAttribute("usernamea", userid);
String password = request.getParameter("pw1");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root123");
Statement st = con.createStatement();
Statement st1 = con.createStatement();
ResultSet rs = st.executeQuery("select * from reg where username='" + userid + "' and password='" + password + "'");
//ResultSet rs1 = st1.executeQuery(" update login set username='" + userid + "' where id='1' ");
//Statement st1,st2;
//ResultSet rs,rs2;
//String query1,query2;
//query1 = "select * from reg where username='" + userid + "' and password='" + password + "';";

//query2="update login set username='" + userid + "' where id='1';";

//st1 = con.createStatement();
//st2=con.createStatement();

//rs = st1.executeQuery(query1);

try {
if( rs.next()){
 //if (rs.getString("password").equals(password) && rs.getString("username").equals(userid)) {
  out.println("Welcome '"+userid+"'");
  out.println("<a href=apoint.jsp>Appointment form </a>");
  
 } else {
  out.println("Invalid password or username.");
  out.println("<a href=login.jsp>Try again</a>");
 }
} catch (Exception e) {
 e.printStackTrace();
}
%>
</body>
</html>
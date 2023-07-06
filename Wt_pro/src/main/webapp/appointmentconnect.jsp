<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
String address  = request.getParameter("address");

String phn = request.getParameter("pn");
String gender = request.getParameter("gn");
String service  = request.getParameter("service");
String date = request.getParameter("date");
String time = request.getParameter("time");

try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root123");
 Statement st = conn.createStatement();
 int i = st.executeUpdate("insert into appointment values('" + fname + "','" + uname
 + "','" + address + "','" + phn + "','" + gender + "','" + service + "','" + date + "','" + time + "')");
 out.println("Thank you '"+fname+"' for register ! ");

} catch (Exception e) {
 System.out.print(e);
 out.println(e);
 e.printStackTrace();
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, java.util.*, jakarta.servlet.*, jakarta.servlet.http.*" %>

<%@ page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload Example</title>
</head>
<style>
table {
  border-collapse: collapse;
  width: 90%;
  font-family: Arial, sans-serif;
  color: #444;
  margin-left:5%;
   margin-right:5%;
}

th {
  background: #f2f2f2;
  font-weight: bold;
  text-align: left;
  padding: 8px;
}

td {
  border: 1px solid #ddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #ddd;
}

h1, h2 {
text-align:center;
  font-family: Arial, sans-serif;
  color: #444;
  margin-bottom: 10px;
}

input[type="file"], input[type="submit"] {
  display: block;
  margin-bottom: 10px;
}

input[type="submit"] {
  
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s;
  margin-left:40%;
}
input[type="file"]
{
  margin-left:40%;
   margin-top:2%;
}
input[type="submit"]:hover {
  background-color: #3e8e41;
}

a {
  color: #444;
  text-decoration: none;
  font-weight: bold;
}

</style>
<body>
    <h1>REPORTS UPLOAD</h1>
    <form method="post" action="UploadServlet" enctype="multipart/form-data">
        <input type="file" name="file">
        <input type="submit" value="Upload">
    </form>
    <br><br>
    <h2>Uploaded Files</h2>
    <table border="1">
        <tr>
            <th>File Name</th>
            <th>File Size</th>
            <th>Download</th>
        </tr>
        <% 
            // Connect to database
            String driverName = "org.mariadb.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/file_upload_db";
            String userName = "root";
            String password = "root123";
            Connection connection = null;
            PreparedStatement statement = null;
            ResultSet resultSet = null;
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(connectionUrl, userName, password);

            // Get all files from database
            String query = "SELECT id, file_name, file_size FROM files";
            statement = connection.prepareStatement(query);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String fileName = resultSet.getString("file_name");
                long fileSize = resultSet.getLong("file_size");
                %>
                <tr>
                    <td><%= fileName %></td>
                    <td><%= fileSize %></td>
                    <td><a href="DownloadServlet?id=<%= id %>">Download</a></td>
                </tr>
                <%
            }

            // Close database connection
            resultSet.close();
            statement.close();
            connection.close();
        %>
    </table>
</body>
</html>

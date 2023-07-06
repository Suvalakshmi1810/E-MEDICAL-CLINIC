import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DownloadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get file id from request parameter
        int id = Integer.parseInt(request.getParameter("id"));

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        InputStream inputStream = null;

        try {
            // Connect to database
           
            String connectionUrl = "jdbc:mysql://localhost:3306/file_upload_db";
            String userName = "root";
            String password = "root123";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(connectionUrl, userName, password);

            // Get file data from database
            stmt = conn.prepareStatement("SELECT file_data, file_name FROM files WHERE id = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            if (rs.next()) {
                // Get file data and name from result set
                byte[] fileData = rs.getBytes("file_data");
                String fileName = rs.getString("file_name");

                // Set response headers
                response.setContentType("application/pdf");
                response.setHeader("Content-disposition", "attachment; filename=" + fileName);
                response.setContentLength(fileData.length);

                // Write file data to response
                inputStream = rs.getBinaryStream("file_data");
                byte[] buffer = new byte[1024];
                int bytesRead = 0;
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    response.getOutputStream().write(buffer, 0, bytesRead);
                }
            } else {
                // File not found
                response.getWriter().print("File not found");
            }
        } catch (Exception e) {
            throw new ServletException("Error downloading file", e);
        } finally {
            // Close resources
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
            }
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (Exception e) {
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception e) {
                }
            }
        }
    }
}
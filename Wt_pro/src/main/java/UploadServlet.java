import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;


import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final String dbUrl = "jdbc:mysql://localhost:3306/file_upload_db";
    private final String dbUser = "root";
    private final String dbPassword = "root123";

    public UploadServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
//        if (!isMultipart) {
//            response.getWriter().println("No file uploaded!");
//            return;
//        }

        // Create a factory for disk-based file items
        FileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);

        try {
           
        	Part item = request.getPart("file"); // Retrieves <input type="file" name="file">
            InputStream filecontent = item.getInputStream();
        	        //HttpSession session= request.getSession(); 
                    //String fileName = session.getAttribute("uname").toString();
                    String fileName=item.getSubmittedFileName();
                    String contentType = item.getContentType();
                    long fileSize = item.getSize();

                    // Only accept PDF files
                    if (!"application/pdf".equals(contentType)) {
                        response.getWriter().println("Only PDF files are allowed!");
                        return;
                    }

                    // Save file to database
                    Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
                    String sql = "INSERT INTO files (file_name,file_type,file_size, file_data) VALUES (?, ?, ?,?)";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setString(1, fileName);
                    statement.setString(2,contentType );
                    statement.setLong(3, fileSize);
                    statement.setBlob(4, item.getInputStream());
                    statement.executeUpdate();
                    conn.close();

                    response.getWriter().println("File uploaded successfully!");
                
            
        } catch (Exception ex) {
            response.getWriter().println("Error: " + ex.getMessage());
        }
    }
}

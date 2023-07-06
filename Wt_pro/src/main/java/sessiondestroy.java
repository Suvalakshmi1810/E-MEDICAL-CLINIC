import java.io.*;
import javax.servlet.*;

import javax.servlet.http.*;

import jakarta.servlet.annotation.WebServlet;

import java.util.*;
import java.util.concurrent.TimeUnit;

@WebServlet("/logout")
public class sessiondestroy extends HttpServlet{
	
	  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	int count=5;

	   public void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
		   
		   HttpSession session = request.getSession(); 
		      // Set response content type
		     
		      	
      			session.invalidate();
      			response.sendRedirect("http://localhost:8080/Wt_pro/homepage/Home_page.jsp");
	        
	   }

}
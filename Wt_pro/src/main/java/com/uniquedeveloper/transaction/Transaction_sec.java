package com.uniquedeveloper.transaction;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Transaction_sec
 */

@WebServlet("/transaction_sec")
public class Transaction_sec extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Transaction_sec() {
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
			
			PrintWriter out = response.getWriter();
			response.setContentType("text/html");
			
			ServletContext context = getServletContext();
			Object obj = context.getAttribute("accno");
			String value = obj.toString();
			
			out.println("<html>");
			out.println("<body bgcolor=wheat>");
			out.println("<center>");
			//out.println("<h2>Ebank<h2>");
			out.println("<center>");
			out.println("<Form method=post action=transaction_3>");
			out.println("<b>Transaction Page<b>");
			out.println("<table border=1px solid black>");
			
			out.println("<tr>");
			out.println("<td>");
			out.println("<p>Account number:</p>"+value);
			out.println("</tr>");
			out.println("</td>");
			
			out.println("<tr>");
			out.println("<td>");
			out.println("<p>Deposit Amount: </p></td> <td> <input type=next name=amount value=0>");
			out.println("</tr>");
			out.println("</td>");
			out.println("</table>");
			
			out.println("<input type=submit value=deposit>");
			out.println("</br>");
			out.println("</Form>");
			
			
			
			out.println("</body>");
			out.println("</html>");
	}

}

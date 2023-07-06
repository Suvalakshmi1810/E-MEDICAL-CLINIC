import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jakarta.servlet.annotation.WebServlet;

@WebServlet("/SessionInfoServlet")
public class session extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String VISIT_COUNT_ATTR = "visitCount";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Integer visitCount = (Integer) session.getAttribute(VISIT_COUNT_ATTR);
        if (visitCount == null) {
            visitCount = 1;
        } else {
            visitCount++;
        }
        session.setAttribute(VISIT_COUNT_ATTR, visitCount);

        String sessionId = session.getId();
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

        request.setAttribute("sessionId", sessionId);
        request.setAttribute("date", now.format(formatter));
        request.setAttribute("time", now.toLocalTime().toString());
        request.setAttribute("visitCount", visitCount);

        request.getRequestDispatcher("session.jsp").forward(request, response);
    }
}

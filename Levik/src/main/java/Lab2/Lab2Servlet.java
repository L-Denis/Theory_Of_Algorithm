package Lab2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Levik
 */
public class Lab2Servlet extends HttpServlet {
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Lab2View validator = new Lab2View();
        String arg = request.getParameter("x");
        String result = validator.ValidateAndCalculate(arg);
        request.setAttribute("result", result);
        request.getRequestDispatcher("Laba2.jsp").forward(request, response);
    }
}


package myservlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DispatchServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String location = request.getParameter("page");
		if ( location.equals( "welcome" ) ){
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}
}
package myservlets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ValidentryServlet extends HttpServlet{
protected void doGet(HttpServletRequest request, HttpServletResponse response)
                                        throws ServletException, IOException {
  PrintWriter pw = response.getWriter();
  pw.println("Welcome to World of Knowledge!" + " ");
  pw.println("Roseindia Technologies Pvt.Ltd. ");
}
}
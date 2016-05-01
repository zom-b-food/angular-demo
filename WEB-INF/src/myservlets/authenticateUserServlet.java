package myservlets;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class authenticateUserServlet extends HttpServlet{
  protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

    response.setContentType("text/html");
    PrintWriter pw = response.getWriter();
    String name = request.getParameter("username");
    String password = request.getParameter("password");

	try{
		String driver = "org.gjt.mm.mysql.Driver";
		Class.forName(driver).newInstance();

		Connection con=null;
		Statement stmt=null;
		
		String url="jdbc:mysql://localhost/jsp?user=root&password=root";
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
		String query = "select uname from login where uname='"+name+"' and password='"+password+"'";
		System.out.println(query);
		ResultSet rs = stmt.executeQuery(query);

		if(rs.next()){

			response.sendRedirect("/userregister/ValidentryServlet");
		}
		else{
		  pw.println("Please insert valid Username and Password!");
		}
	}

	catch(Exception e){
		System.out.println(e.getMessage());
	}
}
}
package myservlets;
import java.io.*;
import java.lang.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DataInsertionIntoDatabase extends HttpServlet{
  public void doPost(HttpServletRequest request, HttpServletResponse response)
                                 throws ServletException, IOException{
    response.setContentType("text/html");
    PrintWriter pw = response.getWriter();
    String connectionURL = "jdbc:mysql://localhost/jsp";
    Connection connection;
	int id = 0;
    try{
		//String id = request.getParameter("id");
      String uname = request.getParameter("uname");
      String password = request.getParameter("password");
      pw.println(uname);
      pw.println(password);
	  id++;
      Class.forName("org.gjt.mm.mysql.Driver");
      connection = DriverManager.getConnection(connectionURL, "root", "root");
      PreparedStatement pst = connection.prepareStatement("insert into login values(?,?)");
	//	pst.setInt(1,);
      pst.setString(1,uname);
      pst.setString(2,password);
      int i = pst.executeUpdate();
      if(i!=0){
        pw.println("<br>Date has been inserted in to Datebase");
      }
      else{
        pw.println("failed to insert the data");
      }
    }
    catch (Exception e){
      pw.println(e);
    }
  }
}
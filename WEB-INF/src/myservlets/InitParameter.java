package myservlets;


import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class InitParameter extends HttpServlet{
  public void doGet(HttpServletRequest request, HttpServletResponse response)throws 
                               ServletException, IOException{  
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String url = "jdbc:mysql://localhost/jsp?user=root&password=root";
    Connection conn;
    ResultSet rs;
    try{
      Class.forName("org.gjt.mm.mysql.Driver");
      conn = DriverManager.getConnection(url);
      Statement statement = conn.createStatement();
      String query = "insert into login values('Roseindia', New Delhi)";
      int i = statement.executeUpdate(query);
      if(i!=0){
        out.println("The record has been inserted");
      }
      else{
        out.println("Sorry! Failure");
      }
      rs = statement.executeQuery("select * from login");
      while(rs.next()){
        out.println("<p><table>" + rs.getString(1) + " " + rs.getInt(2) + "</p></table>");
      }
      rs.close();
      statement.close();
    }
    catch (Exception e){
      System.out.println(e);
    }
  }
}
package myservlets;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SendImage extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		res.setContentType("image/gif");
		ServletContext sc = getServletContext();
		InputStream is = sc.getResourceAsStream("/NewYear.jpg");
		int len = 0;
		byte[] buffer = new byte[1024];
		OutputStream os = res.getOutputStream();
		while((len = is.read(buffer)) != -1){
			os.write(buffer,0,len);
		}
		os.flush();
		os.close();
	}
}
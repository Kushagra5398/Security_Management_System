package lg.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;

public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html");
		
		
		System.out.println("<h1>You are successfully logged out</h1>");

        HttpSession session=request.getSession();  
		session.invalidate();
		request.getRequestDispatcher("Home.jsp").include(request, response); 
	}

	
}

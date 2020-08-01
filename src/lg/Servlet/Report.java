package lg.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import Security.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
 import java.io.*;
 import java.util.List;
 import javax.servlet.annotation.WebServlet;

public class Report extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Report/Hstory</title>");
		out.println("<link rel='shortcut icon' href='Home/logo1.png' type='image/x-icon'>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("Navigation1.jsp").include(request, response);
		HttpSession session=request.getSession();
		
		
			       }
	    

}

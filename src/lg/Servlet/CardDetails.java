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

public class CardDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Card Viewer</title>");
		out.println("<link rel='shortcut icon' href='Home/logo1.png' type='image/x-icon'>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		out.println("<nav class='navbar navbar-inverse'>");
		out.println("<div class='container-fluid'>");    
		out.println("<div class='navbar-header'>");
		out.println("<button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>");
		out.println(" <span class='sr-only'>Toggle navigation</span>");
		out.println("<span class='icon-bar'></span>");
		out.println("<span class='icon-bar'></span>");
		out.println("<span class='icon-bar'></span>");
		out.println("</button>");
		out.println("<a class='navbar-brand' href='EmployeePage.jsp'>Employee Page</a>");
		out.println("</div>");
		out.println("<div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>");
		out.println("<ul class='nav navbar-nav'>");
		out.println("<li><a href='EmployeePage.jsp'>Home</a></li>");
		out.println("<li class='active'><a href='CardDetails'>Card Details</a></li>");
		out.println("<li><a href='FEIN.jsp'>   IN   </a></li>");
		out.println("<li><a href='FEOUT.jsp'>  OUT  </a></li>");
	    out.println("<li><a href='UserDetails.jsp'>UserDetails</a></li>");
	    out.println("  </ul>");
		out.println("</div>");
		out.println("</div>");
	    out.println("</nav>");
		HttpSession session=request.getSession();
		
	    Connection con        = null;
	    PreparedStatement pst = null;
	    ResultSet rs          = null;
	    Statement st=null;
	  
	    out.print("<table class='table table-bordered table-striped'>");
	    out.println("<tr><th>Card Id</th><th>Card No</th><th>Card Status</th><th>Remarks</th>");
	    try
	    {
	    	con = ConnectionProvider.getConnection();
	    	String sqll = "select * from S_RFIDCARD where R_STATUS='1' ";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sqll);
	    	rs  = pst.executeQuery();
	    	
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	
	    	
	    	out.print("<tr>");
	       out.print("<td> "+(rs.getInt("R_ID"))+"</td>");
	 	   out.print("<td>"+(rs.getString("R_RFIDNO"))+"</td>");
	 	   out.print("<td>"+(rs.getInt("R_STATUS"))+"</td>");
	 	   out.print("<td>"+(rs.getString("R_REMARK"))+"</td>");
	 	   out.print("</tr>");
	 	       }
	    
	  }
	    catch(Exception e)
	    {
	    out.println("exception caught");	
	    }
	    finally{
	    }
	    out.println("</table>");
	 
	    out.println("</body>");
	    out.println("</html>");
	}
}

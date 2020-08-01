package lg.Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Security.*;


public class VisitorSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
	    HttpSession session = request.getSession();
			String s=request.getParameter("val");  
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>View Visitor by "+s+"</title>");
			out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
			out.println("</head>");
			out.println("<body>");
			out.print("<table class='table table-bordered table-striped'>");
			out.println("<form>");
			out.println("<tr><th>Visitor Id</th><th>Visitor Name</th><th>Mobile No</th><th>Purpose</th><th>Department</th><th>Card Issued</th><th>Contact Person</th><th>Visit Date</th><th>Exit Time</th><th>Items Issued</th><th>Status</th><th>Delete</th>");
			//request.getRequestDispatcher("visitorSearch.jsp").include(request, response);
			out.println("<h1>View Visitor Details by "+s+"</h1>");
			if(s==null || s==""){  
			out.print("Please Enter Date");  
			}  
			else {
			try {
			con = ConnectionProvider.getConnection();  
			pst=con.prepareStatement("select V_ID, V_NAME, V_MOBILENO, V_PURPOSE, V_DEPARTMENT, R_RFIDNO, V_CONTACTPERSON, V_ISSUEDATE, V_RETURNTIME, V_ITEM, V_STATUS from S_VISITOR where V_ISSUEDATE='"+s+"'");   
			 rs=pst.executeQuery();  
			while(rs.next()){  
				out.println("<tr><td>"+(rs.getInt("V_ID"))+"</td><td>"+(rs.getString("V_NAME"))+"</td><td>"+(rs.getString("V_MOBILENO"))+"</td><td>"+(rs.getString("V_PURPOSE"))+"</td><td>"+(rs.getString("V_DEPARTMENT"))+"</td><td>"+(rs.getString("R_RFIDNO"))+"</td><td>"+(rs.getString("V_CONTACTPERSON"))+"</td><td>"+(rs.getString("V_ISSUEDATE"))+"</td><td>"+(rs.getString("V_RETURNTIME"))+"</td><td>"+(rs.getString("V_NAME"))+"</td><td>"+(rs.getInt("V_ITEM"))+"</td><td><a href='DeleteVisitor?id='>Delete</a></td></tr>");  
			}  
			con.close();  
			}catch(Exception e){e.printStackTrace();}  
			}  
}
}
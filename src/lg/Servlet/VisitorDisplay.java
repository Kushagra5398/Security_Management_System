package lg.Servlet;

import java.io.IOException;
import java.util.List;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class VisitorDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
String date=request.getParameter("date");
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>View Visitor by "+date+"</title>");
		out.println("<link rel='stylesheet' href='resources/bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		
		//request.getRequestDispatcher("visitorSearch.jsp").include(request, response);
		
		out.println("<h1>View Visitor Details by "+date+"</h1>");
		List<Visitor> list=VisitorDao.getVisitorByDate(date);
		out.print("<table class='table table-bordered table-striped'>");
		out.println("<form>");
		out.println("<tr><th>Visitor Id</th><th>Visitor Name</th><th>Mobile No</th><th>Purpose</th><th>Department</th><th>Card Issued</th><th>Contact Person</th><th>Visit Date</th><th>Exit Time</th><th>Items Issued</th><th>Status</th><th>Delete</th>");
		
		for(Visitor visitor:list){
			out.println("<tr><td>"+visitor.getId()+"</td><td>"+visitor.getvName()+"</td><td>"+visitor.getvMobileNo()+"</td><td>"+visitor.getvPurpose()+"</td><td>"+visitor.getvDepartment()+"</td><td>"+visitor.getrRFidNo()+"</td><td>"+visitor.getvContactPerson()+"</td><td>"+visitor.getvIssueDate()+"</td><td>"+visitor.getvReturnTime()+"</td><td>"+visitor.getvItem()+"</td><td>"+visitor.getvStatus()+"</td><td><a href='DeleteVisitor?id="+visitor.getId()+"'>Delete</a></td></tr>");
		}
		out.println("</table>");
		out.close();
	}



	}


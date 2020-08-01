package lg.Servlet;
import java.io.IOException;
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

import Security.ConnectionProvider;


public class ViewVisitor extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		
	    HttpSession session = request.getSession();
	    List l1=new ArrayList();
		try {
			con = ConnectionProvider.getConnection();
	    	String sql = "select * from S_VISITOR where V_STATUS='4'";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	l1.add(rs.getInt("V_ID"));
	    	l1.add(rs.getString("V_NAME"));
	    	l1.add(rs.getString("V_MOBILENO"));
	    	l1.add(rs.getString("V_PURPOSE"));
		 	 l1.add(rs.getString("V_DEPARTMENT"));
		 	 l1.add(rs.getString("R_RFIDNO"));
		 	 l1.add(rs.getString("V_CONTACTPERSON"));
		 	 l1.add(rs.getString("V_ISSUEDATE"));
		 	 l1.add(rs.getString("V_RETURNTIME"));
		 	 l1.add(rs.getString("V_ITEM"));
		 	 l1.add(rs.getInt("V_STATUS"));
    		 l1.add(rs.getInt("V_ID"));
    		
              //response.sendRedirect("CardDetails");
    		}
    		
    		request.setAttribute("listDatav", l1);
    	
    		//response.sendRedirect("cardDetail.jsp");
    		RequestDispatcher dispatcher = request.getRequestDispatcher("visitorDetail.jsp");
    		dispatcher.forward(request, response);
		}
    	 catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		finally {

			System.out.println("final block");
		}
	}
}
	

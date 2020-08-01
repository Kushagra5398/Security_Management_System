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


public class UserIt extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		
	    HttpSession session = request.getSession();
	    List l2=new ArrayList();
		try {
			con = ConnectionProvider.getConnection();
	    	
	    	String sql = "select * from S_LOGIN";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	
	    	l2.add(rs.getInt("L_ID"));
	        l2.add(rs.getString("L_LOGINID"));
	 	    l2.add(rs.getString("L_NAME"));
	 	    l2.add(rs.getString("L_EMAILID"));
	 	    l2.add(rs.getString("L_MOBILENO"));
	 	    l2.add(rs.getString("L_PASSWORD"));
	 	    l2.add(rs.getString("L_DATETIME"));
	 	    l2.add(rs.getInt("L_STATUS"));
	 	    l2.add(rs.getString("L_REMARK"));
	 	    l2.add(rs.getString("L_TYPE"));
	 	    l2.add(rs.getString("D_NAME"));
	   
              //response.sendRedirect("CardDetails");
    		}
    		
    		request.setAttribute("listDatau", l2);
    	
    		//response.sendRedirect("cardDetail.jsp");
    		RequestDispatcher dispatcher = request.getRequestDispatcher("userDetail.jsp");
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
	

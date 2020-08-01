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


public class UserSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		String loginid=request.getParameter("loginid");
	    HttpSession session = request.getSession();
	    List l5=new ArrayList();
		try {
			con = ConnectionProvider.getConnection();
	    	
	    	String sql = "select * from S_LOGIN where L_LOGINID='"+loginid+"' ";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	
	    	l5.add(rs.getInt("L_ID"));
	        l5.add(rs.getString("L_LOGINID"));
	 	    l5.add(rs.getString("L_NAME"));
	 	    l5.add(rs.getString("L_EMAILID"));
	 	    l5.add(rs.getString("L_MOBILENO"));
	 	    l5.add(rs.getString("L_PASSWORD"));
	 	    l5.add(rs.getString("L_DATETIME"));
	 	    l5.add(rs.getInt("L_STATUS"));
	 	    l5.add(rs.getString("L_REMARK"));
	 	    l5.add(rs.getString("L_TYPE"));
	 	    l5.add(rs.getString("D_NAME"));
	 	    l5.add(rs.getInt("L_ID"));
	 	    l5.add(rs.getInt("L_ID"));
	   
              //response.sendRedirect("CardDetails");
    		}
    		
    		request.setAttribute("listDataus", l5);
    	
    		//response.sendRedirect("cardDetail.jsp");
    		RequestDispatcher dispatcher = request.getRequestDispatcher("UserDisplay.jsp");
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
	

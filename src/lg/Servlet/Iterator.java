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


public class Iterator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		
	    HttpSession session = request.getSession();
	    List l=new ArrayList();
		try {
			con=ConnectionProvider.getConnection();
			//Class.forName("com.mysql.cj.jdbc.Driver");
    	    //con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
    	    st = con.createStatement();  
    	    System.out.println("Connection Established");
    	    String sql = "select * from S_RFIDCARD  ";
    	     pst = con.prepareStatement(sql);    
             rs=pst.executeQuery();
             System.out.println("query executed"); 
    		while(rs.next())
    		{
    			l.add(rs.getString("R_ID"));
    			l.add(rs.getString("R_RFIDNO"));
    			l.add(rs.getString("R_STATUS"));
    			l.add(rs.getString("R_REMARK"));
    			//request.setAttribute("data",l);
    			l.add(rs.getString("R_ID"));
    			//response.sendRedirect("CardDetails");
    		}
    		
    		request.setAttribute("listData", l);
    	
    		//response.sendRedirect("cardDetail.jsp");
    		RequestDispatcher dispatcher = request.getRequestDispatcher("cardDetail.jsp");
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
	

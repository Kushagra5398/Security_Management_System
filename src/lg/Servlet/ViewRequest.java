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


public class ViewRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  

		HttpSession session=request.getSession();
		request.getRequestDispatcher("Navigation.jsp").include(request, response);
	    Connection con        = null;
	    PreparedStatement pst = null;
	    ResultSet rs          = null;
	    Statement st=null;
	    
	    String Name=(String)session.getAttribute("user");
	    String department = "";
	    
	    List l3= new ArrayList();
	    try
	    {
	    	con = ConnectionProvider.getConnection();
	    	String sqll = "select D_NAME from S_LOGIN where L_LOGINID = '"+Name+"' ";
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sqll);
	    	rs  = pst.executeQuery();
	    	if(rs.next())
	    	{
	    	  department = rs.getString("D_NAME");	
	    	  System.out.println(department);
	    	}
	    	
	    	String sql = "select * from S_VISITOR WHERE V_DEPARTMENT ='"+department+"' AND V_STATUS='1'";	
	    	st=con.createStatement();
	    	pst = con.prepareStatement(sql);
	    	rs  = pst.executeQuery();
	    	System.out.println("Query chl gyi hai -_-");
	    while(rs.next())
	    {
	    	l3.add(rs.getString("V_NAME"));
	    	l3.add(rs.getString("V_MOBILENO"));
	    	l3.add(rs.getString("V_PURPOSE"));
	    	l3.add(rs.getString("V_DEPARTMENT"));
	    	l3.add(rs.getString("V_CONTACTPERSON"));
	    	l3.add(rs.getString("L_LOGINID_ISSUE"));
	    	l3.add(rs.getInt("V_STATUS"));
	    	l3.add(rs.getInt("V_ID"));
	    	l3.add(rs.getInt("V_ID"));
    		}
    		
    		request.setAttribute("listDatar", l3);
    	
    		//response.sendRedirect("cardDetail.jsp");
    		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewRequest.jsp");
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
	


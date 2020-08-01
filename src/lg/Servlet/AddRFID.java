package lg.Servlet;

import Security.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddRFID extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rfidno= request.getParameter("rfidno");
		int status= Integer.parseInt(request.getParameter("status"));
		String remark= request.getParameter("remark");
		PreparedStatement pst=null;
		Statement st = null;  
		Connection con = null;
		

		try 
		{
		   System.out.println("In The Card Registration Page");
		   con=ConnectionProvider.getConnection();
		 //  Class.forName("com.mysql.jdbc.Driver");
		  // con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
		   st = con.createStatement();
		   String sql = "insert into S_RFIDCARD(R_RFIDNO, R_STATUS, R_REMARK) values('"+ rfidno + "','" + status + "','" + remark + "')";
		   pst = con.prepareStatement(sql);
		   pst.executeUpdate();
		  response.sendRedirect("AdminPage.jsp");
		   System.out.println("statement complete");    
		}
		catch(Exception e) 
		{
		   System.out.println("SQLException caught: " +e.getMessage());
		}

		finally
		{
		   try
		   {
		      if(con != null)
		      con.close();
		      pst.close();
		      st.close();
		   } 
		   catch(Exception e)
		   {
		   }
		}
		 
	}

}

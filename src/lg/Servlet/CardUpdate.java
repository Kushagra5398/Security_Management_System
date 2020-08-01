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

public class CardUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rid=request.getParameter("rid");
 		String rfidno = request.getParameter("rfidno");
  		int status = Integer.parseInt(request.getParameter("status"));
  		String remark = request.getParameter("remark");
 		
 		Statement st = null;  
 		Connection con = null;
		PreparedStatement pst = null;
 		try 
 		{
 		   System.out.println("db file call");
 		   con=ConnectionProvider.getConnection();
 		   //Class.forName("com.mysql.jdbc.Driver");
 		   //con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
 		   st = con.createStatement();
 		   
 		  String sql = "update S_RFIDCARD SET R_RFIDNO='"+rfidno+"',R_STATUS='"+status+"',R_REMARK='"+remark+"' where R_ID='"+rid+"' ";
  	    pst = con.prepareStatement(sql);
      	pst.executeUpdate();
 		   System.out.println("Card Status Updated");
 		   response.sendRedirect("cardSearch.jsp");
 		}
 catch(Exception e) {
			System.out.println(e.getMessage());
 }
 		finally
 		{
 		   try
 		   {
 		      if(con != null)
 		      con.close();
 		   } 
 		   catch(Exception e)
 		   {
 		   }
 		}

	}

}

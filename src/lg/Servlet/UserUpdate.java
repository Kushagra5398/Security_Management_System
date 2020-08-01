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

public class UserUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lid=request.getParameter("lid");
		String department=request.getParameter("department");
 		String name = request.getParameter("name");
 		String loginid = request.getParameter("loginid");
 		String password = request.getParameter("password");
 		String datetime = request.getParameter("date");
 		String type = request.getParameter("type");
 		int status = Integer.parseInt(request.getParameter("status"));
 		String email = request.getParameter("email");
 		String mobileno = request.getParameter("mobileno");
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
 		   
 		  String sql = "update S_LOGIN SET L_LOGINID='"+loginid+"',L_NAME='"+name+"',L_EMAILID='"+email+"',L_MOBILENO='"+mobileno+"',L_PASSWORD='"+password+"',L_DATETIME='"+datetime+"',L_STATUS='"+status+"',L_REMARK='"+remark+"',L_TYPE='"+type+"',D_NAME='"+department+"' where L_ID='"+lid+"' ";
  	    pst = con.prepareStatement(sql);
      	pst.executeUpdate();
 		   System.out.println("Data Updated");
 		   response.sendRedirect("Report");
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

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
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
 		java.sql.Connection con = null;
 		try 
 		{
 		   System.out.println("db file call");
 		   con=ConnectionProvider.getConnection();
 		   //Class.forName("com.mysql.jdbc.Driver");
 		   //con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
 		   st = con.createStatement();
 		   
 		   String sql = "insert into S_LOGIN(L_LOGINID,L_NAME,L_EMAILID,L_MOBILENO,L_PASSWORD,L_DATETIME,L_STATUS,L_REMARK,L_TYPE,D_NAME) values('"+loginid+"','"+name+"','"+email+"','"+mobileno+"','"+password+"','"+datetime+"','"+status+"','"+remark+"','"+type+"','"+department+"')";
 		   PreparedStatement pst = con.prepareStatement(sql);
 		   pst.executeUpdate();
 		   System.out.println("statement complete");
 		   response.sendRedirect("AdminPage.jsp");
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

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

/**
 * Servlet implementation class RequestRegistration
 */
public class RequestRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	  String name       = request.getParameter("name");
      String mobileno   = request.getParameter("mobileno");
      String loginid    = request.getParameter("loginid");
      String purpose    = request.getParameter("purpose");
      String department = request.getParameter("department");
      String contact    = request.getParameter("contact");
      int status=Integer.parseInt(request.getParameter("status"));
      Connection con        = null;
      Statement  st         = null;
      PreparedStatement pst = null;
      try
      {
      	con=ConnectionProvider.getConnection();
//      	Class.forName("com.mysql.jdbc.Driver");
    //  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
      	String sql = "insert into S_VISITOR(V_NAME,V_MOBILENO,L_LOGINID_ISSUE,V_PURPOSE,V_DEPARTMENT,V_CONTACTPERSON,V_STATUS) values('"+name+"','"+mobileno+"','"+loginid+"','"+purpose+"','"+department+"','"+contact+"','"+status+"')";
      	st  = con.createStatement();
      	pst = con.prepareStatement(sql);
      	pst.executeUpdate();
      	System.out.println("Data Inserted");
      	response.sendRedirect("RequesterPage.jsp");
      }
      catch(Exception e)
      {
      	System.out.print(e);
      }
      finally{
      	System.out.println("Final Block");
      }
      
	}

}

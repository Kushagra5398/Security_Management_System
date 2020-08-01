package lg.Servlet;

import Security.*;
import java.util.*;
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
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class RequestRegistration
 */
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  		
  		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
  		SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
  	  String date = sdf.format(new Date());
  	  String time=sdf1.format(new Date());
  	  String fname       = request.getParameter("fname");
  	  String lname       = request.getParameter("lname");
      String email   = request.getParameter("email");
      String phone    = request.getParameter("phone");
      String message    = request.getParameter("message");

      Connection con        = null;
      Statement  st         = null;
      PreparedStatement pst = null;
      try
      {
      	con=ConnectionProvider.getConnection();
//      	Class.forName("com.mysql.jdbc.Driver");
    //  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
      	String sql = "insert into S_CONTACT(C_FNAME,C_LNAME,C_EMAIL,C_MOBILENO,C_MESSAGE,C_DATE,C_TIME) values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+message+"','"+date+"','"+time+"')";
      	st  = con.createStatement();
      	pst = con.prepareStatement(sql);
      	pst.executeUpdate();
      	System.out.println("Message Sent");
      	response.sendRedirect("Home.jsp");
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

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
public class DeleteUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id= Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Connection con= null;
		Statement st = null;
		PreparedStatement pst = null;
		
		try {
			con=ConnectionProvider.getConnection();
    	    st = con.createStatement();  
    	    System.out.println("Connection Established");
    	    String sql = "delete from S_LOGIN where L_ID='"+id+"' ";
           
    	    pst = con.prepareStatement(sql);
        	pst.executeUpdate();
             System.out.println("Card Deleted "); 
			   	response.sendRedirect("ViewUser");  	
           }
    	 catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		finally {

			System.out.println("final block");
		}
	}

}

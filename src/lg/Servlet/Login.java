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


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
  
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		String type="";
		String name= request.getParameter("name");
	    String password=request.getParameter("password");
	    HttpSession session = request.getSession();
	    
		try {
			con=ConnectionProvider.getConnection();
			//Class.forName("com.mysql.cj.jdbc.Driver");
    	    //con = DriverManager.getConnection("jdbc:mysql://localhost:3307/LG","root","root");
    	    st = con.createStatement();  
    	    System.out.println("Connection Established");
    	    String sql = "select * from S_LOGIN where L_LOGINID='"+name+"' and L_PASSWORD='"+password+"' ";
    	     pst = con.prepareStatement(sql);    
             rs=pst.executeQuery();
             System.out.println("query executed"); 
    		if(rs.next())
    		{
    			type= rs.getString("L_TYPE");
              
    		}
    		else{
    			System.out.println("not connected");
    			response.sendRedirect("login.jsp");
    		}
    			  
    			   if(type.equals("Admin"))
    				 {
    				    session.setAttribute("user", name);         
    					
    			       response.sendRedirect("AdminPage.jsp");  	
        		     }
    			   else if(type.equals(("Employee") ))   
    			      {  session.setAttribute("user", name);        
  					
    			   	    response.sendRedirect("EmployeePage.jsp");  	
        		      }
    			   else if(type.equals(("Requester") ))   
    			{ 
    				   
    			   	session.setAttribute("user", name);
    			   	
    			   	response.sendRedirect("RequesterPage.jsp");  	
        		}
    			   else if(type.equals("Approver") )   
			{ 
			   
			   	session.setAttribute("user", name);
			   	
			   	response.sendRedirect("ApproverPage.jsp");  	
    		}
    		
           
           }
    	 catch (Exception e) {
			System.out.println(e.getMessage());
		} 
		finally {

			System.out.println("final block");
		}
	}
}
	

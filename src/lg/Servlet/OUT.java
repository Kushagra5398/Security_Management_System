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

public class OUT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

String rfidno=request.getParameter("rfidno");
    String mobileno=request.getParameter("mobileno");
    String rdate   = request.getParameter("rdate");
    String rtime    = request.getParameter("rtime");
    int status       =Integer.parseInt( request.getParameter("status"));
    String cardstatus=request.getParameter("cardstatus");
    String loginidreturn = request.getParameter("loginidreturn");
        
    Connection con        = null;
    Statement  st         = null;
    PreparedStatement pst = null;
    try
    {
    	con=ConnectionProvider.getConnection();
//    	Class.forName("com.mysql.jdbc.Driver");
  //  	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
  String sqll="update S_RFIDCARD SET R_STATUS='"+cardstatus+"' where R_RFIDNO='"+rfidno+"'";
    	String sql = "update  S_VISITOR set L_LOGINID_RETURN='"+loginidreturn+"', V_RETURNDATE='"+rdate+"', V_RETURNTIME='"+rtime+"', V_STATUS='"+status+"' where V_MOBILENO='"+mobileno+"' ";
    pst = con.prepareStatement(sql);
    	pst.executeUpdate();
    	System.out.println("Data Inserted visitor");
    	 pst = con.prepareStatement(sqll);
     	pst.executeUpdate();
    	System.out.println("Data Inserted card");
    	response.sendRedirect("EmployeePage.jsp");
    }
    catch(Exception e)
    {
    	System.out.print(e.getMessage());
    }
    finally{
    	
    	System.out.println("Final Block");
    }
    	}

}

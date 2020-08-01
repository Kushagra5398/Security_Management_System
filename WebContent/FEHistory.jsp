<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="Security.*" %>
<!DOCTYPE html>
<html>
<head>
<title>HistoryUser</title>
</head>
<body>
<% 
java.sql.Connection con= null;
Statement st=null;
PreparedStatement pst=null;ResultSet rs=null;
out.print("<table>");
	try
	   {
		con= ConnectionProvider.getConnection();
		//Class.forName("com.mysql.jdbc.Driver");
		//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG", "root", "root");
		st = con.createStatement();
		  rs=pst.executeQuery("select * from S_LOGIN ");
		 while(rs.next())
		  {
		      
		      out.print("<tr><td>User Id:</td><td>"+rs.getString("L_LOGINID")+"</td></tr>");
				out.print("<tr><td>User Name:</td><td>"+rs.getString("L_NAME")+"</td></tr>");
				out.print("<tr><td>Email Id:</td><td>"+rs.getString("L_EMAILID")+"</td></tr>");
				out.print("<tr><td>Mobile:</td><td>"+rs.getString("L_MOBILENO")+"</td></tr>");
				out.print("<tr><td>Password</td><td>"+rs.getString("L_PASSWORD")+"</td></tr>");
				out.print("<tr><td>Date Of Joining</td><td>"+rs.getString("L_DATETIME")+"</td></tr>");
				out.print("<tr><td>Status</td><td>"+(Integer.parseInt(rs.getString("L_STATUS")))+"</td></tr>");
				out.print("<tr><td>Remark Category</td><td>"+rs.getString("L_REMARK")+"</td></tr>");
				out.print("<tr><td>User Type</td><td>"+rs.getString("L_TYPE")+"</td></tr>");
	           }
		  
	   }
  
	catch(Exception e){
		System.out.println(e);
	}
finally{
	System.out.println("final block");
}
%>




</body>
</html>
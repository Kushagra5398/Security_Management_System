<%@page import="Security.*" %>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="javax.servlet.*" %>
<%
Connection con = null;
Statement st          = null;
PreparedStatement ps = null;
ResultSet rs = null;
String id=request.getParameter("id");
System.out.println(" Card ID:"+id);
try
{
	con = ConnectionProvider.getConnection();
	String sql = "DELETE FROM S_RFIDCARD WHERE R_ID='"+id+"'";
 st=con.createStatement();
 ps = con.prepareStatement(sql);
 ps.executeUpdate();
System.out.println("Data Deleted Successfully!");
response.sendRedirect("cardSearch.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
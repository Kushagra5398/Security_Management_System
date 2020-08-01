<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="Security.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RequestViewer</title>
</head>
<body>
<h1> </h1>
<%
String mobileno= request.getParameter("mobileno");
PreparedStatement pst=null;
Statement st = null;  
java.sql.Connection con = null;
out.print("<table>");
try
{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sql="select V_ID,V_NAME,V_MOBILENO,V_PURPOSE,V_DEPARTMENT,V_CONTACTPERSON,V_STATUS from S_VISITOR where V_MOBILENO='"+mobileno+"'";    
pst = con.prepareStatement(sql);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
	out.print("<tr><td>VISITOR ID :</td><td>"+(Integer.parseInt(rs.getString("V_ID")))+"</td></tr>");
	   out.print("<tr><td> VISITOR NAME:</td><td>"+(rs.getString("V_NAME"))+"</td></tr>");
	   out.print("<tr><td>VISITOR MOBILENO :</td><td>"+(rs.getString("V_MOBILENO"))+"</td></tr>");
	   out.print("<tr><td>VISITOR PURPOSE:</td><td>"+(rs.getString("V_PURPOSE"))+"</td></tr>");
	   out.print("<tr><td>VISITOR DEPARTMENT:</td><td>"+(rs.getString("V_DEPARTMENT"))+"</td></tr>");
	   out.print("<tr><td>VISITOR CONTACTPERSON:</td><td>"+(rs.getString("V_CONTACTPERSON"))+"</td></tr>");
	   out.print("<tr><td>VISITOR STATUS:</td><td>"+(Integer.parseInt(rs.getString("V_STATUS")))+"</td></tr>");
}
}
catch(Exception e)
{
out.println("exception caught");	
}
finally{
}
out.print("</table>");
%>
</body>
</html>
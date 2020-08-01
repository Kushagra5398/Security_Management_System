<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Card Viewer</title>
</head>
<body>
<% 
String rfidno = request.getParameter("rfidno");

Connection con = null;
Statement st   = null;

PreparedStatement pst = null;
ResultSet rs          = null;

out.print("<table>");

try
{
	con=ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
	//con = DriverManager.getConnection("jdbc:sql://localhost:3306/LG","root","root");
	st  = con.createStatement();
	
	String sql = "select * from S_RFIDCARD";
	
	
	
	pst = con.prepareStatement(sql);
	pst.executeQuery();
	
}
catch(Exception e)
{
	System.out.print(e);
}

out.print("<tr><td> Your RFID No. is </td><td>"+(rs.getString("R_RFIDNO"))+"</td></tr>");
out.print("<tr><td> Your Status is No. is </td><td>"+(rs.getString("R_STATUS"))+"</td></tr>");

out.print("</table>");

%>



</body>
</html>
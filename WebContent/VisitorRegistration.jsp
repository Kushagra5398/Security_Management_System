<%@page import="java.sql.*"%>

<html>
<head>
<title>VisitorRegistration</title>
</head>
<body>
    <%  int id= Integer.parseInt(request.getParameter("V_id"));
    String name= request.getParameter("V_name");
    String mobileno= request.getParameter("V_mobileno");
    String purpose= request.getParameter("V_purpose");
    String department= request.getParameter("V_department");
    String rfidno= request.getParameter("R_rfidno");
    String contactperson= request.getParameter("V_contactperson");
    String issuedate= request.getParameter("V_issuedate");
    String issuetime= request.getParameter("V_issuetime");
    String loginid_issue= request.getParameter("L_loginid_issue");
    int status= Integer.parseInt(request.getParameter("V_status"));
    String loginid_return= request.getParameter("L_loginid_return");
    String returndate= request.getParameter("V_returndate");
    String returntime= request.getParameter("V_returntime");
    Statement st = null;
    Connection con = null;
		try {
			System.out.println("db file call");
			Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG", "root", "root");
			st = con.createStatement();
			String sql = "insert into student(V_id, V_name, V_mobileno, V_purpose, V_department, V_rfidno, V_contactperson, V_issuedate, V_issuetime, L_loginid_issue, V_status, L_loginid_return, V_returndate, V_returntime) values('" + id + "','"+ name + "','" + mobileno + "','" + purpose + "','" + department + "','" + rfidno + "','" + contactperson + "','" + issuedate + "','" + issuetime + "','" + loginid_issue + "','" + status + "','" + loginid_return + "','" + returndate + "','" + returntime + "',)";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.executeUpdate();
			System.out.println("completed");
		} catch (Exception e) {
			out.println("SQLException caught:" + e.getMessage());
		}
	%>
</body>
</html>
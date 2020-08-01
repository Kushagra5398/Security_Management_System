<%@ page import = "java.sql.*" %>
<%@page import="Security.*" %>
<!DOCTYPE html>
<html>
<head>
 <link href="Employee/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Employee/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
    <!-- Main CSS-->
    <link href="Employee/css/main.css" rel="stylesheet" media="all">

<title>User Details</title>
</head>
<body>

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
<%

    String loginid = (String)session.getAttribute("user");
    System.out.println(loginid);
    Connection con        = null;
    Statement st          = null;
    PreparedStatement pst = null;
    ResultSet rs          = null;
    
    
    try
    {
    	con=ConnectionProvider.getConnection();
        // Class.forName("com.mysql.cj.jdbc.Driver");
         
         String sql = "select * from S_LOGIN where L_LOGINID ='"+loginid+"'";
         //con = DriverManager.getConnection("jdbc:mysql://localhost:3306","root","root");
         st  = con.createStatement();
         pst = con.prepareStatement(sql);
         rs  = pst.executeQuery();
         out.print("<table border=3px cellpadding=2px cellspacing=3px>");
         while(rs.next())
         {
         out.print("<tr><td>Your ID is : </td><td>"           + (Integer.parseInt(rs.getString("L_ID")))+     "</td></tr>");
         out.print("<tr><td>Your Login ID is : </td><td>"     + (rs.getString("L_LOGINID"))+                  "</td></tr>");
         out.print("<tr><td>Your Name is : </td><td>"         + (rs.getString("L_NAME"))+                     "</td></tr>");
         out.print("<tr><td>Your Email ID is : </td><td>"     + (rs.getString("L_EMAILID"))+                  "</td></tr>");
         out.print("<tr><td>Your Mobile No. is : </td><td>"   + (rs.getString("L_MOBILENO"))+                 "</td></tr>");
         out.print("<tr><td>Your Password is : </td><td>"     + (rs.getString("L_PASSWORD"))+                 "</td></tr>");
         out.print("<tr><td>Your Joining Date is : </td><td>" + (rs.getString("L_DATETIME"))+                 "</td></tr>");
         out.print("<tr><td>Your Status is : </td><td>"       + (Integer.parseInt(rs.getString("L_STATUS")))+ "</td></tr>");
         out.print("<tr><td>Your Remark is : </td><td>"       + (rs.getString("L_REMARK"))+                   "</td></tr>");
         out.print("<tr><td>Your Type is : </td><td>"         + (rs.getString("L_TYPE"))+                     "</td></tr>");
         out.print("<tr><td>Department : </td><td>"         + (rs.getString("D_NAME"))+                     "</td></tr>");
         
    }
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
   
    out.print("</table>");
    
    
%>
<div class="p-t-15">
                            
                            <button class="btn btn--radius-2 btn--blue" type="submit" onclick="javascript:history.go(-1);return false;">Back</button>
                        </div>
</div>
</div>
</div>
</div>
</body>
</html>
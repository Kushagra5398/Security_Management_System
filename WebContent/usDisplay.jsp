<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@page import="Security.*"%>
<html>
<head>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
<link rel="stylesheet" href="resources/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<script>
$(document).ready(function() {
// crating new click event for save button
$(".delete").click(function() {
var id = +this.id; 
$.ajax({
url: "Delete.jsp",
type: "post",
data: {
id : id,
},
success : function(data){
alert(data); // alerts the response from jsp
location.reload(); 
}
});
});
});
</script>
<%
	String s = request.getParameter("val");
	System.out.println("Login Id : "+s);
	Connection con = null;
	  Statement st          = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	if (s == null ||s=="") {
		out.print("Please Enter Login Id");
	} else {
		try {
			con = ConnectionProvider.getConnection();
			String sql = "select * from S_LOGIN where L_LOGINID ='"+s+"'";
			 st  = con.createStatement();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List listu = new ArrayList();
			int i=0;
			while (rs.next()) {
				listu.add(rs.getInt("L_ID"));
		        listu.add(rs.getString("L_LOGINID"));
		 	    listu.add(rs.getString("L_NAME"));
		 	    listu.add(rs.getString("L_EMAILID"));
		 	    listu.add(rs.getString("L_MOBILENO"));
		 	    listu.add(rs.getString("L_PASSWORD"));
		 	    listu.add(rs.getString("L_DATETIME"));
		 	    listu.add(rs.getInt("L_STATUS"));
		 	    listu.add(rs.getString("L_REMARK"));
		 	    listu.add(rs.getString("L_TYPE"));
		 	    listu.add(rs.getString("D_NAME"));
		 	    listu.add(rs.getInt("L_ID"));
		 	    listu.add(rs.getInt("L_ID"));
			}
			request.setAttribute("listu", listu);
			
		} catch (Exception e) {
			System.out.println("error "+e.getMessage());
		}
	}
%>

<form>
	<table class="table table-bordered table-striped">
<tr><th>User Id</th><th>Login Id</th><th>User Name</th><th>Email</th><th>Mobile No</th><th>Password</th><th>Date Of Join</th><th>Status</th><th>Remarks</th><th>User Type</th><th>Department</th><th>Action</th>
		<% 
			List data = (List) request.getAttribute("listu");
			Iterator itr = null;
			for(itr = data.iterator(); itr.hasNext();){
		%>
		<tr>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><a href="userUpdate.jsp?id=<%=itr.next()%>" class="btn btn-primary" title="Edit" role="button"><i class="fa fa-pencil" aria-hidden="true"></i></a>
			<a href="deleteUser.jsp?id=<%=itr.next()%>" class="btn btn-primary" role="button" title="Delete"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
		
		<% } %>
		
	</table>
</form>

</body>
</html>
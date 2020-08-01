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
	System.out.println("value "+s);
	Connection con = null;
	  Statement st          = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	if (s == null ||s=="") {
		out.print("Please enter Date");
	} else {
		try {
			con = ConnectionProvider.getConnection();
			String sql = "select * from S_VISITOR where V_ISSUEDATE ='"+s+"'";
			 st  = con.createStatement();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List list = new ArrayList();
			int i=0;
			while (rs.next()) {
				list.add(rs.getInt("V_ID"));
				list.add(rs.getString("V_NAME"));
				list.add(rs.getString("V_MOBILENO"));
				list.add(rs.getString("V_PURPOSE"));
				list.add(rs.getString("V_DEPARTMENT"));
				list.add(rs.getString("R_RFIDNO"));
				list.add(rs.getString("V_CONTACTPERSON"));
				list.add(rs.getString("V_ITEM"));
				list.add(rs.getInt("V_STATUS"));
				list.add(rs.getInt("V_ID"));
			}
			
			request.setAttribute("list", list);
			
		} catch (Exception e) {
			System.out.println("error "+e.getMessage());
		}
	}
%>

<form>
	<table class="table table-bordered table-striped">
		<tr>
			<td>Visitor Id</td>
			<td>Visitor Name</td>
			<td>Mobile No</td>
			<td>Purpose</td>
			<td>Department</td>
			<td>Card Issued</td>
			<td>Contact Person</td>
			<td>Items</td>
			<td>Status</td>
			<td>Action</td>
		</tr>
		
		<% 
			List data = (List) request.getAttribute("list");
			Iterator itr = null;
			for(itr = data.iterator(); itr.hasNext();){
		%>
		<tr>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><%= itr.next() %></td>
			<td><a href="Delete.jsp?id=<%=itr.next()%>" title="Delete" class="btn btn-primary" role="button"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
		
		<% } %>
		
	</table>
</form>

</body>
</html>
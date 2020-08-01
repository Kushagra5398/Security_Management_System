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
url: "cardDelete.jsp",
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
	System.out.println("Card Status : "+s);
	Connection con = null;
	  Statement st          = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	if (s==""||s==null) {
		out.print("Kindly Select Status");
	} else {
		try {
			con = ConnectionProvider.getConnection();
			String sql = "select * from S_RFIDCARD where R_STATUS ='"+s+"'";
			 st  = con.createStatement();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List listc = new ArrayList();
			int i=0;
			while (rs.next()) {
				listc.add(rs.getInt("R_ID"));
		        listc.add(rs.getString("R_RFIDNO"));
		 	    listc.add(rs.getInt("R_STATUS"));
		 	    listc.add(rs.getString("R_REMARK"));
		 	    listc.add(rs.getInt("R_ID"));
		 	    listc.add(rs.getInt("R_ID"));
			}
			request.setAttribute("listc", listc);
			
		} catch (Exception e) {
			System.out.println("error "+e.getMessage());
		}
	}
%>

<form>
	<table class="table table-bordered table-striped">
<tr><th>Card Id</th><th>RFId Card No</th><th>Status</th><th>Remarks</th><th>Action</th>
		<% 
			List data = (List) request.getAttribute("listc");
			Iterator itr = null;
			for(itr = data.iterator(); itr.hasNext();){
		%>
		<tr>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><a href="cardUpdate.jsp?id=<%=itr.next()%>" class="btn btn-primary" title="Edit" role="button"><i class="fa fa-pencil" aria-hidden="true"></i></a>
			<a href="deleteCard.jsp?id=<%=itr.next()%>" class="btn btn-primary" role="button" title="Delete"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
		
		<% } %>
		
	</table>
</form>

</body>
</html>
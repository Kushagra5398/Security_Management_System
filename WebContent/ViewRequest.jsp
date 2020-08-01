<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>Pending Requests</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
</head>
<body>
<jsp:include page="Navigation.jsp"></jsp:include>
<form>
<table class='table table-bordered table-striped'>
<tr><th>Visitor Name</th><th>Mobile No</th><th>Purpose</th><th>Department</th><th>Contact Person</th><th>Request Id</th><th>Status</th><th>Approve</th><th>Reject</th></tr>
	<%
		List list = (List) request.getAttribute("listDatar");
		Iterator itr;
		for (itr = list.iterator(); itr.hasNext();) {
	%>
		<tr>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			 <td><a href="Approve?id=<%=itr.next() %>" class="btn btn-primary" role="button">Approve</a></td>
	 	   <td><a href="Reject?id=<%=itr.next() %>" class="btn btn-primary" role="button">Reject</a></td> 
	 	  </tr>
		<%
		}
		%>
	</table>
</form>
</body>
</html>
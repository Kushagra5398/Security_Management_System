<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>User Details</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
</head>
<body>
<jsp:include page="Navigation1.jsp"></jsp:include>
<form>
<table class="table table-bordered table-striped">
<tr><th>User Id</th><th>Login Id</th><th>User Name</th><th>Email</th><th>Mobile No</th><th>Password</th><th>Date Of Join</th><th>Status</th><th>Remarks</th><th>User Type</th><th>Department</th><th>Edit</th><th>Delete</th>
	<%
		List list = (List) request.getAttribute("listDataus");
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
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><a href="userUpdate.jsp?id=<%=itr.next()%>" class="btn btn-primary" role="button">Edit</a></td>
			<td><a href="DeleteUser?id=<%=itr.next()%>" class="btn btn-primary" role="button">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
</form>
</body>
</html>
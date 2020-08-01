<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>User Details</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
<link rel="stylesheet" href="resources/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="Navigation1.jsp"></jsp:include>
<a href="UserSearch.jsp" title="Search" class="btn btn-primary" role="button"><i class="fa fa-search" aria-hidden="true"></i></a>
<form>
<table class="table table-bordered table-striped">
<tr><th>User Id</th><th>Login Id</th><th>User Name</th><th>Email</th><th>Mobile No</th><th>Password</th><th>Date Of Join</th><th>Status</th><th>Remarks</th><th>User Type</th><th>Department</th><th>Action</th>
	<%
		List list = (List) request.getAttribute("listDatau");
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
			<td><a href="userUpdate.jsp?id=<%=itr.next()%>" title="Edit" class="btn btn-primary" role="button"><i class="fa fa-pencil" aria-hidden="true"></i></a>
			<a href="DeleteUser?id=<%=itr.next()%>" title="Delete" class="btn btn-primary" role="button"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
		<%
		}
		%>
	</table>
</form>
</body>
</html>
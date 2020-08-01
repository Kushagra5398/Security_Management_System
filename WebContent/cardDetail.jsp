<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<title>Card Details</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
<link rel="stylesheet" href="resources/font-awesome-4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="Navigation1.jsp"></jsp:include>
<a href="cardSearch.jsp" title="Search" class="btn btn-primary" role="button"><i class="fa fa-search" aria-hidden="true"></i></a>
<form>
<table class="table table-bordered table-striped">
<tr><th>Card Id</th><th>Card No</th><th>Card Status</th><th>Remarks</th><th>Action</th>
	<%
		List list = (List) request.getAttribute("listData");
		Iterator itr;
		for (itr = list.iterator(); itr.hasNext();) {
	%>
		<tr>
		
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><%=itr.next()%></td>
			<td><a href="DeleteCard?id=<%=itr.next()%>" class="btn btn-primary" role="button"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
		</tr>
		<%
		}
		%>
	</table>
</form>
</body>
</html>
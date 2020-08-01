<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

<link href="Login/css/login.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Play"
	rel="stylesheet" />
<title>Sign In Page</title>

</head>
<body>
	<div class="signin">
	<div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
		<form action="Login" method="POST">
			<h2 style="color: white">Welcome Admin</h2>
			<div class="row row-space">
                            <div class="col-2">
			<div class="vertical-menu">
                                    <a href="UserRegistration.jsp">Add User</a>
                                    <a href="AddRFID.jsp">Add RFIDCard</a>
                                    <a href="Report">Report</a>
                                    <a href="UserDetails.jsp">User Details</a>
                                </div>
                                </div>
                                </div>
			
			<div id="container">
				<a href="#"
					style="margin-right: 0px; font-size: 13px; font-family: Tahoma, Geneva, sans-serif;">Reset
					password</a> <a href="#"
					style="margin-right: 0px; font-size: 13px; font-family: Tahoma, Geneva, sans-serif;">Forgot
					password</a>

			</div>
		</form>
	</div>
	</div>
	</div>
</div>

</body>
</html>
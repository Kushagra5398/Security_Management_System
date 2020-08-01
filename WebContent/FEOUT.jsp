<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Return Card</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
    <!-- Icons font CSS-->
    <link href="Employee/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Employee/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Employee/css/main.css" rel="stylesheet" media="all">
       <script>
    function validate()
{
     	var rfidno = document.myform.rfidno.value;
    if(rfidno==""||rfidno.length<7||rfidno==null)
    {
      alert("Enter Card No. in C###### Format!!");
      document.myform.rfidno.focus();
      return false;
    }
    else 
    	return true;
    }
 
 function AvoidSpace(event) {
        var k = event ? event.which : window.event.keyCode;
        if (k == 32) return false;
    }
</script>
</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="EmployeePage.jsp">Employee Page</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="EmployeePage.jsp">Home</a></li>
        <li><a href="CardDetails">Card Details</a></li>
        <li><a href="FEIN.jsp">IN</a></li>
        <li class="active"><a href="FEOUT.jsp">OUT</a></li>
        <li><a href="UserDetails.jsp">User Details</a></li>
		
		        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h1 class="title">Search Menu</h1>
                    <form name="myform" action="Out.jsp" method="POST" onsubmit="return validate()">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Enter Card No.</label>
									<div class="wrap-input100 ">
                                    <input class="input--style-4" type="text" name="rfidno" maxlength="7" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
						</div>
                    </div>
                        <div class="p-t-10">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="Employee/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Employee/vendor/select2/select2.min.js"></script>
    <script src="Employee/vendor/datepicker/moment.min.js"></script>
    <script src="Employee/vendor/datepicker/daterangepicker.js"></script>
    <!-- Main JS-->
    <script src="Employee/js/global.js"></script>

</body>
</html>

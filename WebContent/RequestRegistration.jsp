<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    <title>Create Request</title>

    <!-- Icons font CSS-->
    <link href="Employee/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
    <!-- Vendor CSS-->
    <link href="Employee/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Employee/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Employee/css/main.css" rel="stylesheet" media="all">
    <script>
    function validate()
{
    	var name=document.myform.name.value;
     	var mobileno = document.myform.mobileno.value;
    	var purpose = document.myform.purpose.value;
    	var loginid=document.myform.loginid.value;
        var department=document.myform.department.value;
        var contact=document.myform.contact.value;
        var status=document.myform.status.value;
    if(name==""||name==null)
    {
      alert("User Name should not be blank..");
      document.myform.name.focus();
      return false;
    }
    else if(mobileno==""||mobileno.length<10||mobileno==null)
    {
      alert("Enter Valid Mobile No.!! Mobile No. should be 10 digit");
      document.myform.mobileno.focus();
      return false;
    }
    else if(purpose==""||purpose==null)
    {
      alert("Enter Purpose of Visit!!!!");
      document.myform.purpose.focus();
      return false;
    }
    else if(loginid==""||loginid==null)
    {
      alert("Login Id should not be blank");
      document.myform.loginid.focus();
      return false;
    }
    else if(department==""||department==null)
    {
      alert("Select Department!!");
      document.myform.department.focus();
      return false;
    }
    else if(contact==""||contact==null)
    {
      alert("Enter Contact Person!!");
      document.myform.contact.focus();
      return false;
    }
    else if(status==""||status==null)
    	{
    	alert("Select Status!!");
        document.myform.status.focus();
        return false;
    	}
    else{
    	return true;
    }
}
    function trim (el) {
        el.value = el.value.
           replace (/(^\s*)|(\s*$)/gi, ""). // removes leading and trailing spaces
           replace (/[ ]{2,}/gi," ").       // replaces multiple spaces with one space 
           replace (/\n +/,"\n");           // Removes spaces after newlines
        return;
    }
    function AvoidSpace(event) {
        var k = event ? event.which : window.event.keyCode;
        if (k == 32) return false;
    }
</script>
    
</head>

<body>
<form method="post">
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
      <a class="navbar-brand" href="RequesterPage.jsp">Requester Page</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="RequesterPage.jsp">Home</a></li>
        <li class="active"><a href="RequestRegistration.jsp">Requests</a></li>
        <li><a href="UserDetails.jsp">User Details</a></li>
		        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</form>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h1 class="title">Create Request</h1>
                    <form name="myform" action="RequestRegistration" method="POST" onsubmit="return validate()">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" maxlength="20" autocomplete="off" onchange="return trim(this)">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mobile no.</label>
                                    <input class="input--style-4" type="text" name="mobileno" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">purpose</label>
                                    <input class="input--style-4" type="text" name="purpose" maxlength="10" autocomplete="off" onchange="return trim(this)">
                                </div>
                            </div>
                               <div class="col-2">
                                <div class="input-group">
                                    <label class="label">LOGINID</label>
                                    <input class="input--style-4" type="text" name="loginid" maxlength="10" autocomplete="off" onchange="return trim(this)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Department</label>
                                    <div class="input-group-icon">
                                        <select class="input--style-4" name="department">
                                        <option class="input--style-4" value="IT">IT</option>
                                        <option class="input--style-4" value="R&D">R&D</option>
                                        <option class="input--style-4" value="SALES AND MARKETING">SALES AND MARKETING</option>
                                        <option class="input--style-4" value="HR">HR</option>
                                        <option class="input--style-4" value="OTHER">OTHER</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Contact person</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="contact" maxlength="10" autocomplete="off" onchange="return trim(this)">
                                    </div>
                                </div>
                            </div>  
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Visitor Status</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" name="status">
										<option class="input--style-4" value="">Select Status</option>
		                                <option class="input--style-4" value="1">Approver Pending</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
                            <div class="p-t-15">
                                <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                                <button class="btn btn--radius-2 btn--blue" type="submit" onclick="javascript:history.go(-1);return false;">Back</button>
                            </div>
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

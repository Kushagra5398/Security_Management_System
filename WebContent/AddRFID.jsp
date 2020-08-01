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
    <title>New RFIDCard Registration</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
    <!-- Icons font CSS-->
    <link href="Card/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Card/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Card/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Card/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Card/css/main.css" rel="stylesheet" media="all">
  <script>
    function validate()
{
   var rfidno=document.myform.rfidno.value;
   var status=document.myform.status.value;
   var remark=document.myform.remark.value;
    if(rfidno==""||rfidno==null||rfidno.length<7)
    {
      alert("Enter Card No. in C###### format only!!");
      document.myform.rfidno.focus();
      return false;
    }
    else if(status==""||status==null)
    {
      alert("Select Status!!");
      document.myform.status.focus();
      return false;
    }
    else if(remark==""||remark==null)
    {
      alert("Fill Remark!!");
      document.myform.remark.focus();
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
      <a class="navbar-brand" href="AdminPage.jsp">Admin Page</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="AdminPage.jsp">Home</a></li>
        <li><a href="UserRegistration.jsp">Add Users</a></li>
        <li class="active"><a href="AddRFID.jsp">Add RFIDCards</a></li>
        <li><a href="Report">Report</a></li>
        
		
		        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</form>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">New RFIDCard Form</h2>
                    <form name="myform" action="AddRFID" method="POST" onsubmit="return validate()">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Card Ref. No.</label>
                                    <input class="input--style-4" type="text" id="rfidno" name="rfidno" maxlength="7" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
						</div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Status</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" id="Status" name="status">
										<option class="input--style-4" value="">Select Status</option>
		                                <option class="input--style-4" value="1">Available</option>
		                                <option class="input--style-4" value="2">Issued</option>
		                                <option class="input--style-4" value="3">Lost/Damaged</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Remarks</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="remark" maxlength="25" autocomplete="off" onchange="return trim(this)">
                                    </div>
                                </div>
								
                            </div>
							<div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                            <button class="btn btn--radius-2 btn--blue" type="submit" onclick="javascript:history.go(-1);return false;">Back</button>
                        </div>
</form>
                        
						</div>                        
                   
                </div>
            </div>
        </div>

    <!-- Jquery JS-->
    <script src="Card/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Card/vendor/select2/select2.min.js"></script>
    <script src="Card/vendor/datepicker/moment.min.js"></script>
    <script src="Card/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Card/js/global.js"></script>

</body>
</html>

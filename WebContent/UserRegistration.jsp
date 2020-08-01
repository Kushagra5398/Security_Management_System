<%@page import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>

<head>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String date = sdf.format(new Date());
%>
    <title>New User Registration</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">

    <!-- Main CSS-->
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Admin/css/main.css" rel="stylesheet" >
    <!-- Form Validation-->
    <script>
    function validate()
{
    	var name=document.myform.name.value;
    	var loginid=document.myform.loginid.value;
    	var password= document.myform.password.value;
     	var mobileno = document.myform.mobileno.value;
    	var type = document.myform.type.value;
    	var x = document.myform.email.value;  
    	var atposition=x.indexOf("@");  
    	var dotposition=x.lastIndexOf(".");
        var remark=document.myform.remark.value;
        var department=document.myform.department.value;
        var status=document.myform.status.value;
    	 
   
    if(name==""||name==null)
    {
      alert("User Name should not be blank..");
      document.myform.name.focus();
      return false;
    }
    else if(loginid==""||loginid==null)
    {
      alert("Login Id should not be blank");
      document.myform.loginid.focus();
      return false;
    }
    else if(password==""||password.length<5||password==null)
    {
      alert("Password should be more than 6 characters");
      document.myform.password.focus();
      return false;
    }
    else if(type==""||type==null)
    {
      alert("Kindly Select User Type!!");
      document.myform.type.focus();
      return false;
    }
    else if (atposition<1 || dotposition<atposition+2 || dotposition+2>x.length)
    {  
  	  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);
  	  document.myform.email.focus();
  	  return false;  
  	  }  
    else if(mobileno==""||mobileno.length<10||mobileno==null)
    {
      alert("Enter Valid Mobile No.!! Mobile No. should be 10 digit");
      document.myform.mobileno.focus();
      return false;
    }
    else if(remark==""||remark==null)
    {
      alert("Fill Remark!!");
      document.myform.remark.focus();
      return false;
    }
    else if(department==""||department==null)
    {
      alert("Select Department!!");
      document.myform.department.focus();
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
      <a class="navbar-brand" href="AdminPage.jsp">Admin Page</a>
      

    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="AdminPage.jsp">Home</a></li>
        <li class="active"><a href="UserRegistration.jsp">Add Users</a></li>
        <li><a href="AddRFID.jsp">Add RFIDCards</a></li>
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
                    <h2 class="title">New User Form</h2>
                   
                    <form name="myform" action="UserRegistration" method="post" onsubmit="return validate()">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" maxlength="15" autocomplete="off" onchange="return trim(this)">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">LoginID</label>
                                    <input class="input--style-4" type="text" name="loginid" maxlength="8" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="password" name="password" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Date Time</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="date" value="<%=date%>" maxlength="19" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">User Type</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" name="type">
										<option class="input--style-4" value="">Select Type</option>
		                                <option class="input--style-4" value="Employee">Employee</option>
		                                <option class="input--style-4" value="Requester">Requester</option>
		                                <option class="input--style-4" value="Approver">Approver</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" maxlength="30" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Mobile Number</label>
                                    <input class="input--style-4" type="text" name="mobileno" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
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
                        
                                <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Department</label>
                                    <div class="input-group-icon">
                                        <select class="input--style-4" name="department">
                                       <option class="input--style-4" value="">Select Department</option>
                                        <option class="input--style-4" value="IT">IT</option>
                                        <option class="input--style-4" value="R&D">R&D</option>
                                        <option class="input--style-4" value="SALES AND MARKETING">Sales & Marketing</option>
                                        <option class="input--style-4" value="HR">HR</option>
                                        <option class="input--style-4" value="SECURITY">Security</option>
                                        <option class="input--style-4" value="OTHER">Other</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Status</label>
                                    <div class="input-group-icon">
                                        <select class="input--style-4" name="status">
                                        <option class="input--style-4" value="">Select Status</option>
                                        <option class="input--style-4" value="1">Active</option>
                                        <option class="input--style-4" value="2">INActive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit" >Submit</button>
                            <button class="btn btn--radius-2 btn--blue" type="button" onclick="javascript:history.go(-1);return false;">Back</button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    

</body>
</html>

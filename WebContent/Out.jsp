<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card No Search</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
    <link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
    <!-- Icons font CSS-->
    <link href="Admin/vendor1/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor1/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Admin/vendor1/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Admin/vendor1/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Admin/css1/main.css" rel="stylesheet" media="all">
            <script>
    function validate()
{
    	var name=document.myform.name.value;
     	var mobileno = document.myform.mobileno.value;
     	var loginidissue = document.myform.loginidissue.value;
     	var issuedate=document.myform.issuedate.value;
    	var issuetime = document.myform.issuetime.value;
    	var rfidno=document.myform.rfidno.value;
    	var status=document.myform.status.value;
    	var rdate=document.myform.rdate.value;
    	var rtime = document.myform.rtime.value;
    	var loginidreturn=document.myform.loginidreturn.value;
     	var cardstatus=document.myform.cardstatus.value;
     	
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
    else if(loginidissue==""||loginidissue==null)
    {
      alert("Login Id field should not be blank");
      document.myform.loginidissue.focus();
      return false;
    }
    else if(issuedate==""||issuedate==null||issuedate.length<10)
    {
      alert("Enter Date in YYYY-MM-DD Format!!");
      document.myform.issuedate.focus();
      return false;
    }
    else if(issuetime==""||issuetime==null||issuetime.length<8)
    {
      alert("Enter time in HH:MM:SS Format!!");
      document.myform.issuetime.focus();
      return false;
    }
    else if(rfidno==""||rfidno==null||rfidno.length<7)
    	{
    	alert("Enter Rfid No. in C###### format!!");
        document.myform.rfidno.focus();
        return false;
    	}
    else if(status==""||status==null)
    {
      alert("Select Status!!");
      document.myform.status.focus();
      return false;
    }
    else if(rdate==""||rdate==null||rdate.length<10)
    {
      alert("Enter Date in YYYY-MM-DD Format!!");
      document.myform.rdate.focus();
      return false;
    }
    else if(rtime==""||rtime==null)
    {
      alert("Enter time in HH:MM:SS Format!!");
      document.myform.rtime.focus();
      return false;
    }
    else if(loginidreturn==""||loginidreturn==null)
	{
	alert("Enter Login ID Issue");
    document.myform.loginidreturn.focus();
    return false;
	}

    else if(cardstatus==""||cardstatus==null)
	{
	alert("Card Status Should not be blank!!");
    document.myform.cardstatus.focus();
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

<%
int s=3;
String mobileno="";
String name="";
String loginidissue = "";
String issuedate ="";
String issuetime ="";
int status=0;
int cardstatus=0;
String rfidno = request.getParameter("rfidno");

PreparedStatement pst=null;
ResultSet rs=null;
Statement st = null;  
Connection con = null;
try
{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sqll="select R_STATUS FROM S_RFIDCARD WHERE R_RFIDNO='"+rfidno+"'";
    pst = con.prepareStatement(sqll);
    rs=pst.executeQuery();
    while(rs.next())
    {
    	cardstatus=(rs.getInt("R_STATUS"));
    }
    String sql="select V_NAME,V_MOBILENO,L_LOGINID_ISSUE,V_ISSUEDATE,V_ISSUETIME,V_STATUS from S_VISITOR where R_RFIDNO='"+rfidno+"' AND V_STATUS='"+s+"'";    
pst = con.prepareStatement(sql);
rs=pst.executeQuery();
while(rs.next())
{
	
     name=(rs.getString("V_NAME"));
     mobileno=(rs.getString("V_MOBILENO"));
	 loginidissue=(rs.getString("L_LOGINID_ISSUE"));
	 issuedate=(rs.getString("V_ISSUEDATE"));
	 issuetime=(rs.getString("V_ISSUETIME"));
	 status=(rs.getInt("V_STATUS"));
	 
	
}
}
catch(Exception e)
{
out.println("exception caught");	
}
finally{
con.close();
st.close();
pst.close();
}
%>
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
                    <h2 class="title">OUT</h2>
                    <form name="myform" action="OUT" method="POST" onsubmit="return validate()">
                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">VISITOR NAME</label>
                                    <input class="input--style-4" type="text" name="name" value="<%=name%>" maxlength="20" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">MobileNo</label>
                                    <input class="input--style-4" type="text" name="mobileno" value="<%=mobileno%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Login Id Issue</label>
                                    <input class="input--style-4" type="text" name="loginidissue" value="<%=loginidissue%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ISSUE DATE</label>
                                    <input class="input--style-4" type="text" name="issuedate" value="<%=issuedate%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">ISSUE TIME</label>
                                    <input class="input--style-4" type="text" name="issuetime" value="<%=issuetime%>" maxlength="8" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                               </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">R_RFIDNO</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rfidno" value="<%=rfidno%>" maxlength="7" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
								<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Visitor Status</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" name="status">
										<option class="input--style-4" value="">Select Status</option>
		                                <option class="input--style-4" value="4">In Active</option>
		                                <option class="input--style-4" value="3"> Rfid ISSUED</option>
		                                <option class="input--style-4" value="2">Gaurd Pending</option>
		                                <option class="input--style-4" value="1">Approver Pending</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN DATE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="date" name="rdate" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN TIME</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="time" name="rtime" maxlength="8" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">RETURN ID </label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="loginidreturn" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Card Status</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" name="cardstatus">
										<option class="input--style-4" value="">Select Status</option>
		                                <option class="input--style-4" value="1">AVAILABLE</option>
		                                <option class="input--style-4" value="2">ISSUED</option>
		                                <option class="input--style-4" value="3">LOST/DAMAGE</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
                            
                     <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                    
                   
                          </div>                     
                        </div>
                   </form>
                   </div>
                </div>
         
            </div>
        </div>
    

    <!-- Jquery JS-->
    <script src="Admin/vendor1/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Admin/vendor1/select2/select2.min.js"></script>
    <script src="Admin/vendor1/datepicker/moment.min.js"></script>
    <script src="Admin/vendor1/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Admin/js1/global.js"></script>
</body>
</html>
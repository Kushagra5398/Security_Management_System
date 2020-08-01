<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<%@page import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<html>
<head>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");
String date = sdf.format(new Date());
String time=sdf1.format(new Date());
%>
<meta charset="ISO-8859-1">
<title>mobile no search</title>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    
    <title>Visitor Details</title>
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
     	var purpose=document.myform.purpose.value;
     	var department=document.myform.department.value;
     	var rfidno=document.myform.rfidno.value;
     	var cardstatus=document.myform.cardstatus.value;
     	var contact=document.myform.contact.value;
     	var date=document.myform.date.value;
    	var time = document.myform.time.value;
    	var loginidissue = document.myform.loginidissue.value; 
    	var status=document.myform.status.value;
    	var remark=document.myform.remark.value;
    	var item=document.myform.item.value;
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
      alert("Purpose field should not be blank");
      document.myform.purpose.focus();
      return false;
    }
    else if(department==""||department==null)
    {
      alert("Department field shouls not be blank");
      document.myform.department.focus();
      return false;
    }
    else if(rfidno==""||rfidno==null||rfidno.length<7)
    	{
    	alert("Enter Rfid No. in C###### format!!");
        document.myform.rfidno.focus();
        return false;
    	}
    else if(cardstatus==""||cardstatus==null)
	{
	alert("Card Status Should not be blank!!");
    document.myform.cardstatus.focus();
    return false;
	}
    else if(contact==""||contact==null)
    {
      alert("Please Enter Contact Person!!");
      document.myform.contact.focus();
      return false;
    }  
    else if(date==""||date==null||date.length<10)
    {
      alert("Enter Date in YYYY-MM-DD Format!!");
      document.myform.date.focus();
      return false;
    }
    else if(time==""||time==null||time.length<8)
    {
      alert("Enter time in HH:MM:SS Format!!");
      document.myform.time.focus();
      return false;
    }
    else if(loginidissue=""||loginidissue==null)
    	{
    	alert("Enter Login ID Issue");
        document.myform.loginidissue.focus();
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
    else if(item==""||item==null)
    {
      alert("Select Item!!");
      document.myform.item.focus();
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
String name="";
String purpose="";
String department="";
String contact="";
int status=0;
String mobileno= request.getParameter("mobileno");
PreparedStatement pst=null;
Statement st = null;  
java.sql.Connection con = null;
try
{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sql="select V_ID,V_NAME,V_MOBILENO,V_PURPOSE,V_DEPARTMENT,V_CONTACTPERSON,V_STATUS from S_VISITOR where V_MOBILENO='"+mobileno+"'";    
pst = con.prepareStatement(sql);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
 name=(rs.getString("V_NAME"));
	purpose=(rs.getString("V_PURPOSE"));
	 department=(rs.getString("V_DEPARTMENT"));
	 contact=(rs.getString("V_CONTACTPERSON"));
	 status=(rs.getInt("V_STATUS"));
	 mobileno= (rs.getString("V_MOBILENO"));
	
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
        <li class="active"><a href="FEIN.jsp">IN</a></li>
        <li><a href="FEOUT.jsp">OUT</a></li>
        <li><a href="UserDetails.jsp">User Details</a></li>
		
		        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
	
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">In</h2>
                    <form name="myform" action="IN" method="POST" onsubmit="return validate()">
                    <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_NAME</label>
                                    <input class="input--style-4" type="text" name="name" value="<%=name%>" maxlength="20" autocomplete="off" onkeypress="return AvoidSpace(event)" >
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_MOBILENO</label>
                                    <input class="input--style-4" type="text" name="mobileno" value="<%=mobileno%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_PURPOSE</label>
                                    <input class="input--style-4" type="text" name="purpose" value="<%=purpose%>" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_DEPARTMENT</label>
                                    <input class="input--style-4" type="text" name="department" value="<%=department%>" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                               </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">R_RFIDNO</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="rfidno" maxlength="7" autocomplete="off" onkeypress="return AvoidSpace(event)">
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
	                                    </select>
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_CONTACTPERSON</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="contact" value="<%=contact%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_ISSUEDATE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="date" value="<%=date%>" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_ISSUETIME</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="time" value="<%=time%>" maxlength="8" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">L_LOGINID_ISSUE</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="loginidissue" maxlength="10" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_STATUS</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="status" value="<%=status%>" maxlength="1" autocomplete="off" onkeypress="return AvoidSpace(event)">
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">V_REMARK</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="remark" maxlength="25" autocomplete="off" onchange="return trim(this)">
                                    </div>
                                </div>
                            </div>
							                                </div>
                            
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">I_TYPE</label>
                                    <div class="input-group-icon">
                                        <select name="item">
                                        <option value="">Select Items</option>
                                         <option value="laptop">LAPTOP</option>
                                         <option value="PenDrive">PENDRIVE</option>
                                         <option value="Both">Both</option>
                                        </select>
                                     </div>
                                 </div>
                             </div>
					
                     <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>                           
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
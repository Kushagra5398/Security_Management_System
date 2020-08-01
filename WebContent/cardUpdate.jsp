<%@page import="java.util.Date" %>
<%@ page import = "Security.*" %>
<%@ page import = "java.sql.*" %>
<%@page import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<html>

<head>
<%
SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
String date = sdf.format(new Date());
%>
    <title>Card Update</title>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">

    <!-- Main CSS-->
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
    <link href="Admin/css/main.css" rel="stylesheet" >
    <!-- Form Validation-->
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

<%
int id=Integer.parseInt(request.getParameter("id"));
PreparedStatement pst=null;
Statement st = null;  
Connection con = null;
int rid=0;
String rfidno="";
int stu=0;
String status="";
String remark="";
try

{ 
con= ConnectionProvider.getConnection();
	//Class.forName("com.mysql.jdbc.Driver");
    //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LG","root","root");
    st = con.createStatement();
    String sql="select * from S_RFIDCARD where R_ID='"+id+"' ";    
pst = con.prepareStatement(sql);
ResultSet rs=pst.executeQuery();
while(rs.next())
{
     rid=(rs.getInt("R_ID"));
	 rfidno=(rs.getString("R_RFIDNO"));
	 stu=(rs.getInt("R_STATUS"));
	 remark=(rs.getString("R_REMARK"));	
}
if(stu==3)
{
	status="Lost/Damaged";
}
else
{
	status="Available";
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
                    <h2 class="title">RFIDCard Updation Form</h2>
                    <form name="myform" action="CardUpdate" method="POST" onsubmit="return validate()">
                        <div class="row row-space">
                        <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Card Id:</label>
                                    <input class="input--style-4" type="text" id="rid" name="rid" autocomplete="off" readonly value="<%=rid%>" onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Card Ref. No.</label>
                                    <input class="input--style-4" type="text" id="rfidno" name="rfidno" maxlength="7" autocomplete="off" value="<%=rfidno%>" readonly onkeypress="return AvoidSpace(event)">
                                </div>
                            </div>
						</div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Status</label>
                                    <div class="input-group-icon">
										<select class="input--style-4" id="status" name="status">
										<option class="input--style-4" value=""><%=status%></option>
		                                <option class="input--style-4" value="1">Available</option>
		                                <option class="input--style-4" value="3">Lost/Damaged</option>
	                                    </select>
                                    </div>
                                </div>
                            </div>
							<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Remarks</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="remark" maxlength="25" autocomplete="off"  value="<%=remark%>" onchange="return trim(this)">
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


</body>
</html>

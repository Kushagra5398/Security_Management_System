<html>
<head>
<title>User Details</title>
<script>
var request;
function loadXMLDoc()
{
	
	var loginid = document.getElementById("loginid").value;
	if(loginid==null||loginid=="")
		{
		alert("Enter Login Id:");
		document.myform.loginid.focus();
		}
  var xmlhttp;
  if (window.XMLHttpRequest)
  {
      xmlhttp=new XMLHttpRequest();
  }
  else
  {
      xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function()
  {
      if (xmlhttp.readyState==4 && xmlhttp.status==200)
      {
          document.getElementById("log").innerHTML=xmlhttp.responseText;
      }
  }

  xmlhttp.open("GET", "usDisplay.jsp?val="+loginid, true);
  xmlhttp.send();
}

</script>
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link rel="stylesheet" href="resources/bootstrap.min.css">
</head>
<body>
<jsp:include page="Navigation1.jsp"></jsp:include>
<div class="container">
<form name="myform" style="width:300px">
  <div class="form-group">
    <label for="loginid1">Search User</label>
    <input type="text" name="loginid" id="loginid" class="form-control" placeholder="LOGIN ID:">
  <input type="button" class="btn btn-primary" value="Search" onclick="loadXMLDoc()">
  </div>
</form>
</div>

<div id="log"></div>
  <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>
</body>
</html>
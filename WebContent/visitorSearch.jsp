<html>
<head>
<title>Visitor Details</title>
<script>
var request;
function loadXMLDoc()
{
	
	var dateT = document.getElementById("date").value;
	if(dateT==null||dateT=="")
		{
		alert("Select Date to be Searched");
		document.myform.date.focus();
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
          document.getElementById("vis").innerHTML=xmlhttp.responseText;
      }
  }

  xmlhttp.open("GET", "visDisplay.jsp?val="+dateT, true);
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
    <label for="date1">DATE OF Visit</label>
    <input type="date" name="date" id="date" class="form-control" placeholder="Date">
  <input type="button" class="btn btn-primary" value="Search" onclick="loadXMLDoc()">
  </div>
</form>
</div>

<div id="vis"></div>
  <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>
</body>
</html>
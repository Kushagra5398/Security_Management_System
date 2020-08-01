<html>
<head>
<title>Card Details</title>
<script>
var request;
function loadXMLDoc()
{
	
	var status1 = document.getElementById("status").value;
	if(status1==null||status1=="")
		{
		alert("Kindly Select Card Status:");
		document.myform.status.focus();
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
          document.getElementById("card").innerHTML=xmlhttp.responseText;
      }
  }

  xmlhttp.open("GET", "cardDisplay.jsp?val="+status1, true);
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
 <div class="input-group-icon">
    <label for="card1">Card Status Search</label>
<select class="input--style-4" id="status" name="status">
  <option class="input--style-4" value="">Select Status</option>
  <option class="input--style-4" value="1">Available</option>
  <option class="input--style-4" value="2">Issued</option>
  <option class="input--style-4" value="3">Lost/Damaged</option>
</select>                        
  <input type="button" class="btn btn-primary" value="Search" onclick="loadXMLDoc()">
  </div>
</form>
</div>

<div id="card"></div>
  <script src="resources/jquery.min.js"></script>
  <script src="resources/bootstrap.min.js"></script>
</body>
</html>
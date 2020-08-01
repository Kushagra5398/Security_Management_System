<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
<link href="Login/css/login.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Play"
	rel="stylesheet" />
<title>SignIn Page</title>
   <script>
   function validate()
{
	   var name=document.myform.name.value;
	   var password=document.myform.password.value;
    if(name==""||name==null)
    {
      alert("Enter Login Id!! ^_^");
      document.myform.name.focus();
      return false;
    }
    else if(password=="")
    {
      alert("Enter Password!! -_-");
      document.myform.password.focus();
      return false;
    }
    else
    	{
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
</script>

</head>
<body>
	<div class="signin">
		<form name="myform" action="Login" method="POST" onsubmit="return validate()">
			<h2 style="color: white">Log In</h2>
			<input type="text" name="name" placeholder="User Id" onchange="return trim(this)" autocomplete="off"><br>
			<br> <input type="password" name="password" placeholder="Password" onchange="return trim(this)" autocomplete="off"><br>
			<br> <button class="btn btn--radius btn--green" type="submit">Log
								In</button><br>
			<br>
			
			<div id="container">
				 <a href="#"
					style="margin-right: 0px; font-size: 13px; font-family: Tahoma, Geneva, sans-serif;">Forgot
					password</a>

			</div>
		</form>
	</div>


</body>
</html>
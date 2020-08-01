<%@page import="lg.Servlet.*" %>
  <html>
  <head>  
     <title>Baby Food</title>  
     <link rel="shortcut icon" href="images/favicon.png"/>
     <link rel="stylesheet" href="resources/bootstrap.min.css"/>
     <style>
     div.box{width:300px;border:1px solid pink;padding:20px;float:left}
     </style>
  </head>  
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
      <a class="navbar-brand" href="FEAdminPage.jsp">Admin Page</a>
    </div>
<form method="get">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="FEAdminPage.jsp">Home</a></li>
        <li ><a href="ViewUser">User History</a></li>
        <li><a href="ViewVisitor">Visitor History</a></li>
        <li><a href="ViewCard">Card History</a></li>
        </ul>

    </div>
    </form>
    <!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</body>
</html>
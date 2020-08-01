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
    <title>Welcome <% String Name=(String)session.getAttribute("user");
    out.print(Name); %></title>
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
    
    <link href="Admin/css1/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h1 class="title">Welcome Admin !</h1>
                    <form method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                             
                                <div class="vertical-menu">
                                    <a href="UserRegistration.jsp">Add User</a>
                                    <a href="AddRFID.jsp">Add RFIDCard</a>
                                    <a href="Report">Report</a>
                                    <a href="UserDetails.jsp">User Details</a>
                                </div>
                            </div>
                            </div>
                    </form>
                    <form action="Logout" method="POST">
                        <div class="p-t-15">
                        
                            <button class="btn btn--radius-2 btn--blue" type="submit">Logout</button>
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

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
    <title>Login</title>
    <!-- Icons font CSS-->
    <link href="Login/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Login/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Login/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Login/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Login/css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                    <div class="card-body">
                        <h1 class="title">Login Form</h1>
                            <form action="Login" method="POST">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <input class="input--style-2" type="text" placeholder="User Id" name="name">
                                        </div>
                                    </div>
                                </div>
						        <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group">
                                            <input class="input--style-2" type="password" placeholder="password" name="password">
                                        </div>
                                    </div>
                                </div>
                                <div class="p-t-30">
                                    <button class="btn btn--radius btn--green" type="submit">Log In</button>
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
   
    <!-- Jquery JS-->
    <script src="Login/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Login/vendor/select2/select2.min.js"></script>
    <script src="Login/vendor/datepicker/moment.min.js"></script>
    <script src="Login/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Login/js/global.js"></script>

</body>
</html>

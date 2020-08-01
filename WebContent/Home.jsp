<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible">
        <title></title>
        <link rel="shortcut icon" href="Home/logo1.png" type="image/x-icon">
         <!-- Bootstrap CSS CDN -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <!-- Our Custom CSS -->
        <link rel="stylesheet" href="Home/style4.css">
		<style type="text/css">
		.logo
        {	
            color:#c70851;
    		font-family:arabic;
			font-size:50px;
        }
		.bakery
        {	
            border:3px solid black;
			width:500px;
			hieght:500px;
        }
		</style>
    </head>
    <body>
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h2>Life's Good</h2>
                    <strong>LG</strong>
                </div>
                <ul class="list-unstyled components">
                    <li class="active">
                        <a href="login.jsp">
                            <i class="glyphicon glyphicon-home"></i>
                            Login
                        </a>
                        <a href="https://www.lg.com/in/about-lg/our-brand">
                            <i class="glyphicon glyphicon-briefcase"></i>
                            About Us
                        </a>
                        <a href="contact.jsp">
                            <i class="glyphicon glyphicon-send"></i>
                            Contact Us
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- Page Content Holder -->
            <div id="content">
			    <table class="table">
			        <thead>
			            <tr>
			                <td class="col-md-2"><img src="Home/1.jpg" alt="Logo" align="left" width="150px" height="150px"></td>
			                <th class="col-md-10 logo">Life's Good</th>
		            	</tr>
			        </thead>
			    </table>
                <nav class="navbar navbar-defaul">
					<div class="container-fluid" >
						<div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="glyphicon glyphicon-align-left"></i>
                            </button>
                        </div>
					</div>                  
				</nav>
				<div class="line">
                </div>
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
            <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Home/fan.jpg" alt="LG" width="1400px">
                        </div>
                        <div class="item">
                            <img src="Home/3.jpg" alt="LG" width="1400px">
                        </div>
                        <div class="item">
                            <img src="Home/4.jpg" alt="LG" width="1400px">
                        </div>
                        
                    </div>
            <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only"></span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only"></span>
                    </a>
                </div>
                    <div class="line">
                    </div>
            </div>
        </div>
        <!-- jQuery CDN -->
        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function() 
            {
                $('#sidebarCollapse').on('click', function()
                {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
    </body>
</html>

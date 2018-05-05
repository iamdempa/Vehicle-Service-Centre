<%-- 
    Document   : Dashboard
    Created on : Apr 30, 2018, 5:20:53 PM
    Author     : Last Kings
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Dashboard - myvitals.com</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="robots" content="all,follow">

        <!-- Bootstrap CSS-->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- theme stylesheet-->
        <link rel="stylesheet" href="css/Dashboard/style.green.css" id="theme-stylesheet">
        <link rel="stylesheet" href="css/mdb.css" id="theme-stylesheet">
        <!-- jQuery Circle-->
        <!--<link rel="stylesheet" href="css/grasp_mobile_progress_circle-1.0.0.min.css">-->
        <!-- Custom stylesheet - for your changes-->
        <link rel="stylesheet" href="css/Dashboard/dashboard.css">
        <!-- Favicon-->
        <link rel="shortcut icon" href="images/1.png">

        <link rel="stylesheet" href="css/Dashboard/font-awesome.min.css">



    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.jsp");
            } else {
//              response.sendRedirect("Login.jsp");

            }
        %>

        <!--==========================================-->
        <!--Side Navigation bar-->
        <!--==========================================-->
        <nav class="side-navbar"> 
            <div class="side-navbar-wrapper">
                <div class="sidenav-header d-flex align-items-center justify-content-center">
                    <div class="sidenav-header-inner text-center"><img src="images-login/admin.jpg" alt="person" class="img-fluid rounded-circle">
                        <h2 class="h5 text-uppercase">Welcome ${username}</h2><span class="text-uppercase">System Administrator</span>
                    </div>
                    <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>M</strong><strong class="text-primary">V</strong></a></div>
                </div>
                <div class="main-menu">
                    <ul id="side-main-menu" class="side-menu list-unstyled text-left">                  
                        <li><a href="Homepage.jsp"> <i class="fa fa-home fa-lg"></i><span>Ponja - Home</span></a></li>
                        <li class="active"><a href="Dashboard.html"> <i class="fa fa-dashboard fa-lg"></i><span>Dashboard</span></a></li>
                        <li> <a href="BookOnlineNew.jsp"><i class="fa fa-book"></i><span>Book Online</span></a></li>
                        <li> <a href="#pages-nav-list" data-toggle="collapse" aria-expanded="false"><i class="fa fa-users"></i><span>Users</span>
                                <div class="arrow pull-right"><i class="fa fa-angle-down"></i></div></a>
                            <ul id="pages-nav-list" class="collapse list-unstyled">
                                <li> <a href="Patients.html" class="fa fa-user"> Patients</a></li>
                                <li> <a href="Doctors.html" class="fa fa-stethoscope"> Doctors</a></li>                
                            </ul>
                        </li>
                        <li> <a href="#"> <i class="fa fa-bed"></i><span>Wards</span></a></li>
                        <!--<li> <a href=""> <i class="fa fa-file"></i><span>Calculate Bill</span></a>-->
                        <!--<div class="badge badge-warning">Calculate</div></a>-->
                        </li>
                        <li> <a href="Medical History.html"> <i class="fa fa-paperclip"></i><span>Medical History</span></a></li>
                        <li> <a href="#"> <i class="fa fa-credit-card"></i><span>Pay Bill</span></a></li>

                    </ul>
                </div>

            </div>
        </nav>
        <!--==========================================-->
        <!--End of Side Navigation bar-->
        <!--==========================================-->

        <form action="Logout" id="logout">
            <!--<input type="submit" value="Logout">-->
        </form>
        
        <div class="page home-page">

            <!--==========================================-->
            <!--Navigation bar-->
            <!--==========================================-->
            <header class="header">
                <nav class="navbar">
                    <div class="container-fluid">
                        <div class="navbar-holder d-flex align-items-center justify-content-between">
                            <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="fa fa-bars"> </i></a><a href="index.html" class="navbar-brand">
                                    <div class="brand-text hidden-sm-down"><span>myVitals </span><strong class="text-primary"> Administrator</strong></div></a></div>
                            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center ml-auto"> 
                                <li class="nav-item"><a class="nav-link logout" onclick="document.getElementById('logout').submit()" style="color: white;">Logout<i class="fa fa-sign-out"></i></a></li>                                                                                                  
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>


            <!--==========================================-->
            <!--End of Navigation bar-->
            <!--==========================================-->

            <ol class="breadcrumb breadcrumb-home">
                <li class="breadcrumb-item active">Dashboard</li>
            </ol>

            <!--==========================================-->
            <!--Section-->
            <!--==========================================-->
            <section class="dashboard-counts section-padding">  

                <!--==========================================-->
                <!--Headline-->
                <!--==========================================-->
                <div class="container-fluid page-headline">
                    <div class="row text-center">

                        <!--date-->
                        <div class="col-md-2 col-sm-12 z-depth-1-half" > 
                            Date: <p id="date"> </p>
                        </div>
                        <!--end of date-->

                        <div class="col-md-8 col-sm-12"> 
                            <p class="h1 h1-responsive">Dashboard</p>
                        </div>

                        <!--time-->
                        <div class="col-md-2 col-sm-12 z-depth-1-half"> 
                            Time: <p id="time"> </p>
                        </div>
                        <!--end of time-->

                    </div>
                </div>
                <!--==========================================-->
                <!--Headline-->
                <!--==========================================-->
                <hr>

                <!--==========================================-->
                <!--Clock-->
                <!--==========================================-->
                <script>
                    var div = document.getElementById('time');
                    function time() {
                        div.innerHTML = "";
                        var date = new Date;
                        var seconds = date.getSeconds();
                        var minutes = date.getMinutes();
                        var hours = date.getHours();

                        var ss = seconds < 10 ? "0" + seconds : seconds; //check if seconds is less than 10, put a zero

                        var time = hours + " : " + minutes + " : " + ss + " ";
                        var H = +time.substr(0, 2);
                        var h = (H % 12) || 12;
                        var ampm = H < 12 ? " AM" : " PM";

                        var hh = h < 10 ? "0" + h : h; //check if hours is less than 10, put a zero

                        time = hh + time.substr(2, 10) + ampm;
                        div.innerHTML = time;
                    }
                    setInterval(time, 1000);
                </script>  
                <!--==========================================-->
                <!--End of Clock-->
                <!--==========================================-->

                <!--==========================================-->
                <!--Date-->
                <!--==========================================-->
                <script>
                    document.getElementById('date').innerHTML = formatAMPM();
                    function formatAMPM() {
                        var d = new Date(),
                                months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                                days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
                        return days[d.getDay()] + ' ' + months[d.getMonth()] + ' ' + d.getFullYear();
                    }
                </script>
                <!--==========================================-->
                <!--Date-->
                <!--==========================================-->


                <!--==========================================-->
                <!--Statistics-->
                <!--==========================================-->
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="wrapper count-title text-center">
                                <!--<div class="icon"><i class="icon-user"></i></div>-->
                                <div class="name"><strong class="text-uppercase">Total Patients</strong>
                                    <div class="count-number">0</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="wrapper count-title text-center">
                                <!--<div class="icon"><i class="icon-padnote"></i></div>-->
                                <div class="name"><strong class="text-uppercase">Total Doctors</strong>
                                    <div class="count-number">0</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="wrapper count-title text-center">
                                <!--<div class="icon"><i class="icon-check"></i></div>-->
                                <div class="name"><strong class="text-uppercase">Total Wards</strong>
                                    <div class="count-number">0</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="wrapper count-title text-center">
                                <!--<div class="icon"><i class="icon-bill"></i></div>-->
                                <div class="name"><strong class="text-uppercase">Total Staff</strong>
                                    <div class="count-number">0</div>
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
                <!--==========================================-->
                <!--End of Statistics-->
                <!--==========================================-->

            </section>
            <!--==========================================-->
            <!--End of Section-->
            <!--==========================================-->


            <!--==========================================-->
            <!--Images-->
            <!--==========================================-->
            <section class="dashboard-counts section-padding z-depth-1-half">
                <div class="container-fluid ">
                    <div class="row ">
                        <div class="col-md-3 col-sm-6">
                            <div class="view overlay hm-white-slight">
                                <img src="http://via.placeholder.com/708x472" class="img-fluid img-thumbnail" alt="">
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="view overlay hm-white-slight">
                                <img src="http://via.placeholder.com/708x472" class="img-fluid img-thumbnail" alt="">
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="view overlay hm-white-slight">
                                <img src="http://via.placeholder.com/708x472" class="img-fluid img-thumbnail" alt="">
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="view overlay hm-white-slight">
                                <img src="http://via.placeholder.com/708x472" class="img-fluid img-thumbnail" alt="">
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>                
            </section>
            <!--==========================================-->
            <!--End of Images-->
            <!--==========================================-->


            <!--==========================================-->
            <!--Options-->
            <!--==========================================-->
            <section class="dashboard-counts section-padding options text-center">
                <div class="container-fluid "><strong><i class="fa fa-cog"> Quick Access</i></strong><hr>
                    <div class="row ">
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/appointments-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Appointments</strong></p>
                                <a href="Appointments.html">
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/patient-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Patients</strong></p>
                                <a href="Patients.html">
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/doctor-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Doctors</strong></p>
                                <a href="Doctors.html">
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/ward-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Wards</strong></p>
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/bill-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Calculate Bill</strong></p>
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-4 col-6">
                            <div class="view overlay hm-white-slight">
                                <img src="images/payment-new.png" class="img-fluid img-thumbnail" alt="">
                                <p><strong class="text-success">Pay</strong></p>
                                <a >
                                    <div class="mask"></div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>                
            </section>
            <!--==========================================-->
            <!--End of Options-->
            <!--==========================================-->


            <!--==========================================-->
            <!--Footer-->
            <!--==========================================-->
            <footer class="main-footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <p>myVitals &copy; 2017-2019</p>
                        </div>
                        <div class="col-sm-6 text-right">
                            <!--<p>Design by <a href="https://bootstrapious.com" class="external">Bootstrapious</a></p>-->
                            <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
                        </div>
                    </div>
                </div>
            </footer>            
            <!--==========================================-->
            <!--End of Footer-->
            <!--==========================================-->

        </div>
        <!-- Javascript files-->
        <script src="js/Dashboard/jquery.min.js"></script>
        <script src="js/Dashboard/tether.min.js"></script>
        <script src="js/Dashboard/bootstrap.min.js"></script>
        <script src="js/Dashboard/jquery.cookie.js"></script>
        <script src="js/Dashboard/grasp_mobile_progress_circle-1.0.0.min.js"></script>
        <script src="js/Dashboard/jquery.nicescroll.min.js"></script>
        <script src="js/Dashboard/jquery.validate.min.js"></script>
        <script src="js/Dashboard/Char.min.js"></script>
        <script src="js/Dashboard/charts-home.js"></script>
        <script src="js/Dashboard/front.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/Dashboard/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/Dashboard/mdb.min.js"></script>


    </body>
</html>
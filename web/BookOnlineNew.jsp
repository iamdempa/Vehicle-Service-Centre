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
        <title>Book Online - myvitals.com</title>
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
        <script src="js/Dashboard/JQueryNew.js"></script>



    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("Login.jsp");
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
                        <li><a href="Dashboard.jsp"> <i class="fa fa-dashboard fa-lg"></i><span>Dashboard</span></a></li>
                        <li class="active"> <a href="BookOnline.jsp"><i class="fa fa-book"></i><span>Book Online</span></a></li>
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
                <li class="breadcrumb-item"><a href="Dashboard.jsp">Dashboard</a></li> 
                <li class="breadcrumb-item active">Online Booking</li>
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
                            <p class="h1 h1-responsive">Online Booking</p>
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




            </section>
            <!--==========================================-->
            <!--End of Section-->
            <!--==========================================-->




            <div class="container-fluid">
                <div class="row">
                    <div class="col-6 col-md-6" style="border-right:solid 1px gainsboro">
                        <form action="" method="post"> 
                            <legend><center><strong>Contact Information</strong></center></legend>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-10 col-form-label">First Name</label>
                                <div class="col-10">
                                    <input class="form-control" type="text" id="example-text-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-search-input" class="col-10 col-form-label">Last Name</label>
                                <div class="col-10">
                                    <input class="form-control" type="text" id="example-text-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-tel-input" class="col-10 col-form-label">Telephone</label>
                                <div class="col-10">
                                    <input class="form-control" type="tel" id="example-tel-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-email-input" class="col-10 col-form-label">Email</label>
                                <div class="col-10">
                                    <input class="form-control" type="email" id="example-email-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-url-input" class="col-10 col-form-label">Address</label>
                                <div class="col-10">
                                    <textarea class="form-control" type="text" id="example-url-input"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-url-input" class="col-10 col-form-label">Address 2</label>
                                <div class="col-10">
                                    <textarea class="form-control" type="text" id="example-url-input"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-10 col-form-label">City</label>
                                <div class="col-10">
                                    <input class="form-control" type="text" id="example-text-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-10 col-form-label">State</label>
                                <div class="col-10">
                                    <input class="form-control" type="text" id="example-text-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-10 col-form-label">Zip</label>
                                <div class="col-10">
                                    <input class="form-control" type="tel" id="example-text-input">
                                </div>
                            </div>                                                                                   
                        </form>
                    </div>

                    <div class="col-6 col-md-6">
                        <form>
                            <legend><center><strong>Vehicle Information</strong></center></legend>
                            <div class="form-group row">
                                <label for="example-number-input" class="col-10 col-form-label">Vehicle Year</label>
                                <div class="col-10">
                                    <input class="form-control" type="date" value="42" id="example-number-input">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-datetime-local-input" class="col-10 col-form-label">Vehicle Make</label>
                                <div class="col-10">
                                    <select  name="vehiclemake" id="vehiclemake" class="form-control">
                                        <option selected value="Selectmake">-Select Make-</option>
                                        <option value="Audi">Audi</option>
                                        <option value="BMW">BMW</option>
                                        <option value="Ford">Ford</option>
                                        <option value="Honda">Honda</option>
                                        <option value="Benz">MERCEDES BENZ</option>
                                        <option value="Nissan">NISSAN MOTOR GB LTD</option>
                                        <option value="Toyota">TOYOTA</option>
                                        <option value="Volvo">VOLVO</option>

                                    </select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-datetime-local-input" class="col-10 col-form-label">Vehicle Model</label>
                                <div class="col-10">
                                    <select name="vehiclemodel" id="vehiclemodel" class="form-control">                                        
                                        <option value="">-Select Model-</option>
                                    </select>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="example-text-input" class="col-10 col-form-label">Vehicle Mileage(km)</label>
                                <div class="col-10">
                                    <input class="form-control" type="number" id="example-text-input">
                                </div>
                            </div>                            
                            <div class="form-group row">
                                <label for="example-color-input" class="col-10 col-form-label">Vehicle Color</label>
                                <div class="col-10">
                                    <input class="form-control" type="color"  id="example-color-input">
                                </div>
                            </div>
                        </form>
                        <div style="border-bottom:solid 1px gainsboro"></div>                        
                        <br>
                        <form>
                            <legend><center><strong> Appointment Times</strong></center></legend>
                            <div class="form-group row">
                                <label for="example-number-input" class="col-10 col-form-label">Date</label>
                                <div class="col-10">
                                    <input class="form-control" type="date" value="42" id="Date">
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="example-datetime-local-input" class="col-10 col-form-label">Vehicle Model</label>
                                <div class="col-10">
                                    <select class="form-control">
                                        <option selected value="Selecttime">-Select Time-</option>
                                        <option value="07">07:00 AM</option>
                                        <option value="0730">07:30 AM</option>
                                        <option value="08">08:00 AM</option>
                                        <option value="0830">08:30 AM</option>
                                        <option value="09">09:00 AM</option>
                                        <option value="0930">09:30 AM</option>
                                        <option value="10">10:00 AM</option>
                                        <option value="1030">10:30 AM</option>
                                        <option value="11">11:00 AM</option>
                                        <option value="1130">11:30 AM</option>
                                        <option value="12">12:00 PM</option>
                                        <option value="1230">12:30 PM</option>
                                        <option value="01">01:00 PM</option>
                                        <option value="0130">01:30 PM</option>
                                        <option value="02">02:00 PM</option>
                                        <option value="0230">02:30 PM</option>
                                        <option value="03">03:00 PM</option>
                                        <option value="0330">03:30 PM</option>
                                        <option value="04">04:00 PM</option>
                                        <option value="0430">04:30 PM</option>
                                        <option value="05">05:00 PM</option>
                                        <option value="0530">05:30 PM</option>
                                        <option value="06">06:00 PM</option>
                                        <option value="0630">06:30 PM</option>
                                        <option value="0700">07:00 PM</option>
                                        <option value="07300">07:30 PM</option>                                    
                                    </select>
                                </div>
                            </div>                            
                        </form>
                    </div>
                </div> 

                <div style="border-bottom:solid 1px gainsboro"></div>                        
                <br>

                <div class="row">
                    <div class="col-12 col-md-12">
                        <legend><center><strong>Service Information</strong></center></legend>
                    </div>
                </div>
                <br>


                <div class="row">
                    <div class="col-6 col-md-6">

                        <div class="form-group row">

                            <!--<label for="example-number-input" class="col-5 col-form-label">A/C Repair</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        A/C Repair
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-5 col-form-label">Air Filters</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Air Filters
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-5 col-form-label">Batteries</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Batteries
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Belts & Hoses</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Belts & Hoses
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Car Service & Preventative Maintenance</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Car Service & Preventative Maintenance
                                    </label>
                                </div>
                            </div>

                        </div>                        
                    </div>

                    <div class="col-6 col-md-6">

                        <div class="form-group row">

                            <!--<label for="example-number-input" class="col-10 col-form-label">Differential Service</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Differential Service
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Engine Diagnositcs</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Engine Diagnositcs
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Fuel and Emission</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Fuel and Emission
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Oil Changes</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Oil Changes
                                    </label>
                                </div>
                            </div>

                            <!--<label for="example-number-input" class="col-10 col-form-label">Suspension Repair</label>-->
                            <div class="col-10">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                    <label class="form-check-label" for="defaultCheck1">
                                        Suspension Repair
                                    </label>
                                </div>
                            </div>

                        </div>                       
                    </div>                     
                </div>

                <form action="" method="">
                    <div class="row">
                        <div class="col-12 col-md-12 text-right">
                            <button type="submit" class="btn btn-success">Success</button>
                        </div>
                    </div>
                    <br>
                </form>

            </div>


            <script>
                $(document).ready(function () {
                    $("#vehiclemake").change(function () {
                        var val = $(this).val();
                        if (val == "Selectmake") {
                            $("#vehiclemodel").html("<option value='SelectModel'>-Select Model-</option>");
                        } else if (val == "Audi") {
                            $("#vehiclemodel").html("<option value='A1'>A1</option><option value='A3'>A3</option><option value='Q2'>Q2</option>");
                        } else if (val == "BMW") {
                            $("#vehiclemodel").html("<option value='1'>1 Series</option><option value='2'>2 Series</option><option value='3'>3 Series</option>");
                        } else if (val == "Ford") {
//                            alert("Hi");
                            $("#vehiclemodel").html("<option value='BMax'>B-Max</option><option value='CMax'>C-Max</option><option value='Eco'>EcoSport</option><option value='Fiesta'>Fiesta</option><option value='Focus'>Focus</option>");
                        } else if (val == "Honda") {
                            $("#vehiclemodel").html("<option value='Civic'>Civic</option><option value='CRV'>CRV</option><option value='HRV'>HRV</option><option value='Jazz'>Jazz</option>");
                        } else if (val == "Benz") {
                            $("#vehiclemodel").html("<option value='A'>A-Class</option><option value='B'>B-Class</option><option value='C'>C-Class</option><option value='CLA'>CLA</option>");
                        } else if (val == "Nissan") {
                            $("#vehiclemodel").html("<option value='Juke'>Juke</option><option value='Micra'>Micra</option><option value='Pulsar'>Pulsar</option><option value='NV'>NV200</option>");
                        } else if (val == "Toyota") {
                            $("#vehiclemodel").html("<option value='Auris'>Aurus</option><option value='AYGO'>AYGO</option><option value='CHR'>C-HR</option><option value='Verso'>Verso</option>");
                        } else if (val == "Volvo") {
                            $("#vehiclemodel").html("<option value='V40'>V40</option><option value='XC40'>XC40</option>");
                        }
                    });
                });
            </script>


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
        <script src="js/Dashboard/JQueryNew.js"></script>
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
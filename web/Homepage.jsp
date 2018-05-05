<%-- 
    Document   : Homepage
    Created on : Apr 25, 2018, 2:11:17 AM
    Author     : Last Kings
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ponja - Vehicle Service Centre</title>

        <link rel="icon" href="images/1.png">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/mdb.css">
        <link rel="stylesheet" type="text/css" href="css/mdbootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css"> 
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>


        <link rel="stylesheet" type="text/css" href="css/Homepage/NavigationBar.css">
        <link rel="stylesheet" type="text/css" href="css/Homepage/carousel.css">
        <link rel="stylesheet" type="text/css" href="css/Homepage/cards.css">

    </head>
    <body>
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg  navigation-bar">

            <!-- Navbar brand --> 

            <img class="logo" alt="Brand" src="images/1.png">
            <a class="navbar-brand" href="Homepage.jsp">Ponja Vehicle Service Centre</a>
            <!-- Collapse button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#basicExampleNav" aria-controls="basicExampleNav"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Collapsible content -->
            <div class="collapse navbar-collapse" id="basicExampleNav">

                <!-- Links -->
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home
                            <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.jsp">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class=" nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Services
                        </a>
                        <div class="dropdown-menu dropdown-services" aria-labelledby="navbarDropdownMenuLink">                                                        
                            <a class="dropdown-item hvr-sweep-to-top" href="Our Services.html"> Car Wash</a>
                            <a class="dropdown-item hvr-sweep-to-top" href="Our Services.html"> Auto Detailing</a>
                            <a class="dropdown-item hvr-sweep-to-top" href="Our Services.html"> Lubrication Service</a>   
                            <a class="dropdown-item hvr-sweep-to-top" href="Our Services.html"> Wheel Alignment</a>                            
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="BookOnline.jsp">Book Online</a>
                    </li>
                    <li class="nav-item vertical-line">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>

                    <%
                        String username = String.valueOf(session.getAttribute("username"));
//                        out.println(username);
                        if (username.equals("null")) {
                    %>
                    <li>
                        <span class="fa fa-sign-in fa" aria-hidden="true"></span>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>
                    <% } else {%>
                    <li>
                        <span class="fa fa-sign-in fa" aria-hidden="true"></span>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Dashboard.jsp">Hi ${username}</a>
                    </li>
                    <% }%>

                </ul>
                <!-- Links -->                
            </div>
            <!-- Collapsible content -->
        </nav>
        <!--/.Navbar-->

        <!--==========================================-->
        <!-- Carousel                                 -->
        <!--==========================================-->
        <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3500">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
                <li data-target="#myCarousel" data-slide-to="4"></li>
                <li data-target="#myCarousel" data-slide-to="5"></li>
                <li data-target="#myCarousel" data-slide-to="6"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="images/carousel/1.jpg" alt="First slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block text-left">
                            <h1>A</h1>
                            <p id="carousel-text">AB</p>
                            <p><a id="carousel-btn" class=" btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                        </div> 
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="images/carousel/2.jpg" alt="Second slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>Another example headline.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="images/carousel/3.jpg" alt="Third slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block text-right">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="images/carousel/4.jpg" alt="Third slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block text-left">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="images/carousel/5.jpg" alt="Third slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src=images/carousel/6.jpg alt="Third slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block text-right">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div> 
                <div class="carousel-item">
                    <img class="third-slide" src="images/carousel/7.jpg" alt="Third slide">
                    <div class="container container-carousel">
                        <div class="carousel-caption d-none d-md-block text-left">
                            <h1>One more for good measure.</h1>
                            <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                            <p><a id="carousel-btn" class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                        </div>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon fa fa-chevron-left fa-2x" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon fa fa-chevron-right fa-2x" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>    

        <!--==========================================-->
        <!-- End of Carousel                          -->
        <!--==========================================-->


        <br>

        <div class="container">
            <div class="row">
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="images/HP-4Visions/Exceptional Quality.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Exceptional Quality</h5>
                            <p class="card-text">At every Ponja Total—Care Point only the best equipment, products and people work on your vehicle, This has characterized Ponja Quality since our inception in 1994.</p>
                            <!--<a href="#" class="btn btn-primary">Body Shop</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="images/HP-4Visions/Customer Convenience.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Customer Convenience</h5>
                            <p class="card-text">With 08 locations at present and more to come, you are sure to find an Ponja Total-Auto-Care Point near you, we are open from 7.30am to 6.30pm every single day.</p>
                            <!--<a href="#" class="btn btn-primary">Mechanical Unit</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="images/HP-4Visions/Standardised Consistency.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Standardised Consistency</h5>
                            <p class="card-text">Whatever Ponja Total-Auto-Care Point you pick, you can be sure of the same commitment to quality in everything we do. Because we respect all our customers equally.</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="images/HP-4Visions/Experience and Expertise.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Experience and Expertise</h5>
                            <p class="card-text">An exceptional track record over one and a half decades is your assurance that every Ponja Total-Auto-Care Point has what is takes to meet and exceed your expectations.</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>                 
            </div>
        </div>


        <br>

        <!--==========================================-->
        <!--Footer-->
        <!--==========================================-->
        <footer class="page-footer stylish-color-dark">

            <!--Footer Links-->
            <div class="container">

                <!-- Footer links -->
                <div class="row text-center text-md-left mt-3 pb-3">

                    <!--First column-->
                    <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="title mb-4 font-bold">Ponja Vehicle Service Center</h6>
                        <p>Ponja the total auto care specialists commenced to offer total auto care solutions in 1994 and continues to believe every customer is a valuable business partner.</p>
                    </div>
                    <!--/.First column-->

                    <hr class="w-100 clearfix d-md-none">

                    <!--Second column-->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="title mb-4 font-bold">Packages</h6>
                        <p><a href="#!">Car Wash Packages</a></p>
                        <p><a href="#!">Full Lubrication Service Packages</a></p>
                        <p><a href="#!">Auto Detailing Packages</a></p>
                        <!--<p><a href="#!">Customer Delight Services</a></p>-->
                    </div>
                    <!--/.Second column-->

                    <hr class="w-100 clearfix d-md-none">

                    <!--Third column-->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
                        <h6 class="title mb-4 font-bold">Useful links</h6>
                        <p><a href="AboutUs.jsp">About Us</a></p>
                        <p><a href="#!">Services</a></p>
                        <p><a href="BookOnline.jsp">Book Onlin</a></p>
                        <!--<p><a href="#!">Help</a></p>-->
                    </div>
                    <!--/.Third column-->

                    <hr class="w-100 clearfix d-md-none">

                    <!--Fourth column-->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
                        <h6 class="title mb-4 font-bold">Contact</h6>
                        <p><i class="fa fa-home mr-3"></i> Pasan Mw, Welivita Rd, Malabe.</p>
                        <a data-toggle="modal" data-target="#emailUs"  id="email-modal-trigger-btn" ><p><i class="fa fa-envelope mr-3"></i> info@ponja.lk</p></a>
                        <!--<p><i class="fa fa-home mr-3"></i> <button type="button" class="btn btn-outline-white btn-sm" data-toggle="modal" data-target="#emailUs">info@example.com</button></p>-->
                        <!--<button type="button" class="btn btn-outline-blue btn-sm" ><i class="fa fa-envelope mr-3"></i>info@example.com</button>-->
                        <p><i class="fa fa-phone mr-3"></i> + 94 234 567 88</p></a
                        <p><i class="fa fa-print mr-3"></i> + 94 234 567 89</p>                
                    </div>
                    <!--/.Fourth column-->

                </div>
                <!-- Footer links -->

                <hr>

                <div class="row py-3 d-flex align-items-center">

                    <!--Grid column-->
                    <div class="col-md-8 col-lg-9">

                        <!--Copyright-->
                        <p class="text-center text-md-left grey-text">© 2018 Copyright: <a href="Homepage.jsp"><strong> www.ponjavehicleservice.lk</strong></a></p>
                        <!--/.Copyright-->

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-4 col-lg-3 ml-lg-0">



                    </div>
                    <!--Grid column-->

                </div>

            </div>

        </footer>
        <!--==========================================-->
        <!--End of Footer-->
        <!--==========================================-->




        <script>
            $(document).ready(function () {
                $("#button").click(function () {
                    $('html, body').animate({
                        scrollTop: $("#myCarousel").offset().top
                    }, 500);
                });
            });
        </script> 

        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>             
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>

        <!--==========================================-->
        <!--End of carousel-->
        <!--==========================================-->

    </body>
</html>

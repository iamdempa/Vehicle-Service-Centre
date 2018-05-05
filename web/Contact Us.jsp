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
        <title>Ponja - Contact Us</title>

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
                        <a class="nav-link" href="#">About Us</a>
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
                        <a class="nav-link" href="#">Book Online</a>
                    </li>
                    <li class="nav-item vertical-line">
                        <a class="nav-link" href="#">Contact Us</a>
                    </li>
                    <li>
                        <span class="fa fa-sign-in fa" aria-hidden="true"></span>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Login.jsp">Login</a>
                    </li>                      
                </ul>
                <!-- Links -->                
            </div>
            <!-- Collapsible content -->
        </nav>
        <!--/.Navbar-->



        <br>

        <div class="jumbotron">
            <h1>Contact Us- Our Branch network</h1>
            <p>Any customers from anywhere around the country can choose between following branches of our Service Centres. We are that spreaded out.</p>
            <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>-->
        </div>



        <!--        <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Attidiya</h4>
                        # 66, Attidiya Road, Ratmalana
                        Tel: 011 5742218 / 001 5766041 
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Dematagoda Baseline</h4>
                        # 279,Baseline Rd, Dematagoda 
                        Tel: 011-5761414 
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Katubedda Ram</h4>
                        # Galle Road, Katubadde, Moratuwa
                        Tel: 011 5232180
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Maharagama</h4>
                        No.161,Dehiwala Rd, Maharagma.
                        Tel: 011 2850239 / Fax: 011 2850239
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Charles PL, Moratuwa</h4>
                        # 50, Charles Place, Moratuwa
                        Tel: 011 5555988 / 011 5735540
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Mt.Lavinia</h4>
                        # 58, Galle Road, Mount Lavinia
                        Tel: 011 5766043 
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">UKNawala</h4>
                        # 354,Nawala Rd, Rajagiriya
                        Tel: 011 5379061 
                    </div>
                </div>
        
                <div class="media">
                    <div class="media-left">
                        <a href="#">
                            <img class="media-object" src="http://via.placeholder.com/64x64" alt="...">
                        </a>
                    </div>
                    <div class="media-body">
                        <h4 class="media-heading">Panadura</h4>
                        No 262 , Galle Road, Walana, Panadura
                        Tel: 038 5729999
                    </div>
                </div>-->

        

        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Attidiya</h5>
                            <p class="card-text"># 66, Attidiya Road, Ratmalana
                                Tel: 011 5742218 / 001 5766041 </p>
                            <!--<a href="#" class="btn btn-primary">Body Shop</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Dematagoda Baseline</h5>
                            <p class="card-text"># 279,Baseline Rd, Dematagoda 
                                Tel: 011-5761414</p>
                            <!--<a href="#" class="btn btn-primary">Mechanical Unit</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Katubedda Ram</h5>
                            <p class="card-text"># Galle Road, Katubadde, Moratuwa
                                Tel: 011 5232180</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Maharagama</h5>
                            <p class="card-text">No.161,Dehiwala Rd, Maharagma.
                                Tel: 011 2850239 / Fax: 011 2850239</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>                 
            </div>
        </div>
        <br>
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Charles PL, Moratuwa</h5>
                            <p class="card-text"># 50, Charles Place, Moratuwa
                                Tel: 011 5555988 / 011 5735540</p>
                            <!--<a href="#" class="btn btn-primary">Body Shop</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Mt.Lavinia</h5>                        
                            <p class="card-text"># 58, Galle Road, Mount Lavinia
                                Tel: 011 5766043 </p>
                            <!--<a href="#" class="btn btn-primary">Mechanical Unit</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">UKNawala</h5>
                            <p class="card-text"># 354,Nawala Rd, Rajagiriya
                                Tel: 011 5379061</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Panadura</h5>
                            <p class="card-text">No 262 , Galle Road, Walana, Panadura
                                Tel: 038 5729999</p>
                            <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        </div>
                    </div>

                </div>                 
            </div>
        </div>



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
                        <p><a href="#!">About Us</a></p>
                        <p><a href="#!">Services</a></p>
                        <p><a href="#!">Book Online</a></p>
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

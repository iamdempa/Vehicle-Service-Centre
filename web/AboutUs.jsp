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
        <title>Ponja - About Us</title>

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




        <br>

        <div class="container">
            <div class="row">
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">

                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">

                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">

                    </div>

                </div>
                <div class="col-3 col-md-3">

                    <div class="card" style="width: 17rem;">
                        <img class="card-img-top" src="http://via.placeholder.com/350x230" alt="Card image cap">

                    </div>

                </div>                 
            </div>
        </div>


        <br>


        <div class="jumbotron">
            <h1>About Us</h1>
            <p>Ponja has been in existence for over 70 years and represents some of the world’s leading automotive and related products and leads a commanding position in each of the product categories. The company has been featured amongst the Top 100 Most Respected Entities by LMD several times while Business Today has listed the company amongst the Top 25 Companies. United Motors has also been honored by the Chartered Institute of Accountants as the Winner of the Annual Report for the automotive sector in terms of profitability growth, corporate governance and Corporate Social Responsibility activities.

                UML is the sole distributor for some of the globally renowned passenger and commercial vehicle brands such as Mitsubishi passenger vehicles, Fuso Trucks & busses, JCB heavy equipment , Perodua & Zotye Cars, JMC trucks, Brilliance Vans, DFSK Commercial and passenger vehicles . It is further the sole distributor for Valvoline lubricants ,Yokohama tyres,and Simonize car care products.

                The United Motors branch network is located in Anuradapura, Kandy, Kurunegala, Matara, Nugegoda, Nuwara Eliya, Ratnapura and Jaffna. And the company hosts over 2,000 dealers island-wide for the distribution of tires, genuine parts & lubricants with representation in both urban and rural areas.</p>
            <!--<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>-->
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

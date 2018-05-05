<%-- 
    Document   : Login
    Created on : Apr 29, 2018, 7:48:35 PM
    Author     : Last Kings
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login - www.ponja.lk</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="icon" href="images/1.png">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/mdb.css">
        <link rel="stylesheet" type="text/css" href="css/mdbootstrap.css"> 
        <link rel="stylesheet" href="css/font-awesome.css"> 
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>


        <link rel="stylesheet" type="text/css" href="css/Login/Login.css">  




    </head>
    <body>
        <%
            if (session.getAttribute("username") == null) {
//                response.sendRedirect("Login.jsp");
            } else {
              response.sendRedirect("Dashboard.jsp");

            }
        %>
        <!-- /Start your project here-->

        <!--==========================================-->
        <!--Sign in-->
        <!--==========================================-->

        <section class="login-background">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3 col-sm-8 offset-sm-2 col-xs-12">
                        <div class="card border-none">
                            <div class="card-block">
                                <div class="mt-2"> 
                                    <img id="userImage" src="images-login/male.jpg" alt="Male" class="brand-logo mx-auto d-block img-fluid rounded-circle"/>
                                </div>
                                <p class="mt-4 text-white lead text-center">
                                    Sign in to access <strong>Dashboard</strong> 
                                </p>

                                <div class="container text-center">
                                    <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                            <!--                                            <form class="form-group text-center">-->
                                            <div class="form-group">                                        
                                                <p class="form-control-static">Select User Type :</p>
                                            </div>

                                            <!--SELECT USER OPTION-->
                                            <div class="form-group mx-sm-3" >
                                                <select class="custom-select" id="selectUserType">                                           
                                                    <option value="user">User</option>
                                                    <option value="admin">Administrator</option>                                            
                                                </select>
                                            </div>     
                                            <!--END OF SELECT USER OPTION-->


                                            <!--</form>-->
                                        </div>
                                    </div>
                                </div>


                                <div class="mt-4">
                                    <form method="POST" action="Login">

                                        <div class="form-group md-form">
                                            <!--<input type="email" class="form-control" id="email" value="" placeholder="Enter email address">-->
                                            <i class="fa fa-user prefix grey-text"></i>
                                            <input type="text" id="defaultForm-email username" name="username" class="form-control">
                                            <label for="defaultForm-email">Your Username</label>
                                        </div>
                                        <div class="form-group md-form">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <i class="fa fa-lock prefix grey-text"></i>
                                            <input type="password" name="password" id="defaultForm-pass password" class="form-control">
                                            <label for="defaultForm-pass">Your password</label>
                                        </div>
                                        <div class="text-center">
                                            <button type="reset" class="btn btn-amber btn-sm"><strong>Reset</strong></button>
                                            <button type="submit" id="btn-sign-in" class="btn btn-green btn-sm"><strong>Sign in</strong></button>
                                            <!--<button type="submit" id="btn-sign-up" class="btn btn-dark-green btn-sm"><strong>Sign Up</strong></button>-->
                                            <a class="btn btn-green btn-sm" href="RegisterUser.jsp">Sign Up</a>
                                        </div>

                                    </form>

                                </div>

                                <p class="text-center">
                                    Forget password? <a class="reset" href="#">Reset</a>
                                </p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </div>
            </div>
        </section>
        <!--==========================================-->
        <!--End of Sign in-->
        <!--==========================================-->


        <!-- SCRIPTS -->



        <!--==========================================-->
        <!--User icon change-->
        <!--==========================================-->        
        <script>
            var data = {
                "user": {img: "images-login/male.jpg", label: "jQuery"},
                "admin": {img: "images-login/admin.jpg", label: "Xml"}

            };

            $('#selectUserType').change(function () {
                var value = $(this).val();
                if (data[value] != undefined)
                {
                    $('#userImage').attr('src', data[value].img);

                }
            });
        </script>
        <!--==========================================-->
        <!--End of User icon change-->
        <!--==========================================-->



        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>             
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>

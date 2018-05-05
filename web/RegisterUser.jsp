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
        <title>Sign Up - www.ponja.lk</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="icon" href="images/1.png">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/mdb.css">
        <link rel="stylesheet" type="text/css" href="css/mdbootstrap.css"> 
        <link rel="stylesheet" href="css/font-awesome.css"> 
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>


        <link rel="stylesheet" type="text/css" href="css/RegisterUser/RegisterUser.css">  




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
                                <p class="mt-4 text-white lead text-center">
                                    <strong><a><i class="fa fa-home prefix grey-text"></i> Ponja</a></strong> 
                                </p>                      

                                <!--==========================================-->
                                <!--Alert-->
                                <!--==========================================-->
                                <div class="alert alert-danger alert-dismissible fade show" role="alert" id="validationAlert">
                                    <strong>Empty Field!</strong> You should check in on some of those fields below.
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <!--==========================================-->
                                <!--End of Alert-->
                                <!--==========================================-->

                                <p class="mt-4 text-white lead text-center">
                                    Sign Up as a <strong>New Member</strong> 
                                </p>

                                <div class="mt-4">
                                    <form method="POST" action="RegisterNewUser" onsubmit="return(showAlert());">
                                        <div class="form-group md-form">
                                            <!--<input type="email" class="form-control" id="email" value="" placeholder="Enter email address">-->
                                            <i class="fa fa-pencil prefix grey-text"></i>
                                            <input type="text" id="firstName" name="firstName"  class="form-control" >
                                            <label for="defaultForm-email">First Name</label>
                                        </div>

                                        <div class="form-group md-form">
                                            <!--<input type="email" class="form-control" id="email" value="" placeholder="Enter email address">-->
                                            <i class="fa fa-pencil prefix grey-text"></i>
                                            <input type="text" id="lastName" name="lastName" class="form-control" >
                                            <label for="defaultForm-email">Last Name</label>
                                        </div>

                                        <div class="form-group md-form">
                                            <!--<input type="email" class="form-control" id="email" value="" placeholder="Enter email address">-->
                                            <i class="fa fa-envelope prefix grey-text"></i>
                                            <input type="email" id="email" name="email" class="form-control" >
                                            <label for="defaultForm-email">Email Address</label>
                                        </div>


                                        <div class="form-group md-form">
                                            <!--<input type="email" class="form-control" id="email" value="" placeholder="Enter email address">-->
                                            <i class="fa fa-user prefix grey-text"></i>
                                            <input type="text" id="username" name="username" class="form-control" >
                                            <label for="defaultForm-email">Your Username</label>
                                        </div>
                                        <div class="form-group md-form">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <i class="fa fa-lock prefix grey-text"></i>
                                            <input type="password" name="password" id="password" class="form-control" >
                                            <label for="defaultForm-pass">Your password</label>
                                        </div>

                                        <div class="form-group md-form">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <i class="fa fa-lock prefix grey-text"></i>
                                            <input type="password" name="repeatpassword" id="repeatpassword" class="form-control" >
                                            <label for="defaultForm-pass">Repeat password</label>
                                        </div>

                                        <div class="form-group md-form">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <!--<i class="fa fa-question prefix grey-text"></i>-->
                                            <select class="form-control" id="securityQuestion" name="securityQuestion">
                                                <option selected>-Security Questions-</option>
                                                <option>What was your childhood nickname?</option>
                                                <option>In what city or town did your mother and father meet?</option>
                                                <option>What is your favorite team?</option>
                                                <option>What was your favorite sport in high school?</option>
                                            </select>
                                            <!--<label for="defaultForm-pass">Repeat password</label>-->
                                        </div>

                                        <div class="form-group md-form">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <i class="fa fa-question prefix grey-text"></i>
                                            <input type="text" name="answer" id="answer" class="form-control" >
                                            <label for="defaultForm-pass">Answer</label>
                                        </div>

                                        <div class="form-group md-form text-center">
                                            <!--<input type="password" class="form-control" id="password" value="" placeholder="Enter password">-->
                                            <!--<i class="fa fa-file prefix grey-text"></i>-->
                                            <!--<input type="file" name="repeatpassword" id="defaultForm-pass password" class="form-control">-->
                                            <!--<label for="defaultForm-pass">Upload Image</label>-->
                                            <div style="overflow: hidden;" class="text-center file btn btn-sm btn-primary">
                                                Upload a Profile Picture
                                                <input accept="image/*" style="position: absolute; font-size: 50px;opacity: 0;right: 0;top: 0" type="image" id="fileupload" name="profilePicture" /> 
                                            </div>
                                        </div>    

                                       
                                        <div class="mt-2"> 
                                            <img style="width: 100px;height: 100px;" id="userImage" src="images-login/images.png" alt="Male" class="brand-logo mx-auto d-block img-fluid rounded-circle"/>
                                        </div>

                                        <br><br>

                                        <div class="text-center">
                                            <button type="reset" class="btn btn-amber btn-sm"><strong>Reset</strong></button>
                                            <!--<button type="submit" id="btn-sign-in" class="btn btn-green btn-sm"><strong>Sign in</strong></button>-->
                                            <button type="submit" id="btn-sign-up" class="btn btn-green btn-sm"><strong>Sign Up</strong></button>                                            
                                        </div>



                                    </form>

                                </div>

                                <p class="text-center">
                                    Already have an account? <a class="" href="Login.jsp">Sign In</a>
                                </p>

                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                </div>
            </div>
        </section>
        <!--        <script>
                    $('#fileupload').on('change', function () {
                        $("#showfilename").text(this.files[0].name);
                    })
                </script>-->
        <!--==========================================-->
        <!--End of Sign in-->
        <!--==========================================-->





        <script>
            $("#validationAlert").hide();
            $("#btn-sign-up").click(function showAlert() {
                var firstName = document.getElementById('firstName').value;
                var lastName = document.getElementById('lastName').value;
                var email = document.getElementById('email').value;
                var userName = document.getElementById('username').value;
                var password = document.getElementById('password').value;
                var repeatPassword = document.getElementById('repeatpassword').value;
                var securityQuestion = document.getElementById('securityQuestion').value;
                var answer = document.getElementById('answer').value;
                if (firstName == "") {
//                        alert("URL is mandatory!");
                    $("#firstName").focus();
                    alert("1");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;

                } else if (lastName == "") {
                    $("#lastName").focus();
                    alert("2");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (email == "") {
                    document.getElementById('email').focus();
                    alert("3");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (userName == "") {
                    document.getElementById('username').focus();
                    alert("4");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (password == "") {
                    document.getElementById('password').focus();
                    alert("5");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (repeatPassword == "") {
                    document.getElementById('repeatpassword').focus();
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (securityQuestion == "-1") {
                    document.getElementById('securityQuestion').focus();
                    alert("6");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                } else if (answer == "") {
                    document.getElementById('answer').focus();
                    alert("7");
                    $("#validationAlert").fadeTo(2000, 500).slideUp(500, function () {
                        $("#validationAlert").slideUp(1500);
                    });
                    return false;
                }
                return true;


            });

        </script>


        <!-- SCRIPTS -->



        <!--==========================================-->
        <!--User icon change-->
        <!--==========================================-->        
        <script>
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#userImage').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#fileupload").change(function () {
                readURL(this);
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

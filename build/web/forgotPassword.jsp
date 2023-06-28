
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet" />

        <link rel="stylesheet" href="assets/fonts/icomoon/style.css" />

        <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />

        <!-- Style -->
        <link rel="stylesheet" href="assets/css/style.css" />

        <title>Login to Klassy</title>
    </head>
    
    <body>
        <%@include file="header.jsp" %>
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('assets/images/bg_1.jpg')"></div>
            <div class="contents order-2 order-md-1">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7"> 
                                              <ol class="list-unstyled">
                                                   <li><span class="text-primary">1. </span>Enter
                                                    your email address and full name below.</li>
                                                    <li><span class="text-primary">2. </span>Our
                                                    system will send you an OTP to your email</li>
                                                    <li><span class="text-primary">3. </span>Enter the OTP on the 
                                                      next page</li>
                                              </ol>
                             <h3 style="margin:50px 0px 0px 155px">Forgot Password</h3>
                            <form action="forgotPasswordController" method="post">
                                  <p class="text-success mb-4 forgot text-center">${mess}</p>
                                  <p class="text-danger mb-4 forgot text-center">${error}</p>
                                <div class="form-group first">
                                    <label for="username">Full Name</label>
                                    <input class="form-control" required="true"  name="fullname" />
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="email">Email Address</label>
                                    <input class="form-control" required  name="email"  />
                                </div>

                                <button type="submit" value="Log In" class="btn btn-outline-primary text-center" style="margin-left:190px">Retrieve</button>
                                
                               <p>
                                                <ol class="mb-5 pb-lg-2" style="color: #393f81; margin-top:50px">
                                                    <li>Want to login? <a
                                                href="login.jsp" style="color: #393f81;">Login here</a></li>
                                                    <li>Don't have an account? <a
                                                href="register.jsp" style="color: #393f81;">Register here</a></li>
                                                </ol>
                                        <a href="#!" class="small text-muted">Terms of use.</a>
                                        <a href="#!" class="small text-muted">Privacy policy</a>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery-3.3.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

</html>

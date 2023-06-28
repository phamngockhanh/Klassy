
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
        <%@include file="header.jsp" %>
    </head>
    
    <body>
        
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('assets/images/bg_1.jpg')"></div>
            <div class="contents order-2 order-md-1">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <h3 style="margin-left:155px">Login to <strong>Klassy</strong></h3>
                            <p class="mb-4 ${NOTICE_LOGIN}">
                                ${MESSAGE_LOGIN}
                            </p>
                            <form action="loginController" method="post">
                                <div class="form-group first">
                                    <label for="username">Email Address</label>
                                    <input type="email" class="form-control" name="email" />
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" required class="form-control form-control-lg" name="pass" />
                                </div>

                                <button type="submit" value="Log In" class="btn btn-outline-primary" style="margin-left:190px">Login</button>
                               
                                <ol class="mb-5 pb-lg-2" style="color: #393f81; margin-top:50px">
                                                    <li>Don't have an account? <a
                                                href="register.jsp" style="color: #393f81;">Register here</a></li>
                                                    <li>Forgot Password? <a
                                                href="forgotPassword.jsp" style="color: #393f81; ">Get password here</a></li>
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

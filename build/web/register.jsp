
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">


        <!-- Style -->
        <link rel="stylesheet" href="assets//css/style.css" />

        <title>Register</title>
    </head>
    
    <body>
        <%@include file="header.jsp" %>
        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('assets/images/bg_1.jpg') "></div>
            <div class="contents order-2 order-md-1">
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7" style ="margin-top:100px">
                            <h3 style ="margin-left:130px">Register to <strong>Klassy</strong></h3>
                            <p class="mb-4 ${NOTICE_REG}" id="notice">
                                ${MESSAGE_REG}
                            </p>
                            <form action="registerController" method="POST">
                                <div class="form-group last mb-3"">
                                    <h6 class="form-label">Full Name </h6>
                                    <input type="text" class="form-control" name="name"  required="true"/>
                                </div>

                                <div class="form-group last mb-3">
                                    <h6 class="form-label">Email </h6>
                                    <input type="email" class="form-control" name="email"  />
                                </div>

                                <div class="form-group last mb-3">
                                    <h6 class="form-label">Password </h6>
                                    <input type="password" class="form-control" name="pass"  required />
                                </div>

                                <div class="form-group last mb-3">
                                    <h6 class="form-label">Confirm Password </h6>
                                    <input type="password" class="form-control" name="repass" required  />
                                </div>
                                
                                <div class="form-group last mb-3">
                                    <h6 class="form-label">Phone </h6>
                                    <input type="text" class="form-control"
                                           required pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b" name="phone" />
                                    
                                </div>
                               <div class="form-group last mb-3">
                                    <h6 class="form-label">Address </h6>
                                    <input type="text" id="form3Example8" class="form-control" 
                                           required  name="address"/>
                                    
                                </div>
                                <div class="form-group last mb-3">

                                    <h6 class="form-label">Gender </h6>

                                    <div class="form-check form-check-inline mb-0 me-4 ">
                                        <label class="form-check-label" for="femaleGender">Female</label>
                                        <input class="form-check-input m-sm-1" type="radio"
                                               id="femaleGender" value="false" name = "gender"/>
                                        
                                    </div>

                                    <div class="form-check form-check-inline mb-0 me-4">
                                        <label class="form-check-label" for="maleGender">Male</label>
                                        <input class="form-check-input m-sm-1" checked type="radio" 
                                               id="maleGender" value="true" name = "gender" />
                                        
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-outline-primary" style="margin-left:190px">Sign Up</button>
                                <p>
                                <ol class="mb-5 pb-lg-2" style="color: #393f81;">
                                                    <li>Want to login? <a
                                                href="login.jsp" style="color: #393f81;">Login here</a></li>
                                                    <li>Forgot Password? <a
                                                href="forgotPassword.jsp" style="color: #393f81;">Get password here</a></li>
                                                </ol>
                               
                                        <a href="#!" class="small text-muted">Terms of use.</a>
                                        <a href="#!" class="small text-muted">Privacy policy</a>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
        <script src="http://localhost:9999/assets//js/jquery-3.3.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
        <script src="http://localhost:9999/assets/js/main.js"></script>
    </body>

</html>


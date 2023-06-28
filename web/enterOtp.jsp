
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
                            <h3 style="margin-left:155px">Enter <strong>OTP</strong></h3>
                            <p class="mb-4 ${NOTICE_LOGIN}">
                                ${MESSAGE_LOGIN}
                            </p>
                            <%
		  			if(request.getAttribute("message")!=null)
		  			{
		  				out.print("<p class='text-danger ml-1'>"+request.getAttribute("message")+"</p>");
		  			}
		  
		  %>
                            <form action="validateOtpController" method="post">
                                <div class="form-group last mb-3">
                                    <label for="">Enter OTP</label> 
                                    <input type="text" class="form-control" name="otp"  required pattern="(84|0[3|5|7|8|9])+([0-9]{8})\b">
                                </div>
                                
                                <button type="submit" class="btn btn-outline-primary" style="margin-left:190px">Submit</button>                               
                                

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

<%-- 
    Document   : profile
    Created on : Jun 27, 2023, 10:45:03 PM
    Author     : ngock
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css" rel="stylesheet" />
        <title>JSP Page</title>
        <style>
            body {
    background-color: #f9f9fa
}

.padding {
    padding: 3rem !important
}

.user-card-full {
    overflow: hidden;
}

.card {
    border-radius: 5px;
    -webkit-box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    box-shadow: 0 1px 20px 0 rgba(69,90,100,0.08);
    border: none;
    margin-bottom: 30px;
}

.m-r-0 {
    margin-right: 0px;
}

.m-l-0 {
    margin-left: 0px;
}

.user-card-full .user-profile {
    border-radius: 5px 0 0 5px;
}

.bg-c-lite-green {
    background: -webkit-gradient(linear, left top, right top, from(#f29263), to(#ee5a6f));
    background: linear-gradient(to right, #ee5a6f, #f29263);
}

.user-profile {
    padding: 20px 0;
}

.card-block {
    padding: 1.25rem;
}

.m-b-25 {
    margin-bottom: 25px;
}

.img-radius {
    border-radius: 5px;
}


 
h6 {
    font-size: 14px;
}

.card .card-block p {
    line-height: 25px;
}

@media only screen and (min-width: 1400px){
p {
    font-size: 14px;
}
}

.card-block {
    padding: 1.25rem;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.m-b-20 {
    margin-bottom: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.card .card-block p {
    line-height: 25px;
}

.m-b-10 {
    margin-bottom: 10px;
}

.text-muted {
    color: #919aa3 !important;
}

.b-b-default {
    border-bottom: 1px solid #e0e0e0;
}

.f-w-600 {
    font-weight: 600;
}

.m-b-20 {
    margin-bottom: 20px;
}

.m-t-40 {
    margin-top: 20px;
}

.p-b-5 {
    padding-bottom: 5px !important;
}

.m-b-10 {
    margin-bottom: 10px;
}

.m-t-40 {
    margin-top: 20px;
}

.user-card-full .social-link li {
    display: inline-block;
}

.user-card-full .social-link li a {
    font-size: 20px;
    margin: 0 10px 0 0;
    -webkit-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
                                                                 
                                        <form action = "changePassController" method="post">
                                        <div class="page-content page-container container mx-auto" id="page-content" style="margin-top:130px" >
                                        <div class="padding">
                                            <div class="row container d-flex justify-content-center">
                                    <div class="col-xl-6 col-md-12">
                                                <div class="card user-card-full">
                                                    <div class="row m-l-0 m-r-0">
                                                        <div class="col-sm-4 bg-c-lite-green user-profile">
                                                            <div class="card-block text-center text-white">
                                                                <div class="m-b-25">
                                                                    <img src="https://img.icons8.com/bubbles/100/000000/user.png" class="img-radius" alt="User-Profile-Image">
                                                                </div>
                                                                <h6 class="f-w-600" ">${requestScope.user.fullname}</h6> 
                                                                <i class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
                                                            </div>
                                                        </div>

                                                        <div class="col-sm-8">
                                                            <div class="card-block">
                                                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600"></h6>
                                                                <c:if test="${requestScope.mess != null}"> 
                                                                  <c:if test="${requestScope.mess.statusCode != 200}">
                                                                <div class="alert alert-danger" role="alert">
                                                                     ${requestScope.mess.mess}
                                                                      </div>
                                                                     </c:if>
                                                                <c:if test="${requestScope.mess.statusCode == 200}">
                                                                    <div class="alert alert-success" role="alert">
                                                                         ${requestScope.mess.mess}
                                                                    </div>
                                                                 </c:if>
                                                                    </c:if> 
                                                                <div class="row">
                                                                    <div class="col-sm-12" style="margin-top:10px">
                                                                        <p class="m-b-10 f-w-600">Old Password</p>
                                                                        <input type="password" class="text-muted f-w-400" required="true"
                                                                                placeholder="Old Password" value="" name="opass">
                                           
                                                                    </div>
                                                                    
                                                                </div>
                                                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600"></h6>
                                                                <div class="row">
                                                                    <div class="col-sm-12">
                                                                        <p class="m-b-10 f-w-600">New Password</p>
                                                                        <input type="password" class="text-muted f-w-400" required="true"
                                                                                placeholder="New Password" value="" name="npass">
                                                                    </div>
                                                                    <div class="col-sm-12" style="margin-top:10px">
                                                                        <p class="m-b-10 f-w-600">Confirm Password</p>
                                                                       <input type="password" class="text-muted f-w-400" required="true"
                                                                                placeholder="Confirm Password" value="" name="cpass">
                                                                    </div>
                                                                   
                                                                    
                                                                </div>
                                                                <div class="col-sm-12 text-center"><button class="btn btn-primary profile-button" type="submit" 
                                                                  style="margin-right:30px;margin-top:40px ">Save Changes</button>
                                                                 </div>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                             </div>
                                                </div>
                                            </div>
                                                                  </form>
       
       <footer style="margin-top:173px;">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="logo">
                        <a href="index.html"><img src="assets/images/white-logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-4 col-xs-12">
                    <div class="left-text-content">
                        <p>© Copyright Klassy Cafe Co.
                        
                        <br>Design: TemplateMo</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    </body>
    
</html>

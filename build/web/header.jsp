<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="css.jsp"%>
        <title>JSP Page</title>
         <style>
    .cart-btn {
        display: flex;
        align-items: center;
        justify-content: center;
        border: none;
        background-color: transparent;
        cursor: pointer;
        }

        .cart-icon {
         display: inline-block;
         width: 20px;
         height: 20px;
         margin-right: 5px;
         background-image: url('assets/images/icons8-cart-64.png');
         background-repeat: no-repeat;
         background-size: contain;
        }

.cart-label {
  font-weight: bold;
  font-size: 16px;
}
  </style>
    </head>
    <body>
         <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="homeController" class="logo">
                            <img src="assets/images/klassy-logo.png" align="klassy cafe html template">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="homeController" class="active">Home</a></li>
<!--                            <li class="scroll-to-section"><a href="#about">About</a></li>
                           	-->
                        <!-- 
                            <li class="submenu">
                                <a href="javascript:;">Drop Down</a>
                                <ul>
                                    <li><a href="#">Drop Down Page 1</a></li>
                                    <li><a href="#">Drop Down Page 2</a></li>
                                    <li><a href="#">Drop Down Page 3</a></li>
                                </ul>
                            </li>
                        -->
                            <li class="scroll-to-section"><a href="menuController">Menu</a></li>
<!--                            <li class="scroll-to-section"><a href="#chefs">Chefs</a></li> -->
<!--                            <li class="submenu">
                                <a href="javascript:;">Features</a>
                                <ul>
                                    <li><a href="#">Features Page 1</a></li>
                                    <li><a href="#">Features Page 2</a></li>
                                    <li><a href="#">Features Page 3</a></li>
                                    <li><a href="#">Features Page 4</a></li>
                                </ul>
                            </li>-->
                            <!-- <li class=""><a rel="sponsored" href="https://templatemo.com" target="_blank">External URL</a></li> -->
<!--                            <li class="scroll-to-section"><a href="#reservation">Contact Us</a></li>-->
                             <c:if test="${sessionScope.id == null}">
                            <li class="scroll-to-section"><a href="login.jsp">Login</a></li>
                             </c:if>
                            <c:if test="${sessionScope.id == null}">
                            <li class="scroll-to-section"><a href="forgotPassword.jsp">Forgot Password</a></li>
                             </c:if>
                            <c:if test="${sessionScope.id != null}">
                                <li  class="scroll-to-section"><a href="profileController">
                                    Profile
                                    </a>
                                </li>
                                <li class="scroll-to-section"><a href="changePassController">
                                    Change Pass
                                    </a>
                                </li>
                                <li  class="scroll-to-section"><a href="logoutController">
                                    Logout
                                    </a>
                                </li> 
                            </c:if>
                            
                            <c:if test="${sessionScope.id != null}">
                            <li class="scroll-to-section">
                                <a href="chooseTable.jsp">Booking</a>
                            </li> 
                                <button class="cart-btn"><a href="historyBookingController">
                                    <span class="cart-icon"></span>
                                    <span class="cart-label">Cart</span>
                                    </a>
                                </button>
                            </c:if>
                            

                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->
    </body>
</html>

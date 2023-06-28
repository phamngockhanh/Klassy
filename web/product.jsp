
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
        <title>Order Page</title>
        <style>
            body {
    background: #ffc107;
    font-family: Arial, Helvetica, sans-serif
}

.container1 {
    background: #fff !important;
    border: none;
    border-radius: none
}

.abc {
    padding-left: 40px
}

.pqr {
    padding-right: 70px;
    padding-top: 14px
}

.para {
    float: right;
    margin-right: 0;
    padding-left: 80%;
    top: 0
}

.fa-star {
    color: yellow
}

li {
    list-style: none;
    line-height: 50px;
    color: #000
}

.col-md-2 {
    padding-bottom: 20px;
    font-weight: bold
}

.col-md-2 a {
    text-decoration: none;
    color: #000
}

.col-md-2.mio {
    font-size: 12px;
    padding-top: 7px
}

.des::after {
    content: '.';
    font-size: 0;
    display: block;
    border-radius: 20px;
    height: 6px;
    width: 55%;
    background: yellow;
    margin: 14px 0
}

.r4 {
    padding-left: 25px
}

.btn-outline-warning {
    border-radius: 0;
    border: 2px solid yellow;
    color: #000;
    font-size: 12px;
    font-weight: bold;
    width: 70%
}
h1{
    color:orangered;
}
@media screen and (max-width: 620px) {
    .container {
        width: 98%;
        display: flex;
        flex-flow: column;
        text-align: center
    }

    .des::after {
        content: '.';
        font-size: 0;
        display: block;
        border-radius: 20px;
        height: 6px;
        width: 35%;
        background: yellow;
        margin: 10px auto
    }

    .pqr {
        text-align: center;
        margin: 0 30px
    }

    .para {
        text-align: center;
        padding-left: 90px;
        padding-top: 10px
    }

    .klo {
        display: flex;
        text-align: center;
        margin: 0 auto;
        margin-right: 40px
    }
}
        </style>
    </head>
    <body>
        <!--Header-->
        <%@include file="header.jsp" %>
        <!--Header-->

        <div id="top">
        <div class="container-fluid">
            <div class="row half">
                <div class="col-lg-4">
                    <div class="left-content">
                        <div class="inner-content">
                            <h4>Klassy Order</h4>
                            <h6></h6>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="main-banner header-text">
                        <div class="Modern-Slider">
                          <!-- Item -->
                          <div class="item">
                            <div class="img-fill">
                                <img src="assets/images/menupic.jpg" alt="">
                            </div>
                          </div>
                          <!-- // Item -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        <!-- food section -->
        <div class="container py-4 my-4 mx-auto d-flex flex-column" >
    <div class="header" style="margin-bottom: 40px">
        <div class="row r1">
            <div class="col-md-8 abc">
                <h1>${requestScope.product.productName}</h1>
            </div>
            
           
        </div>
    </div>
    <div class="container-body mt-4">
        <div class="row r3">
            <div class="col-md-5 p-0 klo">
                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <h4>Category:</h4>
                                    </li>
                                    <li class="list-inline-item">
                                        <h4 class="text-muted">${requestScope.product.category.categoryName}</h4>
                                    </li>
                 </ul>
                 <ul class="list-inline" style="margin-top:30px;">
                        <li class="list-inline-item">
                          <h4>Price:</h4>
                          </li>
                             <li class="list-inline-item">
                             
                                 <h4 class="text-muted">${requestScope.product.price}</h4>
                               
                         </li>
                 </ul>
                  <ul class="list-inline" style="margin-top:30px;">
                        <li class="list-inline-item">
                          <h4>Description:</h4>
                          </li>
                             <li class="list-inline-item">
                             
                                 <h4 class="text-muted">${requestScope.product.descript}</h4>
                               
                         </li>
                 </ul>
            </div>
            <div class="col-md-7"> <img src="assets/images/${requestScope.product.image}" width="90%" height="95%"> </div>
        </div>
    </div>
    
        <form class="" action="buyController" method="post">
            
                                    <div class="col-md-2 myt">
                                        <label class="labels">Quantity</label>
                                                <input type="number" required class="form-control"
                                                       name="num" value="1" min="0" max="20" >
                                         
                                    </div>
                                            <input hidden type="text" value="${requestScope.product.productId}" name="productId"/>
                                            <div class="col-md-2 myt" >
                                                
                                            <c:if test="${sessionScope.id != null}">
                                                <button type="submit" class="btn btn-outline-warning">
                                                    Order
                                                </button>
                                            </c:if>
                                            
                                            
                                                
                                            <c:if test="${sessionScope.id == null}">
                                                
                                                <a href="loginController" class="btn btn-outline-warning container-fluid">
                                                    Login to order
                                                </a>
                                            </c:if>
                                       
                                    </div>
           
         </form>
    
            
</div>
        <script type="text/javascript">
            function buy(id) {
                var m = document.f.num.value;
                document.f.action = "buy?id=" + id + "&num=" + m;
                document.f.submit();
            }
        </script>   

        <!-- end food section -->

        
    </body>
    <%@include  file="footer.jsp"%>
    

</html>

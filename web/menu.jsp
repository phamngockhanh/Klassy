<%-- 
    Document   : Menu
    Created on : Jun 28, 2023, 9:52:56 PM
    Author     : ngock
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="stylesheet" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <title>JSP Page</title>
        <style>
          

body {
    margin: 0;
    font-family: Roboto,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
    font-size: .8125rem;
    font-weight: 400;
    line-height: 1.5385;
    color: #333;
    text-align: left;
    background-color: #2196F3;
}

.mt-50{

    margin-top: 50px;
}

.mb-50{

    margin-bottom: 50px;
}



.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: .1875rem;
}

.card-img-actions {
    position: relative;
}
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
    text-align: center;
}

.card-img{

    width: 350px;
}

.star{
        color: red;
}

.bg-cart {
    background-color:orange;
    color:#fff;
}

.bg-cart:hover {
    
    color:#fff;
}

.bg-buy {
    background-color:green;
    color:#fff;
    padding-right: 29px;
}
.bg-buy:hover {
    
    color:#fff;
}

a{

    text-decoration: none !important;
}
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <div class="left-content">
                        <div class="inner-content">
                            <h4>Klassy Menu</h4>
                            <h6></h6>
                            <div class="main-white-button scroll-to-section">
                                <a href="#reservation">Make an order</a>
                            </div>
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
        <div class="container" style="margin-top:50px">
                <form method="get" action="menuController" class=row>
                    <div class="col-md-4">

                    </div>
                    <div class="col-md-3">
                        <input type="text"  class="form-control" name="name" value="${param["name"]}">
                    </div>
                    <div class="col-md-3">
                        <input type="submit" value="Seach" class="btn btn-primary">
                    </div>
                    <div class="col-md-2">

                    </div>
                </form>
                
        </div>
        
            

                <div class="container d-flex justify-content-center mt-50 mb-50">
            
                     <div class="row">
                          
                              
                        <c:forEach items="${requestScope.product}" var="f">
                         <div style="margin-left:10px;margin-bottom:10px">
                            <div class="card">
                                 <div class="card-body">
                                        <div class="card-img-actions">
                                            
                                                <img src="assets/images/${f.image}" class="card-img img-fluid" style="width:308px;height:204.91px;">
                                        </div>           
                                 </div>
                                   <div class="card-body bg-light text-center">
                                        <div class="mb-2">
                                            <h6 class="font-weight-semibold mb-2">
                                                <a href="#" class="text-default mb-2" data-abc="true">${f.productName}</a>
                                            </h6>

                                            <a href="#" class="text-muted" data-abc="true">${f.category.categoryName}</a>
                                        </div>

                                        <h3 class="mb-0 font-weight-semibold">${f.price}</h3>

                                      

                                        <button type="button" class=""><i class="fa fa-cart-plus mr-2"></i> Add to cart</button>
                                        <button type="button" class="" ><i class="fa fa-cart-plus mr-2">
                                                </i> <a href="productController?productId=${f.productId}">Order</a></button>

                                        
                                    </div>
                               </div>
                            </div>
                        </c:forEach>
                              
                          </div>
                    </div>
           
          
          
            <%@include file="footer.jsp"%>
    </body>
</html>

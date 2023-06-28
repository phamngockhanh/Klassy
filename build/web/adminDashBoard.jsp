
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    </head>

    <body class="sb-nav-fixed">
        <%@include file="adminHeader.jsp"  %>

        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main style="margin-left: 200px; height: 540px; margin-top:100px;">
                    <div class="container-fluid px-4">
                        
                        <div class="row d-flex justify-content-around" style="width: 90%;">
                            <h1 class="text-center" style="margin-bottom: 30px;">Dashboard</h1>
                            <div class="col-md-5">
                                <div class="card bg-warning text-white mb-4" >
                                    <div class="card-body">Total Product: </div>
                                    <h3 class="card-body text-center">${totalProduct} Products</h3>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="manageProductControll?productName=&category=&page=1" style="text-decoration: none">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="card bg-warning text-white mb-4" >
                                    <div class="card-body">Total Booking: </div>
                                    <h3 class="card-body text-center">${totalBooking} Booking</h3>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link " href="manageBookingController?title=&date=&order=showId&dimesion=asc&page=1" style="text-decoration: none">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Total Users: </div>
                                    <h3 class="card-body text-center">${totalUser} Users</h3>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="managerUserControll"style="text-decoration: none">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Total revenue: </div>
                                    <h3 class="card-body text-center">${totalBooking}$</h3>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#" style="text-decoration: none">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                              <div class="col-md-5 mx-auto">
                                 <div class="card bg-warning text-white mb-4">   
                                     <div class="card-body"> </div>
                                    <h3 class="card-body text-center">Staff Page</h3>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="StaffHomePage.jsp"></a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </main>
                <%@include file="adminFooter.jsp" %>
            </div>
        </div>
                                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
    </body>
    

</html>

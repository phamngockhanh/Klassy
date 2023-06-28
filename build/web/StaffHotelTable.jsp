
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>SB Admin 2 - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link
            href="assets/vendor/fontawesome-free/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet"
            />

        <!-- Custom styles for this template-->
        <link href="assets/css/sb-admin-2.min.css" rel="stylesheet" />

        <!-- Custom styles for this page -->
        <link
            rel="stylesheet"
            href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css"
            />

        <link
            href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Sidebar -->
            <ul
                class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
                id="accordionSidebar"
                >
                <!-- Sidebar - Brand -->
                <a
                    class="sidebar-brand d-flex align-items-center justify-content-center"
                    href="StaffController"
                    >
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">Staff Page</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0" />

                <!-- Nav Item - Dashboard -->
                <li class="nav-item">
                    <a class="nav-link" href="StaffController">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Bills</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider" />
                <!-- Nav Item - Tables -->
                <li class="nav-item active">
                    <a class="nav-link" href="StaffHotelTable">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Hotels</span></a>
                </li>

                <!-- Nav Item - Tables -->
                <!-- Nav Item - Tables -->
                <li class="nav-item ">
                    <a class="nav-link" href="StaffTableController">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Staff Accounts</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="StaffCustomerTableController">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Customer Accounts</span></a>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block" />

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <nav
                        class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"
                        >
                        <!-- Sidebar Toggle (Topbar) -->
                        <button
                            id="sidebarToggleTop"
                            class="btn btn-link d-md-none rounded-circle mr-3"
                            >
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">
                            <!-- Nav Item - Alerts -->

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="userDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small"
                                          >${user.username}
                                    </span>
                                    <img
                                        class="img-profile rounded-circle"
                                        src="assets/images/undraw_profile.svg"
                                        />
                                </a>
                                <!-- Dropdown - User Information -->
                                <div
                                    class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown"
                                    >
                                    <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#updateAcc">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="HomePage">
                                        <i class="fa-solid fa-house fa-sm fa-fw mr-2 text-gray-400"></i>
                                        HomePage
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="LogoutController">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Content Row -->
                        <div class="row">
                            <!-- Content Column -->
                            <div class="col-lg-12 mb-4">
                                <!-- DataTales Example -->
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <div class="row justify-content-between">
                                            <div class="col-sm-12 col-md-6 col-lg-4">                                        
                                                <h6 class="m-0 font-weight-bold text-primary">
                                                    Hotels Table
                                                </h6>
                                            </div>
                                            <div class="col-sm-12 col-md-6 col-lg-4  d-flex justify-content-end" >
                                                <button class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#add-hotel">Add Hotels</button>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table
                                                class="table table-bordered"
                                                id="databill"
                                                width="100%"
                                                cellspacing="0"
                                                >
                                                <thead class="text-center">
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Hotel Name</th>
                                                        <th>Address</th>
                                                        <th>image</th>
                                                        <th>Number rooms</th>
                                                        <th>Amount</th>
                                                        <th>Type</th>
                                                        <th>Update</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${hotel}" var="hotel">
                                                        <tr>
                                                            <td>${hotel.getHotelID()}</td>
                                                            <td>${hotel.getName_hotel()}</td>
                                                            <td>${hotel.address}</td>
                                                            <td>
                                                                <img src="${hotel.image}" alt="${hotel.getName_hotel()}" width="200" height="150"/>

                                                            </td>
                                                            <td>${hotel.getNumber_room()}</td>
                                                            <td>$${hotel.getAmount()}/day</td>
                                                            <td>${hotel.getType()}</td>
                                                            <td> <a href="StaffUpdateHotel?id=${hotel.getHotelID()}" class="text-primary"> <i class="fa-solid fa-pen-to-square"></i></a> </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.container-fluid -->
                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright &copy; Your Website 2021</span>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->
                </div>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->


        <!-- Modal -->
        <div class="modal fade" id="add-hotel" tabindex="-1" aria-labelledby="add-hotel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form class="row g-3" action="StaffAddHotel" method="POST" enctype="multipart/form-data">
                            <div class="col-md-6">
                                <label for="hotelname" class="form-label">Hotel Name</label>
                                <input type="text" class="form-control" id="hotelname" name="hotelname" required>
                            </div>

                            <div class="col-md-6">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address" required>
                            </div>

                            <div class="col-md-12">
                                <label for="image" class="form-label">Upload Image</label>
                                <input type="file" class="form-control" id="image" name="image" required>
                            </div>
                            <div class="col-md-6">
                                <label for="amount" class="form-label">Amount</label>
                                <input type="number" class="form-control" id="amount" name="amount" min="1" value ="1" required>
                            </div>

                            <div class="col-md-6">
                                <label for="rooms" class="form-label">Rooms</label>
                                <input type="number" class="form-control" id="rooms" name="rooms" min="1" value="1" required>
                            </div>

                            <div class="col-md-12">
                                <label for="type" class="form-label">Type</label>
                                <input type="text" class="form-control" id="type" name="type" required>
                            </div>

                            <div class="col-12">
                                <button class="btn btn-outline-primary" type="submit">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>
        <jsp:include page=""></jsp:include>

        <!-- Bootstrap core JavaScript-->

        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
            integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
            integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
            crossorigin="anonymous"
        ></script>

        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
            integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        ></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>

        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="assets/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="assets/js/sb-admin-2.min.js"></script>

        <!-- Table level plugins -->

        <!-- Page level custom scripts -->
        <script>
            $(document).ready(function () {
                $("#databill").DataTable();
            });
        </script>
    </body>
</html>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>Profile</title>
                <meta content="" name="description">

                <meta content="" name="keywords">

                <!-- Favicons -->
                <link href="assets/img/favicon.png" rel="icon">
                <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

                <!-- Google Fonts -->
                <link
                    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                    rel="stylesheet">

                <!-- Vendor CSS Files -->
                <link href="assets/vendor/aos/aos.css" rel="stylesheet">
                <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
                <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
                <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

                <!-- Template Main CSS File -->
                <link href="assets/css/style.css" rel="stylesheet">

                <!-- =======================================================
                    * Template Name: FlexStart - v1.9.0
                    * Template URL: https://bootstrapmade.com/flexstart-bootstrap-startup-template/
                    * Author: BootstrapMade.com
                    * License: https://bootstrapmade.com/license/
                    ======================================================== -->
            </head>

            <body>

                <!-- ======= Header ======= -->
                <header id="header" class="header fixed-top">
                    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

                        <a href="#" class="logo d-flex align-items-center">
                            <img src="assets/img/logo.png" alt="">
                            <span>Shark Aquarium</span>
                        </a>

                        <nav id="navbar" class="navbar">
                            <ul>
                                <li class=lhiav-item><a class="nav-link" href="wallet">My Wallet</a></li>
                                <li class=lhiav-item><a class="nav-link" href="createBuyOrder">Create Buy Order</a></li>
                                <li class=lhiav-item><a class="nav-link" href="createSellOrder">Create Sell Order</a>
                                </li>
                                <li class=lhiav-item><a class="nav-link" href="myStocks">My Holdings</a></li>
                                <li><a class="getstarted scrollto" href="logout">Logout</a></li>
                            </ul>
                            <i class="bi bi-list mobile-nav-toggle"></i>
                        </nav>
                        <!-- .navbar -->

                    </div>
                </header><!-- End Header -->

                <section class="container" style="background-size: center;height: 900px; margin-top: 50px;">
                    <div class="container">
                        <div class="main-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="d-flex flex-column align-items-center text-center">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Entrepreneur"
                                                    class="rounded-circle p-1 bg-primary" width="110">
                                                <div class="mt-3">
                                                    <h4>${customer.firstName} ${customer.lastName}</h4>
                                                    <p class="text-secondary mb-1">Investor</p>
                                                    <br>
                                                    <a href="myStocks" class="btn btn-primary">My Holdings</a>
                                                    <a href="#sec1" class="btn btn-outline-primary">Pitch Aquascape</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Full Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control"
                                                        value="${customer.firstName} ${customer.lastName}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Email</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control" value="${customer.emailID}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">User Gender</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control" value="${customer.gender}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Mobile No.</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control" value="${customer.phoneNo}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Address</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control"
                                                        value="${customer.houseNo} ${customer.streetName}">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">City</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control" value="${customer.city} ">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">PIN Code</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input readonly type="text" class="form-control" value="${customer.pincode}">
                                                </div>
                                            </div>
                
                                        </div>
                                    </div>
                
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div id="sec1"
                        style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
                        <br>
                        <div style="margin-top: 30px;">
                            <caption>
                                <div class="col-lg-6 d-flex flex-column justify-content-center">
                                    <h1 style="text-align: center; align-content: center; color: blue;" data-aos="fade-up">Pitch Aquascape</h1>
                            </caption>
                            <br>
                        </div>

                        <div id="sec1" class="row" style="margin-left: 50px; margin-right: 50px;">
                            <div class="col-md-12">
                                <table id="example" class="table table-striped table-bordered" cellspacing="0"
                                    width="100%">
                                    <thead>
                                        <tr style="text-align: center;">
                                            <th>Company</th>
                                            <th>Description</th>
                                            <th>Amount Per Stock</th>
                                            <th>Number Of Stocks Available</th>
                                            <th>Enter number of Stocks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="pitch" items="${list}">
                                            <tr style="text-align: center;">
                                                <td>
                                                    <c:out value="${pitch.company}" />
                                                </td>
                                                <td>
                                                    <c:out value="${pitch.description}" />
                                                </td>
                                                <td>$
                                                    <c:out value="${pitch.amountPerStock}" />
                                                </td>
                                                <td>
                                                    <c:out value="${pitch.availableStocks}" />
                                                </td>
                                                <td>
                                                    <form method="get" action="/pitches/invest/${pitch.id}">
                                                        <input type="text" id="numberOfStocks" name="numberOfStocks">
                                                        <input type="submit" value="Invest"></input>

                                                    </form>
                                                </td>

                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <br><br>
                    </div>
                </section>

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>

                <!-- Vendor JS Files -->
                <script src="assets/vendor/purecounter/purecounter.js"></script>
                <script src="assets/vendor/aos/aos.js"></script>
                <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
                <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
                <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

                <!-- Template Main JS File -->
                <script src="assets/js/main.js"></script>

            </body>

            </html>
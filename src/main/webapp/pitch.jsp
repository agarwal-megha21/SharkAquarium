<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">
                  
                    <title>Pitch</title>
                    <meta content="" name="description">
                  
                    <meta content="" name="keywords">
                  
                    <!-- Favicons -->
                    <link href="assets/img/favicon.png" rel="icon">
                    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
                  
                    <!-- Google Fonts -->
                    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
                  
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
                            <li class=lhiav-item><a class="nav-link" href="create_pitch">Create Pitch</a></li>
                            <li><a class="getstarted scrollto" href="logout">Logout</a></li>
                            </ul>
                            <i class="bi bi-list mobile-nav-toggle"></i>
                        </nav>
                        <!-- .navbar -->

                        </div>
                    </header><!-- End Header -->

                    <section class="container">
                        <div class="form-container" style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                            <form action="/create_pitch" model="pitch" method="post"
                                style="background-color: rgba(255,255,255,0.64);">
                                <div class="row form-group" style="margin-top: 10px;">
                                </div>
                                <div class="container" style="margin-top: 0px;">
                                    <div class="row form-group" style="margin-top: 10px;">
                                        <h2 class="text-center" style="color:black;"><strong>Add Pitch</strong></h2>
                                    </div>
                                    
                                    <div class="row form-group" style="margin-top: 10px;">
                                        <label style="color:black;" class="col-form-label" for="name-input-field">Company</label>
                                        <br>
                                        <input type="text" placeholder="Enter Company Name" name="company" id="company" required="required">
                                    </div>
        
                                    <div class="row form-group" style="margin-top: 10px;">
                                        <label style="color:black;" class="col-form-label" for="name-input-field">Description</label>
                                        <br>
                                        <input type="text" placeholder="Enter Pitch Description" name="description" id="description"
                                            required="required">
                                    </div>
        
                                    <div class="row form-group" style="margin-top: 10px;">
                                        <label style="color:black;" class="col-form-label" for="name-input-field">Amount per Stock</label>
                                        <br>
                                        <input type="number" placeholder="Enter Amount Per Stock" name="amountPerStock" id="amountPerStock">
                                    </div>
        
                                    <div class="row form-group" style="margin-top: 10px;">
                                        <label style="color:black;" class="col-form-label" for="name-input-field">Number of Stocks</label>
                                        <br>
                                        <input type="number" placeholder="Enter Number of Stocks" name="numberOfStocks" id="numberOfStocks">
                                    </div>
        
                                    <div class="row form-group" style="margin-top: 20px;">
                                        <button type="submit" class="btn btn-lg btn-primary btn-block"
                                            style="color: white;">Create Pitch</button>
                                    </div> 
                            
                                    <div class="row form-group" style="margin-top: 10px;">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </section>
                </body>

                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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

            </html>
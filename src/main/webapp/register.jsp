<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>FlexStart Bootstrap Template - Index</title>
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
    </head>


    <body>
        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
            <a href="/" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
            <span>Shark Aquarium</span>
            </a>
            <nav id="navbar" class="navbar">
            <ul>
                <li><a class="getstarted scrollto" href="login">Login</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
        </header>
        <!-- End Header -->

        <!-- Form  -->
        <section class="container">
            <div class="form-container" style="align-items: left; width: 800px;" >
                <form:form method="POST" modelAttribute="userForm" class="form-signin" style=" background-color: rgba(255,255,255,0.64); margin-left: 500px;">
                    <h2 class="text-center" style="color:black;"><strong>Create Your Account</strong></h2>
                    <div class="row form-group">
                        <label style="color:black;" class="col-form-label" for="name-input-field">Username</label>
                    </div>
                    <div class="row form-group">
                        <spring:bind path="username">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="text" path="username" class="form-control" placeholder="Username" autofocus="true"></form:input>
                            <form:errors path="username"></form:errors>
                            </div>
                        </spring:bind>
                    </div>

                    <div class="row form-group" style="margin-top: 20px;">
                        <label style="color:black;" class="col-form-label" for="password-input-field">Password </label>
                    </div>
                    <div class="row form-group">
                        <spring:bind path="password">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                            <form:errors path="password"></form:errors>
                            </div>
                        </spring:bind>
                    </div>

                    <div class="row form-group" style="margin-top: 20px;">
                        <label style="color:black;" class="col-form-label" for="repeat-password-input-field">Confirm Password </label>
                    </div>
                    <div class="row form-group">
                        <spring:bind path="passwordConfirm">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="password" path="passwordConfirm" class="form-control" placeholder="Confirm your password"></form:input>
                            <form:errors path="passwordConfirm"></form:errors>
                            </div>
                        </spring:bind>
                    </div>

                    <div class="row form-group" style="margin-top: 20px;">
                        <label style="color:black;" class="col-form-label" for="name-input-field">Role </label>
                    </div>
                    <div class="row form-group">
                        <spring:bind path="role">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                            <form:input type="role" path="role" class="form-control" placeholder="Role"></form:input>
                            <form:errors path="role"></form:errors>
                            </div>
                        </spring:bind>
                    </div>
                    <div class="row form-group" style="margin-top: 20px;">
                        <button class="btn btn-lg btn-primary btn-block" id="submitButton" type="submit">Submit</button>
                    </div>
                    <div class="row form-group" style="margin-top: 10px;">
                        <a class="already" style="color:blue;" type="button" onclick="window.location='login'">Already have an account? Login Here</a>
                    </div>
                </form:form>
            </div>
        </section>



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
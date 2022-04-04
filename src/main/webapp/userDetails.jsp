<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Create Profile</title>
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

    <section class="container">
        <div class="form-container" style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 1200px; width: 800px;" >
          <form action="/customer_profile" model="customerDetails" method = "post" style="background-color: rgba(255,255,255,0.64);">
            <div class="row form-group" style="margin-top: 10px;">
            </div>
          <div class="container" style="margin-top: 0px;">
            <div class="row form-group" style="margin-top: 10px;">
              <h2>Profile</h2>
            </div>
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">First Name</label>
            <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required="required">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Middle Name</label>
            <input type="text" placeholder="Enter Middle Name" name="middleName" id="middleName">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Last Name</label>
            <input type="text" placeholder="Enter Last Name" name="LastName" id="lastName" required="required">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">House No.</label>
            <input type="text" placeholder="Enter House No" name="houseNo" id="houseNo" required="required">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Street</label>
            <input type="text" placeholder="Enter Street Name" name="streetName" id="streetName" required="required">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">City</label>
            <input type="text" placeholder="Enter City" name="city" id="city" required="required">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Pin</label>
            <input type="text" placeholder="Enter Pincode" name="pincode" id="pincode" required="required">
          </div>

          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Phone No.</label>
            <input type="text" placeholder="Enter PhoneNo" name="phoneNo" id="phoneNo" required="required" pattern="[0-9]{10}">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Gender</label>
            <input type="text" placeholder="Enter Gender" name="gender" id="gender">
          </div>
          <div class="row form-group" style="margin-top: 10px;">
            <label style="color:black;" class="col-form-label" for="name-input-field">Email</label>
            <input type="email" placeholder="Enter email ID" name="emailID" id="emailID" required="required">
          </div>
          <div class="row form-group" style="margin-top: 20px;">
              <button type="submit" class="btn btn-lg btn-primary btn-block" style="color: white;">Create profile</button>
          </div>
          <div class="row form-group" style="margin-top: 10px;">
          </div>
      </form>

    </section>
  </body>


</body>
</html>
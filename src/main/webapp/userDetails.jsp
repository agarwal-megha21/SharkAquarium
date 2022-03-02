<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Customer Profile</title>
    <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
    <link rel="stylesheet" href="assethome/fonts/font-awesome.min.css">
</head>
<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="54" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);">
  <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav" style="background: var(--bs-success);">
    <div class="container"><a class="navbar-brand" href="welcome">Mansha Pharma</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto text-uppercase">
                <li class="nav-item"></li>
                <li class="nav-item"></li>
                <!-- <li class="nav-item"><a class="nav-link" href="login">SIGNIN</a></li> -->
                <!-- <li class="nav-item"><a class="nav-link" href="register">SIGNUP</a></li> -->
                <li class="nav-item"></li>
            </ul>
        </div>
    </div>
</nav>
  <section style="background: url(&quot;assethome/img/b1.jpg&quot;);background-size: cover;">
    <div class="form-container" style="margin-left: 100px; margin-right: 100px;">
<form action="/customer_profile" model="customerDetails" method = "post" style="background-color: rgba(255,255,255,0.64);">
  <div class="row form-group" style="margin-top: 10px;">
</div>
  <div class="container" style="margin-top: 0px;">
    <div class="row form-group" style="margin-top: 10px;">
      <h2>Customer Profile</h2>
    </div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="firstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="firstName" id="firstName" required="required">
</div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="middleName"><b>Middle Name</b></label>
    <input type="text" placeholder="Enter Middle Name" name="middleName" id="middleName">
</div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="LastName" id="lastName" required="required">
</div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="houseNo"><b>House No</b></label>
    <input type="text" placeholder="Enter House No" name="houseNo" id="houseNo" required="required">
</div>
<div class="row form-group" style="margin-top: 10px;">
  <label for="streetName"><b>Street Name</b></label>
  <input type="text" placeholder="Enter Street Name" name="streetName" id="streetName" required="required">
</div>
<div class="row form-group" style="margin-top: 10px;">
  <label for="city"><b>City</b></label>
  <input type="text" placeholder="Enter City" name="city" id="city" required="required">
</div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="pincode"><b>Pincode</b></label>
    <input type="text" placeholder="Enter Pincode" name="pincode" id="pincode" required="required">
</div>

<div class="row form-group" style="margin-top: 10px;">
    <label for="phoneNo"><b>Phone No</b></label>
    <input type="text" placeholder="Enter PhoneNo" name="phoneNo" id="phoneNo" required="required" pattern="[0-9]{10}">
</div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="gender"><b>Gender</b></label>
    <input type="text" placeholder="Enter Gender" name="gender" id="gender">
  </div>
<div class="row form-group" style="margin-top: 10px;">
    <label for="emailID"><b>Email ID</b></label>
    <input type="email" placeholder="Enter email ID" name="emailID" id="emailID" required="required">
</div>
<div class="row form-group" style="margin-top: 20px;">
    <button type="submit" class="btn btn-lg btn-primary btn-block" style="color: black;">Create profile</button>
</div>
<div class="row form-group" style="margin-top: 10px;">
</div>
  </div>
</form>
</div>
</section>
</body>
</html>
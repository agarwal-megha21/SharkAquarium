<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Profile Page</title>
    <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
    <link rel="stylesheet" href="assethome/css/style1.css">
    <li class=lhiav-item><a class="nav-link" href="logout">Log Out</a></li>
  </head>
  <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
    <div class="form-container" style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;" >
        <h3>Welcome </h3>

        <h4>Name: ${customer.firstName} ${customer.lastName}</h4>
        <h4>Email Id: ${customer.emailID}</h4>
        <h4>Gender: ${customer.gender}</h4>
        <h4>Address: ${customer.houseNo} ${customer.streetName} ${customer.city} ${customer.pincode}</h4>
        <h4>Phone: ${customer.phoneNo}</h4>
        <br>
    </div>
  </section>

</html> 

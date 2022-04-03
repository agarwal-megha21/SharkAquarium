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

        <!-- Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" src="assets/css/userDetails.css">

        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </head>

    <body>

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

        <section>
            <div style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
            <br>
            <div style="margin-top: 30px;">
                <caption><h2 class=navbar-brand aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">My Pitches</h2></caption>
            </div>
            <div class="row" style="margin-left: 50px; margin-right: 50px;">
                <div class="col-md-12"><table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr style="text-align: center;">

                        <th>Company</th>
                        <th>Description</th>
                        <th>Amount Per Stock</th>
                        <th>Number of Stocks</th>
                        <th>Number of Available Stocks</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pitch" items="${list}">
                        <tr style="text-align: center;">
                            <td><c:out value="${pitch.id}" /></td>
                            <td><c:out value="${pitch.company}" /></td>
                            <td><c:out value="${pitch.description}" /></td>
                            <td>$ <c:out value="${pitch.amountPerStock}" /></td>
                            <td><c:out value="${pitch.numberOfStocks}" /></td>
                            <td><c:out value="${pitch.availableStocks}" /></td>
                            <td>
                                <!-- <button type="button" class="btn btn-success"  onclick="location.href = '/listmedicine/${med.id}'"><i class="fas fa-pencil-alt d-xl-flex justify-content-xl-center align-items-xl-center"></i></button> -->
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

    <body>

</html>



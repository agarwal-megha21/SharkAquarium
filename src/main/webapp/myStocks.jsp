<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>My Holdings Page</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
                <link rel="stylesheet" href="assethome/css/style1.css">
                <li class=lhiav-item><a class="nav-link" href="logout">Log Out</a></li>
                <li class=lhiav-item><a class="nav-link" href="wallet">My Wallet</a></li>
                <li class=lhiav-item><a class="nav-link" href="myStocks">My Holdings</a></li>
                <li class=lhiav-item><a class="nav-link" href="investorProfile">My Profile</a></li>


            </head>

            <section>
                <div id="sec1" align="center"
                    style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
                    <br>
                    <div style="margin-top: 30px;">
                        <caption>
                            <h2 class=navbar-brand aria-controls="navbarResponsive" aria-expanded="false"
                                aria-label="Toggle navigation">Available Pitches</h2>
                        </caption>
                    </div> 

                    <div class="row" style="margin-left: 50px; margin-right: 50px;">
                        <div class="col-md-12">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr style="text-align: center;">
                                        <th>Company</th>
                                        <th>Total Stocks</th>
                                        <th>Available Stocks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="equityHolding" items="${list}">
                                        <tr style="text-align: center;">

                                            <td>
                                                <c:out value="${equityHolding.company}" />
                                            </td>                                      
                                            <td>
                                                <c:out value="${equityHolding.totalQuantity}" />
                                            </td>
                                            <td>
                                                <c:out value="${equityHolding.availableQuantity}" />
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

            </html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>Create Buy Order</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
                <link rel="stylesheet" href="assethome/fonts/font-awesome.min.css">
            </head>

            <li class=lhiav-item><a class="nav-link" href="logout">Log Out</a></li>
            <li class=lhiav-item><a class="nav-link" href="wallet">My Wallet</a></li>
            <section>
                <div id="sec1" align="center"
                    style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
                    <br>
                    <div style="margin-top: 30px;">
                        <caption>
                            <h2 class=navbar-brand aria-controls="navbarResponsive" aria-expanded="false"
                                aria-label="Toggle navigation">Available Sell Orders</h2>
                        </caption>
                    </div>
            
                    <div class="row" style="margin-left: 50px; margin-right: 50px;">
                        <div class="col-md-12">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr style="text-align: center;">
            
                                        <th>Company</th>
                                        <th>Price per stock</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="order" items="${list}">
                                        <tr style="text-align: center;">
            
                                            <td>
                                                <c:out value="${order.company}" />
                                            </td>
                                            <td>$
                                                <c:out value="${order.price}" />
                                            </td>
                                            <td>
                                                <c:out value="${order.quantity}" />
                                            </td>
                                            <td>
                                                <form method="get" action="/orders/sell/${order.id}">
                                                    <input type="submit" value="Complete Order"></input>
            
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

            <section>
                <div id="sec1" align="center"
                    style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
                    <br>
                    <div style="margin-top: 30px;">
                        <caption>
                            <h2 class=navbar-brand aria-controls="navbarResponsive" aria-expanded="false"
                                aria-label="Toggle navigation">My Buy Orders</h2>
                        </caption>
                    </div>
            
                    <div class="row" style="margin-left: 50px; margin-right: 50px;">
                        <div class="col-md-12">
                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                <thead>
                                    <tr style="text-align: center;">
            
                                        <th>Company</th>
                                        <th>Price per stock</th>
                                        <th>Quantity</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="order" items="${mylist}">
                                        <tr style="text-align: center;">
            
                                            <td>
                                                <c:out value="${order.company}" />
                                            </td>
                                            <td>$
                                                <c:out value="${order.price}" />
                                            </td>
                                            <td>
                                                <c:out value="${order.quantity}" />
                                            </td>
                                            <td>
                                                <form method="get" action="/orders/delete/buy/${order.id}">
                                                    <input type="submit" value="Delete Order"></input>
            
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

            <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
                <div class="form-container"
                    style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                    <form action="/createBuyOrder" model="order" method="post"
                        style="background-color: rgba(255,255,255,0.64);">
                        <div class="row form-group" style="margin-top: 10px;">
                        </div>

                        <div class="container" style="margin-top: 0px;">
                            <div class="row form-group" style="margin-top: 10px;">
                                <h2>Add Order</h2>
                            </div>
                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="company"><b>Company Name</b></label>
                                <br>
                                <input type="text" placeholder="Enter Company Name" name="company" id="company"
                                    required="required">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="amountPerStock"><b>Amount Per Stock</b></label>
                                <br>
                                <input type="number" placeholder="Enter Amount Per Stock" name="price"
                                    id="price">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="numberOfStocks"><b>Number Of Stocks</b></label>
                                <br>
                                <input type="number" placeholder="Enter Number Of Stocks" name="quantity"
                                    id="quantity">
                            </div>

                            <div class="row form-group" style="margin-top: 20px;">
                                <button type="submit" class="btn btn-lg btn-primary btn-block"
                                    style="color: black;">Create Order</button>
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                            </div>
                        </div>
                    </form>
                </div>
            </section>
            </body>

            </html>
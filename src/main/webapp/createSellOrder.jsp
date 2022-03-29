<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>Create Sell Order</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
                <link rel="stylesheet" href="assethome/fonts/font-awesome.min.css">
            </head>

            <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
                <div class="form-container"
                    style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                    <form action="/createSellOrder" model="order" method="post"
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
                                <label for="price"><b>Amount Per Stock</b></label>
                                <br>
                                <input type="number" placeholder="Enter Amount Per Stock" name="price"
                                    id="price">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="quantity"><b>Number Of Stocks</b></label>
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
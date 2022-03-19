<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>Add Pitch</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
                <link rel="stylesheet" href="assethome/fonts/font-awesome.min.css">
            </head>
            
            <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
                <div class="form-container"
                    style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                    <form action="/create_pitch" model="pitch" method="post"
                        style="background-color: rgba(255,255,255,0.64);">
                        <div class="row form-group" style="margin-top: 10px;">
                        </div>

                        <div class="container" style="margin-top: 0px;">
                            <div class="row form-group" style="margin-top: 10px;">
                                <h2>Add pitch</h2>
                            </div>
                            
                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="company"><b>Company Name</b></label>
                                <br>
                                <input type="text" placeholder="Enter Company Name" name="company" id="company" required="required">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="description"><b>Description</b></label>
                                <br>
                                <input type="text" placeholder="Enter Pitch Description" name="description" id="description"
                                    required="required">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="amountPerStock"><b>Amount Per Stock</b></label>
                                <br>
                                <input type="number" placeholder="Enter Amount Per Stock" name="amountPerStock" id="amountPerStock">
                            </div>

                            <div class="row form-group" style="margin-top: 10px;">
                                <label for="numberOfStocks"><b>Number Of Stocks</b></label>
                                <br>
                                <input type="number" placeholder="Enter Number Of Stocks" name="numberOfStocks" id="numberOfStocks">
                            </div>
 
                            <div class="row form-group" style="margin-top: 20px;">
                                <button type="submit" class="btn btn-lg btn-primary btn-block"
                                    style="color: black;">Create Pitch</button>
                            </div> 
                    
                            <div class="row form-group" style="margin-top: 10px;">
                            </div>
                        </div>
                    </form>
                </div>
            </section>
            </body>

            </html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en"> 
            
            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>Investor's Profile Page</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
                <link rel="stylesheet" href="assethome/css/style1.css"> 
                <li class=lhiav-item><a class="nav-link" href="logout">Log Out</a></li>
                <li class=lhiav-item><a class="nav-link" href="wallet">My Wallet</a></li>
                <li class=lhiav-item><a class="nav-link" href="#sec1">View Pitches</a></li>
                <li class=lhiav-item><a class="nav-link" href="createBuyOrder">Create Buy Order</a></li>
                <li class=lhiav-item><a class="nav-link" href="createSellOrder">Create Sell Order</a></li>
                
            </head> 
            <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
                <div class="form-container"
                    style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                    <h3>Welcome </h3>

                    <h4>Name: ${customer.firstName} ${customer.lastName}</h4>
                    <h4>Email Id: ${customer.emailID}</h4>
                    <h4>Gender: ${customer.gender}</h4>
                    <h4>Address: ${customer.houseNo} ${customer.streetName} ${customer.city} ${customer.pincode}</h4>
                    <h4>Phone: ${customer.phoneNo}</h4>
                    <br>
                </div>
            </section>

            <section >
                <div id = "sec1" align="center" style="background-color: rgba(255,255,255,0.64); margin-left: 100px; margin-right: 100px;">
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
                                        <th>Description</th>
                                        <th>Amount Per Stock</th>
                                        <th>Number Of Stocks Available</th> 
                                        <th>Enter number of Stocks</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="pitch" items="${list}">
                                        <tr style="text-align: center;">
                                            
                                            <td>
                                                <c:out value="${pitch.company}" />
                                            </td>
                                            <td>
                                                <c:out value="${pitch.description}" />
                                            </td>
                                            <td>$ 
                                                <c:out value="${pitch.amountPerStock}" />
                                            </td>
                                            <td>
                                                <c:out value="${pitch.availableStocks}" />
                                            </td> 
                                            <td> 
                                            <form  method="get" action="/pitches/invest/${pitch.id}">
                                                <input type="text" id="numberOfStocks" name="numberOfStocks" >
                                                <input type="submit" value="Invest" ></input>
                                                
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

        </html>
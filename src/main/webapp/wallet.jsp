<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <c:set var="contextPath" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
                <title>Your Wallet</title>
                <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
                <link rel="stylesheet" href="assethome/css/style1.css">
                <li class=lhiav-item><a class="nav-link" href="logout">Log Out</a></li>
                <li class=lhiav-item><a class="nav-link" href="#sec1">View Pitches</a></li>
            </head>
            
                <div class="form-container"
                    style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;">
                    <h4>Welcome </h4>

                    <h4>${customer.firstName} ${customer.lastName}</h4>

                    <h4>Total Balance: ${wallet.totalAmount}</h4>
                     <h4>Available Balance: ${wallet.availableAmount}</h4>
                    <br>
              
            <form method="get" action="/wallet/addMoney">
                <input type="text" id="amount" name="amount">
                <input type="submit" value="Add Money"></input>
            
            </form>
        </div>
    </html>
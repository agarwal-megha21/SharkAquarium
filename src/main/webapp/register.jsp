<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Register Page</title>
        <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
        <link rel="stylesheet" href="assethome/css/style1.css">
    </head>

    <!-- <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="54" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);"> -->
        <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="54" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);">
            <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav" style="background: var(--bs-success);">
                <div class="container"><a class="navbar-brand" href="welcome">Mansha Pharma</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                    <div class="collapse navbar-collapse" id="navbarResponsive">
                        <ul class="navbar-nav ms-auto text-uppercase">
                            <li class="nav-item"></li>
                            <li class="nav-item"></li>
                            <li class="nav-item"><a class="nav-link" href="checkRegister">HOME</a></li>
                            <!-- <li class="nav-item"><a class="nav-link" href="register">SIGNUP</a></li> -->
                            <li class="nav-item"></li>
                        </ul>
                    </div>
                </div>
            </nav>
        
        <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
            <div class="form-container" style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;" >
                    <form:form method="POST" modelAttribute="userForm" class="form-signin" style="margin-top: 100px;margin-right: 0px; background-color: rgba(255,255,255,0.64); margin-left: 500px;">
                            <h2 class="text-center" style="color:black;"><strong>Create Your Account</strong></h2>
                            <div class="row form-group">
                                <label style="color:black;" class="col-form-label" for="name-input-field">Username</label>
                            </div>
                            <div class="row form-group">            
                                <spring:bind path="username">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <form:input type="text" path="username" class="form-control" placeholder="Username" autofocus="true"></form:input>
                                    <form:errors path="username"></form:errors>
                                    </div>
                                </spring:bind>
                            </div>

                            <div class="row form-group" style="margin-top: 20px;">
                                <label style="color:black;" class="col-form-label" for="password-input-field">Password </label>
                            </div>
                            <div class="row form-group">
                                <spring:bind path="password">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                                    <form:errors path="password"></form:errors>
                                    </div>
                                </spring:bind>
                            </div>

                            <div class="row form-group" style="margin-top: 20px;">
                                <label style="color:black;" class="col-form-label" for="repeat-password-input-field">Confirm Password </label>
                            </div>
                            <div class="row form-group">
                                <spring:bind path="passwordConfirm">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <form:input type="password" path="passwordConfirm" class="form-control" placeholder="Confirm your password"></form:input>
                                    <form:errors path="passwordConfirm"></form:errors>
                                    </div>
                                </spring:bind>
                            </div>

                            <div class="row form-group" style="margin-top: 20px;">
                                <label style="color:black;" class="col-form-label" for="name-input-field">Role </label>
                            </div>
                            <div class="row form-group">
                                <spring:bind path="role">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                    <form:input type="role" path="role" class="form-control" placeholder="Role"></form:input>
                                    <form:errors path="role"></form:errors>
                                    </div>
                                </spring:bind>
                            </div>
                            <div class="row form-group">
                                <button class="btn btn-lg btn-primary btn-block" id="submitButton" type="submit">Submit</button>
                            </div>
                            <div class="row form-group" style="margin-top: 10px;">
                                <a class="already" style="color:black;" type="button" onclick="window.location='login'">Already have an account? Login Here</a>
                            </div>
                        </form:form>
                </div>
            </div>
        </section>  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
</html>
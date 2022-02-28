<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login Page</title>
    <link rel="stylesheet" href="assethome/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assethome/css/Ludens-Users---2-Register.css">
    <link rel="stylesheet" href="assethome/css/style1.css">
  </head>

  <body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="54" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);">
    <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav" style="background: var(--bs-success);">
      <div class="container"><a class="navbar-brand" href="welcome">Mansha Pharma</a><button data-bs-toggle="collapse" data-bs-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ms-auto text-uppercase">
                  <li class="nav-item"></li>
                  <li class="nav-item"></li>
                  <li class="nav-item"><a class="nav-link" href="welcome">home</a></li>
                  <!-- <li class="nav-item"><a class="nav-link" href="register">SIGNUP</a></li> -->
                  <li class="nav-item"></li>
              </ul>
          </div>
      </div>
  </nav>
    <section class="register-photo" style="background: url(&quot;assethome/img/med.jpg&quot;);background-size: cover;height: 900px;">
      <div class="form-container" style="margin-top: 200px; margin-left: 150px; width: 700px;">
          <!-- <div class="image-holder" style="background: url(&quot;assethome/img/medical-website-template1.png&quot;) center / cover no-repeat;"> -->
          <!-- </div> -->
          <form method="POST" action="${contextPath}/login" class="form-signin" style="background-color:cornflowerblue">
            <h2 class="text-center" style="color:black;"><strong>Log In</strong></h2>
            <div class="row form-group">
              <label style="color:black;" class="col-form-label" for="name-input-field">Username</label>
          </div>
            <div class="row form-group" >
              <div class="form-group ${error != null ? 'has-error' : ''}">
              <span>${message}</span>
              <input name="username" type="username" class="form-control" placeholder="Username" autofocus="true"/>
            </div>
            <div class="row form-group" style="margin-top: 20px;">
              <label style="color:black;" class="col-form-label" for="password-input-field">Password </label>
          </div>
            <div class="row form-group">
              <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </div>
            <div class="row form-group" >
              <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
            </div>
            <div class="row form-group" style="margin-top: 20px;">
              <a class="already" style="color:black;" type="button" onclick="window.location='register'">Don't have an account? Register Here</a>
            </div>
          </form>
      </div>
    </section>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  </body>
</html>
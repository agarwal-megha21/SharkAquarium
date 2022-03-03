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

  <section class="register-photo" style="background-size: center;height: 900px; margin-top: 50px;">
    <div class="form-container" style="margin-top: 100px; align-items: center; margin-left: 150px; margin-right: 800px; width: 800px;" >
          <form method="POST" action="${contextPath}/login" class="form-signin" style="margin-top: 100px;margin-right: 0px; background-color: rgba(255,255,255,0.64); margin-left: 500px;">
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
            <div class="row form-group" style="margin-top: 20px;">
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
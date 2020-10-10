<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

    <!-- This is the initial page for giving login credentials -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
  background-image: url('/mini_project_1/resources/img/advertise.png');
  background-repeat: no-repeat;
  background-size:100% 130%
  
}
</style>
<title>Login Page for Television Advertisement</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"></c:url>">

</head>

<body>

<!-- A form is generated below to accept username and password from user/admin -->

<form  action="loginform.jsp" method="post">
<h3 style="color:red;">
<div class="jumbotron jumbotron-fluid">
  <div class="container">
<marquee>WELCOME TO LOGIN PAGE OF TELEVISION ADVERTISEMENT MANAGEMENT</marquee></h3><br>
</div>
</div>

<br><br>


<b>Username:</b><input type="text" name="username" placeholder="Enter username"><br><br>

<b>Password:</b><input type="password" name="password" placeholder="Enter password"><br><br>
<b>  Are you an user/admin:</b>
<input type="text" name="role" list="role_list" placeholder="Enter role">
<datalist id="role_list">
<option>user</option>
<option>admin</option>

</datalist>
<br/><br>
<!--   <button type="submit" class="btn btn-primary">Login</button> -->
<label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label><br>
<button class="button button2">Login here</button>

 </form>


<!--  <img src="/mini_project_1/resources/img/paris.png" alt="not found" height="200" width="400"> -->
</body>
</html>

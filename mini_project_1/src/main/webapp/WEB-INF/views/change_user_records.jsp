<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <!-- This page will insert the user details by changing the 
    role of user to admin  and the final output 
is shown in screen -->  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change user records here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style_add.css"></c:url>">
<style>
body {
  background-image: url('/mini_project_1/resources/img/advertise6.png');
  background-repeat: no-repeat;
  background-size:100% 300%;
  
}
</style> 
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
  <div class="container">
Records are succesfully updated </h3>
</div>
</head>
<body>
<h3 style="color: red;">You have successfully updated ${change_user_here} record(s) from user to admin in database</h3>
<h4><a href="Update_UserRole.jsp">Go back to Previous Update_UserRole Page</a></h4>
</body>
</html>
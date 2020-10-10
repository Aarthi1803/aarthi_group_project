<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
    <!-- This page will search the advertise details and the final output 
is shown in screen -->  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your records are searched</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style_add.css"></c:url>">
<style>
body {
  background-image: url('/mini_project_1/resources/img/advertise6.png');
  background-repeat: no-repeat;
  background-size:100% 300%;
  
}
</style> 
</head>
<body>
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
  <div class="container">
Records are succesfully searched and is displayed below </h3>
</div>
</div>
<h3 style="color:red;">
The record you are searching is here: ${search_here}</h3>
</body>
</html>
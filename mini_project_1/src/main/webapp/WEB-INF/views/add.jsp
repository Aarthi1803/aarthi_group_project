<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!-- This page will insert the advertise details and the final output 
is shown in screen -->  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserted records here</title>
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
Records are succesfully inserted </h3>
</div>
</div>
<h3 style="color:red;">You have successfully  added ${rec_affected} record(s) in database</h3>
<h4><a href="Insert.jsp">Go back to Previous Insert Page</a></h4>
</body>
</html>
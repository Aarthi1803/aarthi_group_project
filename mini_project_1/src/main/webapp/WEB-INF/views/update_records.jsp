<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 
 <!-- This page will update the advertise details and the final output 
is shown in screen -->  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Records here</title>
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
Records are succesfully updated </h3>
</div>
</div>
<h3 style="color:red;">Number of records affected while updating: ${update_here}</h3><br/>
<h4 ><a href="Update.jsp">Go back to Previous Update Page</a></h4>
</body>
</html>
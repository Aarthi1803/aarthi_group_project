<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
    
    <!-- This page will delete the advertise details and the final output 
is shown in screen -->  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete records here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style_add.css"></c:url>">

</head>
<body>
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
  <div class="container">
You have succesfully Deleted Records</h3>
</div>
</div>
<h3 style="color:red;">You have successfully deleted  ${delete_here} record(s) in database</h3>
<h4><a href="Delete.jsp">Go back to Previous Delete Page</a></h4>
</body>
</html>
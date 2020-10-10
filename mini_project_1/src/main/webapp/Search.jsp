<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

    
<!-- Search Page that will search data through forms in advertise table -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>You can search records here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/style_add.css"></c:url>">
<style>
body {
  background-image: url('/mini_project_1/resources/img/advertise5.png');
  background-repeat: no-repeat;
  background-size:100% 200%
  
}
</style> 
</head>
<body>

<!-- A form is created for searching records in existing advertise table and search operation 
is done by both user and admin -->

<form action="search">
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
<div class="container">
To search records give details below<br/></h3>
</div>
</div>
<h4 style="color:red;">Enter Product_id
<input type="number" name="id"/><br/><br/></h4>
<!--  <button type="button" class="btn btn-warning">Submit</button> -->
<!--  <input type="submit" value="Search"/>  -->
<button type="submit" class="btn btn-success">Submit</button>

<button type="reset" class="btn btn-secondary"/>Clear</button><br/><br/>


</form>
</body>
</html>
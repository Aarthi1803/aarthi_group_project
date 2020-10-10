<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  
 <!-- Update Page that will update data through forms in advertise table -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Records Form here</title>
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

<!-- To update the records in advertise table a form is created and details are 
being entered -->

<form action="update">
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
<div class="container">
To update records give details below<br/></h3>
</div>
</div>

<h4 style="color:red;">
Id is:<input type="text" name="id"><br/><br/>
	Your Product name:<input type="text" name="product"><br/><br/>
	Your Brand name:<input type="text" name="brand_name"><br/><br/>
	Your Company name:<input type="text" name="company"><br/><br/></h4>
	  <!--  <input type="submit" value="Update"> -->
<button type="submit" class="btn btn-success">Submit</button> 
	
<button type="reset" class="btn btn-warning"/>Clear</button><br/><br/>
	
<h3><a href="Welcome_Admin.jsp">Go back to Previous Page</a></h3>
</form>
</body>
</html>
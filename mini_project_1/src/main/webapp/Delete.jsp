<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
      
 <!-- Delete Page that will delete data through forms in advertise table -->   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete records forms  here</title>
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

<!-- A form is created for giving id detail and is dispatched to next page -->

<form action="delete">
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
<div class="container">
To delete records give details below<br/></h3>
</div>
</div>
<h4 style="color:red;">
Enter id :<input type="text" name="id"><br/><br/></h4>
<!--  <input type="submit"> -->
<button type="submit" class="btn btn-success">Submit</button>
<!--  <button type="button" class="btn btn-warning">Submit</button> -->

<button type="reset" class="btn btn-warning"/>Clear</button><br/><br/>
<h4><a href="Welcome_Admin.jsp">Go back to Previous Page</a></h4>
	
</form>
</body>
</html>
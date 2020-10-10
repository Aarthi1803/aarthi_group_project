<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
      
<!-- Update_UserPage that will update data through forms from user to admin in user table -->   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User Records Form</title>
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

<!-- A form is created to update the role of user to admin and this operation
is done by admin only  -->

<form action="change_user">
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
<div class="container">
To update  records from user to admin give details below</h3>
</div>
</div>

<h4 style="color:red">Enter the Role:<input type="text" name="role"></h3><br/>
<h4 style="color:red">Enter Id:<input type="text" name="id"></h3><br/>
<button type="submit" class="btn btn-success">Submit</button>
<!--  <input type="submit" value="update"> -->
<!--  <input type="submit" value="Update"/> -->

<button type="reset" class="btn btn-dark"/>Clear</button><br/><br/>
<h4><a href="Welcome_Admin.jsp">Go back to Admin page</a></h4>

</form>
</body>
</html>
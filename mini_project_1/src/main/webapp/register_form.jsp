<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  
<!-- This jsp page will create and insert new user details to user table -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert new user form here</title>
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

<!-- A form will be generated to insert user details in user table and all 
these details are inserted by admin only -->

<form action="insert_user" method="post">
<h3 style="color:green;">
<div class="jumbotron jumbotron-fluid">
<div class="container">
To insert new records give details below<br/></h3>
</div>
</div>
<table cellpadding="8">
<tr><td><h4 style="color:red">User Id </td><td><input type="number" name="id"></h4></td></tr>
<tr><td><h4 style="color:red">User name</td><td><input type="text" name="username"></h4></td></tr>
<tr><td><h4 style="color:red">Password</td><td><input type="password" name="password"></h4></td></tr>
<tr><td><h4 style="color:red">Role</td><td><input type="text" name="role"></h4></td></tr>
</table>
<!--  <input type="submit" value="Submit">  -->
<button type="submit" class="btn btn-success">Submit</button>
	
<button type="reset" class="btn btn-secondary"/>Clear</button>
	<br/><br/>
<h4><a href="Welcome_Admin.jsp">Go back to Previous Page</a></h4>
	
</form>
</body>
</html>
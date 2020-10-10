<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
    <!-- A welcome admin page where all crud operations can be done by admin -->
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
Hello Admin Welcome to Home page</title>
  <style>
body {
  background-image: url('/mini_project_1/resources/img/advertise3.png');
  background-repeat: no-repeat;
  backround-size:100% 100%
}
</style> 
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"></c:url>">

</head>
<body>


<marquee>
<h1 style="color:red;">
<%
  String username = request.getParameter("username");
  out.println("Hello Admin" +" "+ username);
 %>
 
 </h1> 
</marquee>

<!-- The links below are being redirected to different pages to 
perform crud operations for an admin-->

<h3 style="color:orange">What do you want to do?</h3>
<button class="button button1">
<a href="Insert.jsp">You can Add records here</a></button><br>
<button class="button button2">
<a href="Update.jsp">You can Update records here</a></button><br>
<button class="button button3">
<a href="Update_UserRole.jsp">You can Update User Role here</a></button><br>
<button class="button button4">
<a href="Delete.jsp">You can Delete records here</a></button><br/>
<button class="button button1">
<a href="Search.jsp">You can Search records here</a></button><br>
<button class="button button2">
<a href="view_all">You can See All records here</a></button><br>
<button class="button button3">
<a href="register_form.jsp">For creating new user Login Here</a></button><br>
<button class="button button4">
<h3><a href="index.jsp">Go back to Home Page</a></h3></button>
</body>
</html>
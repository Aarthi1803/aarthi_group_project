<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
        
 <!-- A welcome user page where viewing all data and search operations can be done by admin -->
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello User Welcome to Home page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css"></c:url>">
  <style>
body {
  background-image: url('/mini_project_1/resources/img/advertise7.png');
  background-repeat: no-repeat;
  background-size:100% 180%;
}
</style> 
</style> 
</head>
<body>
<marquee>
<h1 style="color:maroon;">
<%
  String username = request.getParameter("username");
  out.println("Hello User" +" "+username);
 %>
</h1>
</marquee> 

<!-- The links are being redirect to different pages as an user  -->
<h3 style="color:red">What do you want to do?</h3><br/>
<button class="button button3">
<a href="view_all">You can View records here</a></button>
<button class="button button4">
<a href="Search.jsp">You can Search records here</a></button>
<h3><a href="index.jsp">Go back to Home Page</a></h3>
</body>
</html>
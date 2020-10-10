<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" import="java.util.*,mini_project_1.*"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
    <!-- This page will show all the advertise details and the final output 
is shown in screen -->  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Advertise Details</title>
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
All records are displayed below </h3>
</div>
</div>

<!--${list}--> 
<h4 style="color: red;">
<%
List<Advertise>list=(List<Advertise>)request.getAttribute("list");
for(Advertise ad:list){
	out.println("id="+ad.getId()+";"+" "+"product="+ad.getProduct()+";"+" "+"brand_name="+ad.getBrand_name()+";"+" "+"company="+ad.getCompany()+" ");
	out.println("<br/>");
	out.println("<br/>");
}
%>
</h4>
</body>
</html>
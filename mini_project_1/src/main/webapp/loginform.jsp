<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,mini_project_1.*"%>
    
    <!-- A Login Form that will accept input from index.jsp page and 
    will move further to either Welcome_Admin.jsp or Welcome_User.jsp according 
    to input given by user-->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get login details from database</title>
</head>
<body>

<%
//getting input from index.jsp and establishing connection to database.

RequestDispatcher rd;
String username=request.getParameter("username");
session.putValue("username",username);
String password=request.getParameter("password");
String role=request.getParameter("role");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mini_project","root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select role from user where role='"+role+"' ");
try{
if(rs.next()){
if(rs.getString("role").equals("admin"))
{ 
	
//It will dispatch request to Welcome_Admin.jsp

rd=request.getRequestDispatcher("Welcome_Admin.jsp");
}
else{
	//It will dispatch request to Welcome_User.jsp
	rd=request.getRequestDispatcher("Welcome_User.jsp");
}
rd.include(request,response);
}
}
catch(Exception e){
	System.out.println(e);
}
//If any one field is empty it will again go back to starting page i.e.index.jsp

if (username.isEmpty() || password.isEmpty() || role.isEmpty()) {
	   rd=request.getRequestDispatcher("index.jsp");
	   rd.include(request,response);
	  }

%>

</body>
</html>
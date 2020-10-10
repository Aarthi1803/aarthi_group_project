<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ContactForm details</title>
</head>
<body>
<form action="control/list">
<label>display records</label>

<br/> 
<input type="submit"/>
</form>

<form action="control/add">
<label>add records</label><br/><br/>
	<input type="submit"><br/><br/>
</form>

<form action="control/search">
<label>search records</label>
<br/><br/>

Enter the id you want to search: <input type="text" name="id"><br/><br/>
<input type="submit"/><br/><br/>
</form>

<form action="control/delete">
<label>delete records</label>
<br/><br/>

Enter the id you want to delete: <input type="text" name="id"><br/><br/>
<input type="submit"/>
</form> 

</body>
</html>
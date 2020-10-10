<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,model.entity.Contact" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display contents here</title>
</head>
<body>
<!--  
Map<Integer,String>map=(HashMap<Integer,String>)request.getAttribute("list");
Set<Integer> keys=map.keySet();
Iterator<Integer>it=keys.iterator();
while(it.hasNext()){
	Integer k=it.next();
	out.println(k+" "+map.get(k));
}
-->
${map}
</body>
</html>
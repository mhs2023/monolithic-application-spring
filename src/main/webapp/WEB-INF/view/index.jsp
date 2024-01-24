<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hi Everyone!!</h1>


<ol>
   <c:forEach var="name" items="${list}"> 
   <li>${name}</li>
   </c:forEach>
   </ol>  
</body>
</html>
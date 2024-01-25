<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

 <h1>Simple Bootstrap Form</h1>
 <p>Not a fancy one like hanee's</p>
<div class="container mt-3">
<form:form method="post" action="/save-student" modelAttribute="command">
  
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Name</label>
    <form:input type="text" class="form-control" id="exampleInputPassword1" path="name"/>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Roll No</label>
    <form:input type="text" class="form-control" id="exampleInputPassword1" path="rollNo"/>
  </div>
<div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <form:input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" path="emailId"/>
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form:form>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
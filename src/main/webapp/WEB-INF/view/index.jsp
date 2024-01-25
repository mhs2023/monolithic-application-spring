<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



	<div class="container">
		<h1 style="text-align: center">Student Table</h1>

		<table class="table table-dark table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Roll NO</th>
					<th>Email ID</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="name" items="${list}">

					<tr>
						<td>${name.id}</td>
						<td>${name.name}</td>
						<td>${name.rollNo}</td>
						<td>${name.emailId}</td>
						<td><a href="/student-update/${name.id}">Edit</a></td>
						<td><a href="/student-delete/${name.id}">Delete</a></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>
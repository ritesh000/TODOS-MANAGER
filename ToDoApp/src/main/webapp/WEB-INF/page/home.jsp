<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title><c:out value="${page }"></c:out></title>
</head>
<body>



	<div class="container mt-3">
		<h1 class="text-center">Welcome to My ToDo Manager</h1>

		<c:if test="${not empty msg}">
			<div class="alert alert-success">
				<b><c:out value="${msg }"></c:out></b>
			</div>
		</c:if>

		<div class="row mt-5">

			<div class="col-md-2">

				<div class="list-group">
					<button type="button"
						class="list-group-item list-group-item-action active">
						Menu</button>

					<a href="<c:url value="/add"></c:url>"
						class="list-group-item list-group-item-action">Add TODO</a> <a
						href="<c:url value="/home"></c:url>"
						class="list-group-item list-group-item-action">View TODO</a>

				</div>
			</div>
			<div class="col-md-10">
				<c:if test="${page=='Home' }">
					<h1 class="text-center">ALL TODOS</h1>

					<c:forEach items="${todos}" var="t">

						<div class="card">
							<div class="card-body">
								<h3>
									<c:out value="${t.todoTitle}"></c:out>
								</h3>
								<p>
									<c:out value="${t.todoContent}"></c:out>
								</p>

							</div>

						</div>

					</c:forEach>



				</c:if>
				<div class="col-md-10">
					<c:if test="${page=='add' }">
						<h1 class="text-center">ADD TODOS</h1>
						</br>
						<form:form action="saveTodo" method="post" modelAttribute="todo">


							<div class="form-group">
								<form:input path="todoTitle" cssClass="form-control"
									placeholder="Enter your ToDo" />
							</div>


							<div class="from-group">
								<form:textarea path="todoContent" cssClass="form-control"
									placeholder="Enter your Todo Content" cssStyle="height:200px" />


							</div>

							<div class="container text-center">
								<button class="btn btn-outline-success">Add Todo</button>


							</div>



						</form:form>





					</c:if>
				</div>



			</div>

		</div>





		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
			integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
			integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
			integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
			crossorigin="anonymous"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<style type="text/css">



</style>

<title>Edit Film</title>
</head>
<body>
	<nav class="nav nav-tabs">
		<a class="nav-item nav-link " href="home.do">Home</a> <a
			class=" nav-item nav-link " href="createFilm.do">Create Film</a>

	</nav>

	<div role="main" class="container">

		<form action="editFilm.do" method="post">
			<div class="form-group">
				<label for="id">Film Id: ${film.id } </label> <input type="hidden"
					name="id" value="${film.id}" min="1" />
			</div>
			<div class="form-group">
				<label for="title">Film title: </label> <input type="text"
					id="title" name="title" value="${film.title }" required></input>
			</div>
			<div class="form-group">
				<label for="year">Film Year: </label> <input type="number" id="year"
					name="year" value="${film.year }" min="1901" required></input>
			</div>
			<div class="form-group">
				<label for="length">Film Length: </label> <input type="number"
					id="length" name="length" value="${film.length }" required min="0"></input>
			</div>
			<div class="form-group">
				<label for="rating">Film Rating: </label> <input type="text"
					id="rating" name="rating" value="${film.rating }" required></input>
			</div>
			<div class="form-group">
				<label for="category">Category: </label> <input type="text"
					id="category" name="category" value="${film.category }" required></input>
			</div>
			<div class="form-group">
				<label for="description">Film Description: </label>
				<textarea class="form-control" id="description" name="description"
					rows="3" required>${film.description }</textarea>
			</div>


			<input type="submit" class="btn btn-primary" value="Submit" />
		</form>

		<c:if test="${error != null }">
			<h4>${error}</h4>


			<%-- <c:forEach items="${editFilm.cast}" var="cast">
						<ul class="dropdown-menu ">
							<li class="list-group-item">${cast}</li>
						</ul>
					</c:forEach> --%>

		</c:if>
		<br>
		<div class="container">
		<c:if test="${editFilm != null}">
			<ul class="list-group">
				<li class="list-group-item">Id: ${editFilm.id}</li>
				<li class="list-group-item">Title: ${editFilm.title}</li>
				<li class="list-group-item">Year: ${editFilm.year}</li>
				<li class="list-group-item">Length: ${editFilm.length}</li>
				<li class="list-group-item">Rating: ${editFilm.rating}</li>
				<li class="list-group-item">Category: ${editFilm.category}</li>
				<li class="list-group-item">Description: ${editFilm.description}</li>
			</ul>
			<div class="nav">
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					Cast: <span class="caret"></span>
				</button>

					<ul class="dropdown-menu ">
				<c:forEach items="${editFilm.cast}" var="cast">
						<li class="list-group-item">${cast}</li>
				</c:forEach>
					</ul>
			</div>
			
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					data-toggle="dropdown">
					Inventory: <span class="caret"></span>
				</button>

					<ul class="dropdown-menu ">
				<c:forEach items="${editFilm.inventory}" var="inventory">
						<li class="list-group-item">${inventory}</li>
				</c:forEach>
					</ul>
			</div>
				<div>
					<form action="editFilm.do" method="get">
						<input name="id" value="${editFilm.id}" type="hidden" /> <input
							type="submit" class="btn btn-primary" value="Edit Film" />
					</form>
				</div>
				<div>
					<form action="delete.do" method="post">
						<input name="delete" value="${editFilm.id }" type="hidden" /> <input
							type="submit" class="btn btn-danger" value="Delete Film" />
					</form>
				</div>
			</div>

		</c:if>
		</div>
		<c:if test="${not empty deletedFilm }">
			<h4>${deletedFilm}</h4>
		</c:if>

	</div>



	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>
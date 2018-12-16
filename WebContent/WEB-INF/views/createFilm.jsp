<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" href="createFilm.css">
<style type="text/css">
	.background-image {
	  position:relative;
	  height:100vh;
	  min-height:100px;
	  max-height:150px;
	  background-size:cover;
	  background-image:url('https://d1jo0zet24jmxt.cloudfront.net/content/13753/0130674985c5d4d23c18f048c79b7280.jpg');
	}
	.navigation {
	  position:absolute;
      bottom:0;
	  background-color: transparent;
	}
	.nav-item nav-link active {
	  background-color: transparent;
	}
	.container {
	padding-top: 25px;
	}
	.button {
	margin: 10px;
	}
</style>
<title>Create Film</title>
</head>
<body>
<div class="background-image">
<div class="navigation">
<nav class="nav nav-tabs">
	<a class="nav-item nav-link" href="home.do" >Home
	</a>
	<a class="nav-item nav-link active" href="createFilm.do">Create Film
	</a>
</nav>
</div>
</div>
	<div role="main" class="container">
		<form action="createFilm.do" method="post">
			<div class="form-group">
				<label id="title">Film title:</label> <input type="text" id="title"
					name="title" value="The Lion King"></input>
			</div>
			<div class="form-group">
				<label id="year">Film Year:</label> <input type="number" id="year"
					name="year" value="1901" required min="1901"></input>
			</div>
			<div class="form-group">
				<label id="length">Film Length:</label> <input type="number"
					id="length" name="length" value="300" required min="0"></input>
			</div>
			<div class="form-group">
				<label id="rating">Film Rating:</label> <input type="text"
					id="rating" name="rating" value="G" required></input>
			</div>
			<div class="form-group">
				<label id="category">Film Category:</label> <input type="text"
					id="category" name="category" value="Family" required></input>
			</div>
			<div class="form-group">
				<label for="description">Film Description:</label>
				<textarea class="form-control" id="description" name="description" rows="3"
					placeholder="A film of lions and kings" required></textarea>
			</div>
			<input type="submit" class="btn btn-primary" value="Submit" />

		</form>
		<c:if test="${error != null }">
			<h4>${error}</h4>
		</c:if>
		<div class="container">
		<c:if test="${film != null}">
			<ul class="list-group">
				<li class="list-group-item">Id: ${film.id}</li>
				<li class="list-group-item">Title: ${film.title}</li>
				<li class="list-group-item">Year: ${film.year}</li>
				<li class="list-group-item">Length: ${film.length}</li>
				<li class="list-group-item">Rating: ${film.rating}</li>
				<li class="list-group-item">Category: ${film.category}</li>
				<li class="list-group-item">Description: ${film.description}</li>

			</ul>
			<div class="nav">
			<div class="button">
				<form action="editFilm.do" method="get">
					<input name="id" value="${film.id }" type="hidden" /> <input
						type="submit" value="Edit Film" class="btn btn-primary"/>
				</form>
			</div>
			<div class="button">
				<form action="delete.do" method="post">
					<input name="delete" value="${film.id }" type="hidden" /> <input
						type="submit" value="Delete Film" class="btn btn-danger"/>
				</form>
			</div>
			</div>
		</c:if>
		</div>
		

		<c:if test="${not empty deletedFilm }">
			<h4>${deletedFilm}</h4>
		</c:if>

<!-- 		<a href="home.do">Home</a> -->
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
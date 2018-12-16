<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Edit Film</title>
</head>
<body>
	
	
	<form action="editFilm.do" method="post">
		<div>
			<label id="title">Film title: </label> <input type="text" id="title"
				name="title" value="${film.title }" required></input>
		</div>
		<div>
			<label id="description">Film Description: </label> <input type="text"
				id="description" name="description" value="${film.description }" required></input>
		</div>
		<div>
			<label id="year">Film Year: </label> <input type="number" id="year"
				name="year" value="${film.year }" min="1901" required ></input>
		</div>
		<div>
			<label id="length">Film Length: </label> <input type="number"
				id="length" name="length" value="${film.length }" required min="0"></input>
		</div>
		<div>
			<label id="rating">Film Rating: </label> <input type="text"
				id="rating" name="rating" value="${film.rating }" required></input>
		</div>

		<div>
			<label id="id">Film Id: </label> <input type="hidden" name="id"
				value="${film.id}" min="1" required/>
		</div>
		<input type="submit" value="Submit" />
	</form>

	<c:if test="${error != null }">
		<h4>${error}</h4>
		
	</c:if>
	<c:if test="${editFilm != null}">
		<ul>
			<li>Id: ${editFilm.id}</li>
			<li>Title: ${editFilm.title}</li>
			<li>Year: ${editFilm.year}</li>
			<li>Length: ${editFilm.length}</li>
			<li>Rating: ${editFilm.rating}</li>
			<li>Category: ${editFilm.category}</li>
			<li>Description: ${editFilm.description}</li>
			<li>Cast: ${editFilm.cast}</li>
			<li>Inventory: ${editFilm.inventory}</li>
		</ul>
		<div>
			<form action="delete.do" method="post">
				<input name="delete" value="${editFilm.id }" type="hidden" /> <input
					type="submit" value="Delete Film" />
			</form>
		</div>
		<div>
			<form action="editFilm.do" method="get">
				<input name="id" value="${editFilm.id}" type="hidden" /> <input
					type="submit" value="Edit Film" />
			</form>
		</div>
	</c:if>


	<c:if test="${not empty deletedFilm }">
		<h4>${deletedFilm}</h4>
	</c:if>

	<a href="home.do">Home</a>

</body>
</html>
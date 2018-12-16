<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Film</title>
</head>
<body>

	<form action="createFilm.do" method="post">
		<div>
			<label id="title">Film title:</label> <input type="text" id="title"
				name="title" value="The Lion King"></input>
		</div>
		<div>
			<label id="description">Film Description:</label> <input type="text"
				id="description" name="description"
				value="A film of lions and kings" required></input>
		</div>
		<div>
			<label id="year">Film Year:</label> <input type="number" id="year"
				name="year" value="1901" required min="1901"></input>
		</div>
		<div>
			<label id="length">Film Length:</label> <input type="number"
				id="length" name="length" value="300" required min="0"></input>
		</div>
		<div>
			<label id="rating">Film Rating:</label> <input type="text"
				id="rating" name="rating" value="G" required></input>
		</div>
		<div>
			<label id="category">Film Category:</label> <input type="text"
				id="category" name="category" value="Family" required></input>
		</div>
		<input type="submit" value="Submit" />

	</form>


	<c:if test="${error != null }">
		<h4>${error}</h4>
	</c:if>
	<c:if test="${film != null}">
		<ul>
			<li>Id: ${film.id}</li>
			<li>Title: ${film.title}</li>
			<li>Year: ${film.year}</li>
			<li>Length: ${film.length}</li>
			<li>Rating: ${film.rating}</li>
			<li>Category: ${film.category}</li>
			<li>Description: ${film.description}</li>
			
		</ul>
		<div>
			<form action="delete.do" method="post">
				<input name="delete" value="${film.id }" type="hidden" /> <input
					type="submit" value="Delete Film" />
			</form>
		</div>
		<div>
			<form action="editFilm.do" method="get">
				<input name="id" value="${film.id }" type="hidden" /> <input
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
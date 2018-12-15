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

	<form action="createFilm.do" method="POST">
		<div>
		<label id="title">Film title:</label>
		<input type="text" id="title" name="title" value="The Lion King"></input>
		</div>
		<div>
		<label id="description">Film Description:</label>
		<input type="text" id="description" name="description" value="A film of lions and kings"></input>
		</div>
		<div>
		<label id="year">Film Year:</label>
		<input type="number" id="year" name="year" value="1900"></input>
		</div>
		<div>
		<label id="length">Film Length:</label>
		<input type="number" id="length" name="length" value="300"></input>
		</div>
		<div>
		<label id="rating">Film Rating:</label>
		<input type="text" id="rating" name="rating" value="G"></input>
		</div>
		<div>
		<label id="category">Film Category:</label>
		<input type="text" id="category" name="category" value="Family"></input>
		</div>
		<input type="submit" value="Submit" />
		
	</form>
	

	<c:if test="${film != null}">
			<ul>
				<li>${film.id}</li>
				<li>${film.title}</li>
				<li>${film.rating}</li>
				<li>${film.category}</li>
				<li>${film.description}</li>
			</ul>
			<div>
			<form action="delete.do" method="Post">
				<input name="delete" value="${film.id }" type="hidden" />
				<input type="submit" value="Delete Film" />
			</form>
			</div>
			<div>
			<form action="editFilm.do" method="Post" >
				<input name="editFilm" value="${film.id }" type="hidden" />
				<input type="submit" value="Edit Film" />
			</form>
			</div>
	</c:if>

	
	<c:if test="${not empty deletedFilm }">
		<h4>${deletedFilm}</h4>
	</c:if>

	<a href="home.do">Home</a>

</body>
</html>
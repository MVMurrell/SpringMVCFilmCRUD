<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- TODO: Add the @taglib for form -->

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<!-- TODO: Add registration form -->
	<form action="filmById.do" method="POST">
		<form:errors path="*" />
		<br>
		<label id="filmId">Film Id:</label>
		<input type="number" id="filmId"></input>
		<br />

		<input type="submit" value="Submit" />
	</form>
	<form action="filmByKeyword.do" method="POST">
		<br>
		<label id="filmKeyword">Film Keyword:</label>
		<input type="text" id="filmKeyword"></input>
		<br />

		<input type="submit" value="Submit" />
	</form>

<c:choose>
	<c:when test="${not empty film }">
		<c:forEach items="${film}" var="filmVar">



			<ul>
				<li>${filmVar.id}</li>
				<li>${filmVar.title}</li>
				<li>${filmVar.rating}</li>
				<li>${filmVar.category}</li>
				<li>${filmVar.description}</li>
			</ul>
			<div>
			<form:form action="delete.do" method="Post" modelAttribute="film">
				<input name="delete" value="${film.id }" type="hidden" />
				<input type="submit" value="Delete Film" />
			</form:form>
			</div>
			<div>
			<form:form action="editFilm.do" method="Post" modelAttribute="film">
				<input name="editFilm" value="${film.id }" type="hidden" />
				<input type="submit" value="Edit Film" />
			</form:form>
			</div>


		</c:forEach>
	</c:when>
	
	<c:otherwise>
		<h4>No Film was Found</h4>
	</c:otherwise>
</c:choose>
	
	<c:if test="${not empty deletedFilm }">
		<h4>${deletedFilm}</h4>
	</c:if>

	<a href="home.do">Home</a>

</body>
</html>
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
	<form:form action="filmById.do" method="POST" modelAttribute="film">
	<form:errors path="*"/>
	<br>
		<form:label path="filmId">Film Id:</form:label>
		<form:input path="FilmId" />
		<br />
		
		<input type="submit" value="Submit" />
	</form:form>
	<form:form action="filmByKeyword.do" method="POST" modelAttribute="film">
	<form:errors path="*"/>
	<br>
		<form:label path="filmKeyword">Film Keyword:</form:label>
		<input path="FilmKeyword" />
		<br />
		
		<input type="submit" value="Submit" />
	</form:form>
	
	<c:if test="${not empty film }">
	<ul>
		<li>${film.id}</li>
		<li>${film.title}</li>
		<li>${film.rating}</li>
		<li>${film.category}</li>
		<li>${film.description}</li>
	</ul>
		<form:form action="delete.do" method="Post" modelAttribute="film">
		<input name="delete" value ="${film.id }" type="hidden"/>
		<input type="submit" value="Delete Film" />
		</form:form>
	
	
	</c:if>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- TODO: Add the @taglib for form -->

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


<style>
#FilmHeader {
	text-align: center;
	padding: 150px 70px 150px 70px;
	background-image:
		url("https://images.unsplash.com/photo-1440404653325-ab127d49abc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80");
	background-repeat: no-repeat;
	background-attachment: scroll;
	background-position: center;
	background-size: cover;
	font-family: 'Merriweather Sans', sans-serif;
}

#headerText {
	color: white;
}

.navbar-brand {
	color: white;
}

.nav>div {
	padding: 5px
}
</style>



</head>
<body>
	<!-- TODO: Add registration form -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand">BJM Film Rentals</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link mr-sm-2"
					href="home.do">Home</a></li>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item active"><a class="nav-link mr-sm-2"
							href="createFilm.do">Create Film</a></li>
					</ul>
				</div>
	</nav>

	<header>
		<div id="FilmHeader">

			<h1 id="headerText">Find Film By ID or Keyword</h1>
			<div class="row">
				<form class="col" action="filmById.do" method="post">
					<div class="form-group">
						<label style="color: white;" id="filmById">Film ID:</label><br>
						<input type="number" name="id" id="filmById" required min="1"></input>
					</div>
					<input type="submit" class="btn btn-primary" value="Submit" />
				</form>

				<form class="col" action="filmByKeyword.do" method="post">
					<div class="form-group">
						<label style="color: white;" id="filmByKeyword">Film
							Keyword:</label><br> <input name="keyword" type="text"
							id="filmByKeyword"></input>
					</div>
<<<<<<< HEAD
				<input type="submit" class="btn btn-primary" value="Submit" />
				</form>
=======
					<input type="submit" class="btn btn-primary" value="Submit" />
					</form>
>>>>>>> d48722f5ac42b9fc3edd082951bcc28c9cdf04ef
			</div>
		</div>
	</header>
	<%-- <div class="container">
		<form action="filmById.do" method="post">
			<div class="form-group">
				<label id="filmById">Film ID:</label> <input type="number" name="id"
					id="filmById" required min="1"></input>
			</div>
			<input type="submit" class="btn btn-primary" value="Submit" />
		</form>

		<form action="filmByKeyword.do" method="post">
			<div class="form-group">
				<label id="filmByKeyword">Film Keyword:</label> <input
					name="keyword" type="text" id="filmByKeyword"></input>
			</div>
			<input type="submit" class="btn btn-primary" value="Submit" />

		</form>
	</div> --%>

	<c:choose>
		<c:when test="${not empty film }">
			<c:forEach items="${film}" var="filmVar">

				<br>
				<div class="container">
					<ul class="list-group">
						<li class="list-group-item">Id: ${filmVar.id}</li>
						<li class="list-group-item">Title: ${filmVar.title}</li>
						<li class="list-group-item">Year: ${filmVar.year}</li>
						<li class="list-group-item">Length: ${filmVar.length}</li>
						<li class="list-group-item">Rating: ${filmVar.rating}</li>
						<li class="list-group-item">Category: ${filmVar.category}</li>
						<li class="list-group-item">Description:
							${filmVar.description}</li>
						<li class="list-group-item">Cast: ${filmVar.cast}</li>
						<li class="list-group-item">Inventory: ${filmVar.inventory}</li>

						<ul class="list-group list-group-flush">
							<c:forEach items="${editFilm.cast}" var="cast">
								<li class="list-group-item">${cast}</li>
							</c:forEach>
						</ul>
					</ul>
				</div>
				<div class="container ">
					<div class="nav">
						<div>
							<form:form action="delete.do" method="post">
								<input type="hidden" name="delete" value="${filmVar.id }" />
								<input type="submit" class="btn btn-danger" value="Delete Film" />
							</form:form>
						</div>

						<div>
							<form:form action="editFilm.do" method="get">
								<input type="hidden" class="btn btn-primary" name="id"
									value="${filmVar.id}" />
								<input type="submit" class="btn btn-primary" value="Edit Film" />
							</form:form>
						</div>
					</div>
				</div>





			</c:forEach>
		</c:when>



		<c:otherwise>
			<c:if test="${empty deletedFilm }">
				<h4>No Film was Found</h4>
			</c:if>
		</c:otherwise>
	</c:choose>

	<c:if test="${not empty deletedFilm }">
		<h4>${deletedFilm}</h4>
	</c:if>

	<!-- <a href="home.do">Home</a> -->

</body>
</html>
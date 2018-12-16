<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans" rel="stylesheet">

<style>
#FilmHeader {
	text-align: center;
	padding: 150px 70px 150px 70px;
	background-image:
		url("https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80");
	background-repeat: no-repeat;
	background-attachment: scroll;
	background-position: center;
	background-size: cover;
	font-family: 'Merriweather Sans', sans-serif;
}

#headerText {
	color: black;
	outline-style: solid;
	outline-width: thin;
	background-color: rgba(255, 255, 255, 0.5);
	width: 300px;
	left: 35%;
}

}
#choices {
	margin-top: 200px;

	/* background-blend-mode: darken; */
	footer
	{
	padding-top
	:
	400px
}


#choices.card-title {
	align-content: center;
}
</style>

<%-- <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"> --%>


<title>Film Database Application by M, B & J</title>

</head>

<body>

	<header class="masthead">
		<div class="intro-lead-in" id="FilmHeader">
			<h2 class="col text-center" id="headerText">BJM Film Rental</h2>
		</div>
	</header>
	 <section id="choices">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<h5 class="title">Search for a film by ID or Keyword</h5>
					<a href="getFilm.do" value="Get Film" class="btn btn-primary">Search</a>
				</div>
				<div class="col text-center">
					<h5 class="title">Add a new film to the database</h5>
					<a href="createFilm.do" value="Create Film" class="btn btn-primary">Add
						Film</a>
				</div>
			</div>
		</div>
		<!-- <div class="col">
            <div class="card" style="width: 18rem;">
              <div class="card-body">
                <h5 class="card-title">Edit a Film</h5>
                <p class="card-text"></p>
                <a href="editFilm.do" value="Edit Film" class="btn btn-port">Search</a>
              </div>
            </div>
          </div> -->
	</section>

	<footer class="fixed-bottom">
		<div class="text-center">Created by Mike Murrell, Braiden
			Miller, and Jimmy Fruchterman</div>
	</footer>

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

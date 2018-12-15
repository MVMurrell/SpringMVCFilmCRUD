<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
</head>
<body>

	<form:form action="createFilm.do" method="POST">
		<form:errors path="*" />
		<br>
		<form:input type= text path="filmTitle"></form:input>
		<form:label path="filmTitle">Film title:</form:label>
		<br />
		<form:input type= text path="filmDescription"></form:input>
		<form:label path="filmDescription">Film title:</form:label>
		<br />
		<form:input type= text path="filmYear"></form:input>
		<form:label path="filmYear">Film title:</form:label>
		<br />
		<form:input type= text path="filmLength"></form:input>
		<form:label path="filmLength">Film title:</form:label>
		<br />
		<form:input type= text path="filmRating"></form:input>
		<form:label path="filmRating">Film title:</form:label>
		<br />
		<form:input type= text path="filmCategory"></form:input>
		<form:label path="filmCategory">Film title:</form:label>
		<br />

		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>
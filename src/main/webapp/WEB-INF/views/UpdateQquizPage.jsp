<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Update exercise
	<hr>
	<form action="updateQuiz" method="get">
		<label>*Name exercise</label> <input type="text" name="title"
			value="${c.title}"> <br>
		<c:choose>
			<c:when test="${c.type == true }">
				<label>Questions per page</label>
				<input type="radio" id="On one page" name="type" value="true"
					checked="checked">
				<label for="On one page">On one page</label>
				<input type="radio" id="One page per question (consecutive)"
					name="type" value="false">
				<label for="One page per question (consecutive)">One page
					per question (consecutive)</label>
				<br />
			</c:when>
			<c:otherwise>
				<label>Questions per page</label>
				<input type="radio" id="On one page" name="type" value="true">
				<label for="On one page">On one page</label>
				<input type="radio" id="One page per question (consecutive)"
					name="type" value="false" checked="checked">
				<label for="One page per question (consecutive)">One page
					per question (consecutive)</label>
				<br />
			</c:otherwise>
		</c:choose>

		<br> <label>Random question</label> <select name="random">
			<c:forEach var="i" begin="1" end="10">

				<c:choose>
					<c:when test="${c.random == i }">
						<option value="${i}" selected="selected">${i}</option>
					</c:when>
					<c:otherwise>
						<option value="${i}">${i}</option>
						<br />
					</c:otherwise>
				</c:choose>

				<c:if test="${c.random == i }">
					<option value="${i}" selected="selected">${i}</option>
				</c:if>
			</c:forEach>
			<option value="all">All</option>
		</select> <br>
		<c:choose>
			<c:when test="${c.stuff_answer == true }">
				<label>Shuffle answers</label>
				<input type="radio" id="Yes" name="stuff_answes" value="true"
					checked="checked">
				<label for="Yes">Yes</label>
				<input type="radio" id="No" name="stuff_answes" value="false">
				<label for="No">No</label>
				<br />
			</c:when>
			<c:otherwise>
				<label>Shuffle answers</label>
				<input type="radio" id="Yes" name="stuff_answes" value="true">
				<label for="Yes">Yes</label>
				<input type="radio" id="No" name="stuff_answes" value="false"
					checked="checked">
				<label for="No">No</label>
				<br />
			</c:otherwise>
		</c:choose>
		<br> <label>Max number of attempts</label> <input type="number"
			name="max_attempt" value="${c.max_attempt}"> <br> <label>Start
			time</label> <input type="Date" name="start_time" value="${c.start_time}">
		<br> <label>End Time</label> <input type="Date" name="end_time"
			value="${c.end_time}"> <br> <label>Total
			duration in minutes of the test</label> <input type="number"
			name="expired_time" value="${c.expired_time}"> <br> <input
			type="submit" value="Update to questions" /> <input type="hidden"
			name="id" value="${c.id}">
	</form>
</body>
</html>
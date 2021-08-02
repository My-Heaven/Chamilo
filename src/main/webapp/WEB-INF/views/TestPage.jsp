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
	<a href="${pageContext.request.contextPath}/create-quiz">CreateQuiz</a>
	<hr>
	<form action="search-cquiz-by-id" method="get" id="form-user">
		<input type="text" name="searchValue" placeholder="id" /> <input
			type="submit" value="Search" />
	</form>
	<a>${msgupdatequiz}</a>
	<a>${msgaddquiz}</a>
	<table border="1">
		<tr>
			<th>Name exercise</th>
			<th>Questions</th>
			<th>Detail</th>
		</tr>
		<c:forEach var="c_quiz" items="${LISTQUIZ}">
			<c:url var="updateLink" value="UpdateCquizPage">
				<c:param name="ids" value="${c_quiz.id}" />
			</c:url>
			<c:url var="deleteLink" value="delete-cquiz">
				<c:param name="ids" value="${c_quiz.id}" />
			</c:url>
			<tr>
				<td>${c_quiz.title}</td>
				<td>....</td>
				<td><a href="${pageContext.request.contextPath}/${updateLink }">Update</a>
					<a href="${pageContext.request.contextPath}/${deleteLink}">Delete</a>

				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
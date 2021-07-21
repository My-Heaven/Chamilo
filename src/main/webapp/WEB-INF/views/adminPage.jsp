<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
	<c:if test="${user.username != null}">
		<a href="${pageContext.request.contextPath}/logout">Logout</a>
	</c:if>
	${user.username}
</body>
</html>
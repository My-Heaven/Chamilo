<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Department List</title>
</head>
<body>
	<div align="center">
		<h1>List Role</h1>
		<table border="1">
			<tr>
				<th>id</th>
				<th>name</th>
			</tr>
			<c:forEach var="role" items="${listRole}">
				<tr>
					<td>${role.id}</td>
					<td>${role.name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
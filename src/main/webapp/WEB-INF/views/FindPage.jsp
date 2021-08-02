<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link
	href="${pageContext.request.contextPath}/css/fontawesome-free-5.15.3-web/css/fontawesome.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/fontawesome-free-5.15.3-web/css/brands.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/css/fontawesome-free-5.15.3-web/css/solid.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/home-page.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/user-style.css">
</head>
<body>
	<header id="cm-header">
		<a href="${pageContext.request.contextPath}/AdminPage" target="_self">
			<img src="${pageContext.request.contextPath}/img/header-logo.png"
			border="0" id="header-logo" />
		</a>
	</header>
	<ul>
		<li><a href="${pageContext.request.contextPath}/AdminPage">Home
				Page</a></li>
		<c:if test="${sessionScope.user != null}">
			<a href="${pageContext.request.contextPath}/logout">Logout</a>
		</c:if>
	</ul>
	<div id="container-page">
		<div id="avatar-form">
			<a href="${pageContext.request.contextPath}/AdminPage" target="_self">
				<img src="${pageContext.request.contextPath}/img/unknown.png"
				border="0" id="avatar" />
			</a>
		</div>
		<div id="body-form">
			<h2>Manage User</h2>
			<hr width="80%" align="center" />
			<form action="search-by-id" method="get" id="form-user">
				<span class="fas fa-search"><input type="text"
					name="searchValue" placeholder="id" /></span> <input type="submit"
					value="Search" />
			</form>
			<c:if test="${requestScope.LISTUSER != null }">
				<table id="tb-user">
					<tr>
						<th>Username</th>
						<th>Password</th>
						<th>Last Name</th>
						<th>First Name</th>
						<th>Email</th>
						<th>Role ID</th>
						<th>Update</th>
						<th>Delete</th>
					</tr>
					<c:forEach var="user" items="${requestScope.LISTUSER}">
						<c:url var="updateLink" value="UpdatePage">
							<c:param name="usernames" value="${param.username}" />
							<c:param name="passwords" value="${param.password}" />
							<c:param name="lastnames" value="${param.lastname}" />
							<c:param name="firstnames" value="${param.firstname}" />
							<c:param name="emails" value="${param.email}" />
							<c:param name="role_ids" value="${param.role_id}" />
							<c:param name="ids" value="${user.id}" />
						</c:url>
						<c:url var="deleteLink" value="delete-user">
							<c:param name="ids" value="${user.id}" />
						</c:url>
						<tr>
							<td>${user.username}</td>
							<td>${user.password}</td>
							<td>${user.lastname}</td>
							<td>${user.firstname}</td>
							<td>${user.email}</td>
							<td>${user.role_id}</td>
							<td><span class="fas fa-user-edit"><a
									href="${pageContext.request.contextPath}/${updateLink }">Update</a></span></td>
							<td><span class="fas fa-user-times"><a
									href="${pageContext.request.contextPath}/${deleteLink }">Delete</a></span></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</div>
	<footer>
		<div id="footer-container">
			<div>
				<p>Asociación Chamilo - Copyright © 2018</p>
			</div>
			<div>
				<p>Administrator : Chamilo LMS</p>
				<p>Powered by Chamilo LMS © 2021</p>
				<p>
					Sponsor <img
						src="${pageContext.request.contextPath}/img/beeznet-logo-proveedor.png" />
				</p>
			</div>
		</div>

	</footer>
</body>
</html>
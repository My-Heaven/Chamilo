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
			<div class="row">
				<span class="fas fa-search"><a
					href="${pageContext.request.contextPath}/list-user" class = "row-a">Find user</a></span><br>
				<span class="fas fa-user-plus"><a
					href="${pageContext.request.contextPath}/CreateUserPage"class = "row-a">Create
						new user</a></span><br> <span class="fas fa-user-edit"class = "row-a"><a
					href="${pageContext.request.contextPath}/list-user"class = "row-a">Update user</a></span><br>
				<span class="fas fa-user-times"><a
					href="${pageContext.request.contextPath}/list-user"class = "row-a">Delete user</a></span>
			</div>
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
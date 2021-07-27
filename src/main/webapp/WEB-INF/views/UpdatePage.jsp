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
		<h2>Update User</h2>
			<hr width="80%" align="center" />
			<form action="update-user" method="get" id="form-user">
				<label>Username</label> 
				<input type="text" name="username" value="${u.username}"><br> 
				<label>Password</label> 
				<input type="text" name="password" value="${u.password}"><br> 
				<label>Last Name</label>
				<input type="text" name="lastname" value="${u.lastname}"><br> 
				<label>First Name</label>
				<input type="text" name="firstname" value="${u.firstname}"><br> 
				<label>Email</label>
				<input type="text" name="email" value="${u.email}"><br> 
				<label>Role ID</label>
				<input type="text" name="role_id" value="${u.role_id}">(1-Administrator,2-Teacher,3-Student)<br>
				<input type="hidden" name="id" value="${u.id}">
				<input type="submit" value="Update" />
			</form>
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
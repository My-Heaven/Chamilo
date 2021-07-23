<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
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
</head>

<body>
	<header id="cm-header">
		<a href="${pageContext.request.contextPath}/" target="_self"> <img
			src="${pageContext.request.contextPath}/img/header-logo.png"
			border="0" id="header-logo" /></a>
	</header>
	<ul>
		<li><a href="${pageContext.request.contextPath}/">Home Page</a></li>
	</ul>
	<div id="container">
		<div id="form-login">
			<form action="login" method="post">
				<i class="fas fa-user"></i><input type="text" name="username"
					placeholder="username" id="text-fill" /> <br /> <br /> <i
					class="fas fa-lock"></i><input type="password" name="password"
					placeholder="password" id="text-fill" /> <br /> <br /> <input
					type="submit" value="login" id="btn-login" />
			</form>
		</div>

		<div id="inside"></div>
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
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
		<h2>Create User</h2>
			<hr width="80%" align="center" />
			<form action="create-user" method="get" id="form-user">
				<label>Username</label> 
				<input type="text" name="username" ><br> 
				<label>Password</label> 
				<input type="text" name="password" ><br> 
				<label>Last Name</label>
				<input type="text" name="lastname" ><br> 
				<label>First Name</label>
				<input type="text" name="firstname" ><br> 
				<label>Email</label>
				<input type="text" name="email" ><br> 
				<label>Phone</label>
				<input type="text" name="phone" ><br>
				<label>Code</label>
				<input type="text" name="code" ><br>
				<label>Role ID</label>
				<input type="text" name="role_id">(1-Administrator,2-Teacher,3-Student)<br>
				<input type="submit" value="Create" />
			</form>
		</div>
	</div>

</body>
</html>
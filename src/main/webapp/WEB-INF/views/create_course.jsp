
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/create_course.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="/fontawesome-free-5.15.3-web/fontawesome-free-5.15.3-web/css/all.css" />
<title>Document</title>
</head>
<body>
	<div class="container">
		<div class="cover">
			<ul class="selector">
				<li><a href="">Danh sách khóa học</a></li>
				<li>Tạo website cho khoá học mới</li>
			</ul>
			<p class="descrip">Sau khi bấm ok, một website sẽ được tạo ra với
				đầy đủ các chuyên mục. Bạn chỉ cần đăng nhập và hiệu chỉnh theo ý
				muốn</p>
			<div class="form-input">
				<h2>Tạo website cho khoá học mới</h2>
				<hr />
				<form:form action="saveCourse" modelAttribute="course" method="POST">
					<div class="form-group">
						<label for="" class="form-label">Course name</label>
						<div class="text-form">
							<form:input path="title" />
							<form:errors path="title" cssClass="error"></form:errors>
							<p class="input-description">Example: History - Literature</p>
						</div>
					</div>
					<div class="form-group">
						<label for="" class="form-label">Category</label>
						<div class="text-form">
							<form:select path="category_id" class="input-form">

								<form:options items="${categoryList}" itemValue="id"
									itemLabel="name" />

							</form:select>
							<form:errors path="category_id" cssClass="error"></form:errors>
						</div>
					</div>
					<div class="form-group">
						<label for="" class="form-label">Course code</label>
						<div class="text-form">
							<form:input path="code" />
							<form:errors path="code" cssClass="error"></form:errors>
							<p class="input-description">Only letters (a-z) and numbers (0-9)</p>
						</div>
					</div>
					<div class="button-form">
						<button class="create-course">
							<i class="fa fa-plus" aria-hidden="true"></i>Create this course
						</button>
						<span class="star">*</span> <small>Require field</small>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

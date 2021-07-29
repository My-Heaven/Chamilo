<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: HL
  Date: 7/29/2021
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi"><!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit course information</title>
    <%--    FontAnswesome--%>
    <link rel="stylesheet" href="<c:url value="/css/fontawesome-free-5.15.3-web/css/all.min.css"></c:url>">
    <%--CSS--%>
    <link href="<c:url value="/css/theme/bootstrap/dist/css/bootstrap.min.css"></c:url>" rel="stylesheet"
          media="screen" type="text/css">
    <link href="<c:url value="/css/theme/base.css"></c:url>" rel="stylesheet" media="screen" type="text/css">
    <link href="<c:url value="/css/theme/default.css"></c:url>" rel="stylesheet" media="screen"
          type="text/css">
    <%--JS--%>
    <script src="<c:url value="/css/theme/bootstrap/dist/js/bootstrap.min.js"></c:url>"></script>

</head>
<body class="page_origin_">

<!-- START MAIN -->
<main id="main" dir="ltr" class="section-platform_admin ">

    <!-- START HEADER -->
    <header id="cm-header">
        <div id="navigation" class="notification-panel">
        </div>
        <!-- Topbar -->
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-3">
                    <div class="logo">
                        <a href="/"><img title="My campus" class="img-responsive"
                                         id="header-logo"
                                         src="<c:url value="/img/header-logo.png"></c:url>"
                                         alt="My Organisation"></a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-9">
                    <div class="row">
                        <div class="col-sm-4">
                        </div>
                        <div class="col-sm-3">
                        </div>
                        <div class="col-sm-5">
                            <ol class="header-ol">
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Fixed navbar -->
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="pull-right  navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="http://localhost/chamilo/"> <em class="fa fa-home"></em> </a>
                </div>

                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">

                        <li class="homepage ">
                            <a href="http://localhost/chamilo/index.php" title="Homepage">
                                Homepage
                            </a>
                        </li>

                        <li class="my-course active">
                            <a href="http://localhost/chamilo/user_portal.php?nosession=true" title="Danh mục khoá học">
                                Danh mục khoá học
                            </a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li id="count_message_li" class="pull-left  hidden" style="float: left !important;"
                            aria-expanded="true">
                            <a href="http://localhost/chamilo/main/messages/inbox.php">
                                <span id="count_message" class="badge badge-warning"></span>
                            </a>
                        </li>
                        <li class="dropdown avatar-user" style="float:right">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">
                                <img class="img-circle" src="http://localhost/chamilo/main/img/icons/32/unknown.png"
                                     alt="Doe John">
                                <span class="username-movil">Doe John</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li class="user-header">
                                    <div class="text-center">
                                        <a href="http://localhost/chamilo/main/social/home.php">
                                            <img class="img-circle"
                                                 src="http://localhost/chamilo/main/img/icons/64/unknown.png"
                                                 alt="Doe John">
                                            <p class="name">Doe John</p>
                                        </a>
                                        <p><em class="fa fa-envelope-o" aria-hidden="true"></em>
                                            postmaster@localhost.localdomain</p>
                                    </div>
                                </li>
                                <li role="separator" class="divider"></li>
                                <li class="user-body">
                                    <a title="Inbox" href="http://localhost/chamilo/main/messages/inbox.php">
                                        <em class="fa fa-envelope" aria-hidden="true"></em> Inbox
                                    </a>
                                </li>


                                <li class="user-body">
                                    <a title="My certificates"
                                       href="http://localhost/chamilo/main/gradebook/my_certificates.php">
                                        <em class="fa fa-graduation-cap" aria-hidden="true"></em> My certificates
                                    </a>
                                </li>

                                <li class="user-body">
                                    <a id="logout_button" title="Logout"
                                       href="http://localhost/chamilo/index.php?logout=logout&amp;uid=1">
                                        <em class="fa fa-sign-out"></em> Logout
                                    </a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <div class="nav-tools">

        </div>
    </header>
    <!-- END HEADER -->

    <!-- START CONTENT -->
    <section id="cm-content">
        <div class="container">
            <!-- TOOLS SHOW COURSE -->
            <div id="cm-tools" class="nav-tools">

            </div>
            <!-- END TOOLS SHOW COURSE -->

            <ul class="breadcrumb">
                <li class="active"><a href="index" target="_self">Administration</a></li>
                <li class="active"><a href="course_lis" target="_self">Course list</a></li>
                <li class="active">Edit course information</li>
            </ul>
            <div class="actions">
                <a href="${pageContext.request.contextPath}/course/list">
                    <img
                    src="http://localhost/chamilo/main/img/icons/22/back.png" alt="Back" title="Back">
                </a>
                <a
                    target="_blank" href="http://localhost/chamilo/courses/AA/index.php">
                    <img
                    src="http://localhost/chamilo/main/img/icons/22/course_home.png" alt="Course homepage"
                    title="Course homepage">
                </a>
                <a
                    href="http://localhost/chamilo/main/admin/course_information.php?code=AA">
                    <img
                    src="http://localhost/chamilo/main/img/icons/22/info2.png" alt="Information"
                    title="Information">
                </a>
            </div>

            <form:form cssClass="form-horizontal" action="update" method="POST"
                  modelAttribute="course">
                <fieldset>
                    <legend>Course #${course.id} ${course.code}</legend>
                    <div class="form-group ">
                        <label for="update_course_title" class="col-sm-2 control-label">
                            Course name
                            <span class="form_required">*</span>
                        </label>
                        <div class="col-sm-8">
                            <form:input path="title" cssClass="form-control" id="update_course_title"/>
                            <form:errors path="title" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    <div class="form-group ">
                        <label for="update_course_category_code" class="col-sm-2 control-label  ">
                            Category
                        </label>
                        <div class="col-sm-8">
                            <form:select path="category_id" cssClass="form-control" id="update_course_category_code">
                                <form:options items="${categoryList}" itemValue="id" itemLabel="name"/>
                            </form:select>
                            <form:errors path="category_id" cssClass="text-danger"/>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    <div class="form-group ">
                        <label for="update_course_visual_code" class="col-sm-2 control-label">
                            Code
                            <span class="form_required">*</span>
                        </label>
                        <div class="col-sm-8">
                            <form:input path="code" cssClass="form-control" maxlength="40" title="Only letters (a-z) and numbers (0-9)"
                            id="update_course_visual_code"/>
                            <form:errors path="code" cssClass="text-danger"/>
                            <p class="help-block">Only letters (a-z) and numbers (0-9)</p>
                        </div>
                    </div>


                    <div class="form-group ">
                        <label for="update_course_submit" class="col-sm-2 control-label">

                        </label>
                        <div class="col-sm-8">


                            <button class=" btn btn-primary " name="submit" type="submit" id="update_course_submit"><em
                                    class="fa fa-pencil"></em> Edit course information
                            </button>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10"><span class="form_required">*</span> <small>Required
                            field</small></div>
                        <c:if test="${NOTI != null}">
                            <div class="col-sm-offset-2 col-sm-10"> <h4 class="text-danger">${NOTI}
                               </h4></div>
                        </c:if>
                    </div>
                </fieldset>
                <form:hidden path="id"/>
            </form:form>
        </div>
    </section>
    <!-- END CONTENT -->

    <!-- START FOOTER -->
    <footer class="footer">
        <div class="container">
            <section class="sub-footer">
                <div class="row">
                    <div class="col-xs-12 col-md-4">
                    </div>
                    <div class="col-xs-12 col-md-4">
                    </div>
                    <div class="col-xs-12 col-md-4 text-right">
                        <div class="administrator-name">
                            Quản lí : <a href="mailto:postmaster@localhost.localdomain" class="clickable_email_link">Doe
                            John</a>
                        </div>
                        <div class="software-name">
                            <a href="http://localhost/chamilo/" target="_blank">
                                Powered by Chamilo
                            </a>© 2021
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </footer>
    <!-- END FOOTER -->
</main>
<!-- END MAIN -->

</body>
</html>
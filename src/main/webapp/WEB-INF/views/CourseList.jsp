<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HL
  Date: 7/29/2021
  Time: 9:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh mục khoá học</title>
    <script src="<c:url value="/js/jquery-3.2.1.slim.min.js"></c:url>"></script>
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
<main id="main" dir="ltr" class="section-mycourses ">
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

                    <a class="navbar-brand" href=""> <em class="fa fa-home"></em> </a>
                </div>

                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">

                        <li class="homepage ">
                            <a href="http://localhost/chamilo/index.php" title="Homepage">
                                Homepage
                            </a>
                        </li>

                        <li class="my-course active">
                            <a href="${pageContext.request.contextPath}/course/list" title="Danh mục khoá học">
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


    <!-- START CONTENT -->
    <section id="cm-content">
        <div class="container">
            <!-- TOOLS SHOW COURSE -->
            <div id="cm-tools" class="nav-tools">

            </div>
            <!-- END TOOLS SHOW COURSE -->

            <ul class="breadcrumb">
                <li class="active">Danh mục khoá học</li>
            </ul>

            <div class="row">
                <div class="col-md-9 col-md-push-3">
                    <%--         Search           --%>
                    <form method="get" action="#" class="form-inline"
                          style="width:100%;display: inline-block;">
                        <div class="form-group" style="width: 100%">
                            <input class="form-control" type="text" name="search" aria-label="Search"
                                   style="width:80%" value="${param.search}">
                            <button class="btn btn-default" type="submit" style="width:19%">
                                <i class="fas fa-search"></i> Search
                            </button>
                        </div>
                    </form>
                    <%--    List--%>
                    <div class="page-content">

                        <section id="page" class="">
                            <div class="classic-courses">
                                <c:if test="${NOTI != null}">
                                   <script>
                                       alert("${NOTI}");
                                   </script>
                                </c:if>
                                <c:if test="${message != null}">
                                    <h3 class="text-danger">${message}</h3>
                                </c:if>
                                <c:if test="${listCourse.size() != 0}">
                                    <c:forEach var="course" items="${listCourse}">
                                        <div class="panel panel-default">
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-2">
                                                        <a href="#"
                                                           class="thumbnail">
                                                            <img src="<c:url value="/img/blackboard.png"></c:url>"
                                                                 alt="${course.title}" title="${course.title}">
                                                        </a>
                                                    </div>
                                                    <div class="col-md-10">
                                                        <h4 class="course-items-title">
                                                            <a href="<c:url value="/course/view">
                                                    <c:param name="id" value="${course.id}"></c:param>
                                                                    </c:url>">
                                                                    ${course.title}
                                                            </a>
                                                        </h4>
                                                        <div class="category">
                                                            <c:forEach var="category" items="${category}">
                                                                <c:if test="${category.id == course.category_id}">
                                                                    ${category.name}
                                                                </c:if>
                                                            </c:forEach>

                                                        </div>
                                                        <div class="course_extrafields">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </section>


                    </div>
                </div>
                <div class="col-md-3 col-md-pull-9">
                    <div class="sidebar">


                        <div style="text-align:center;" id="user_image_block" class="panel panel-default">
                            <div class="panel-body">
                                <a style="text-align:center"
                                   href="">
                                    <img class="img-circle"
                                         src="http://localhost/chamilo/main/img/icons/128/unknown.png"></a></div>
                        </div>

                        <!-- BLOCK PROFILE -->
                        <div class="panel-group" id="profile" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default" id="profile_block">
                                <div class="panel-heading" role="tab">
                                    <a role="button" data-toggle="collapse" data-parent="#profile"
                                       href="#profileCollapse" aria-expanded="true" aria-controls="profileCollapse">
                                        Profile
                                    </a>
                                </div>
                                <div aria-expanded="true" id="profileCollapse" class="panel-collapse collapse in"
                                     role="tabpanel">
                                    <div class="panel-body">
                                        <ul class="list-group">
                                            <li class="list-group-item inbox-message-social">
                                                <span class="item-icon"><img
                                                        src="http://localhost/chamilo/main/img/icons/22/inbox.png"
                                                        alt="Inbox" title="Inbox"></span>
                                                <a href="http://localhost/chamilo/main/messages/inbox.php">Inbox</a>
                                            </li>
                                            <li class="list-group-item new-message-social">
                                                <span class="item-icon"><img
                                                        src="http://localhost/chamilo/main/img/icons/22/new-message.png"
                                                        alt="Compose" title="Compose"></span>
                                                <a href="http://localhost/chamilo/main/messages/new_message.php">Compose</a>
                                            </li>
                                            <li class="list-group-item invitations-social">
                                                <span class="item-icon"><img
                                                        src="http://localhost/chamilo/main/img/icons/22/invitations.png"
                                                        alt="Pending invitations" title="Pending invitations"></span>
                                                <a href="http://localhost/chamilo/main/social/invitations.php">Pending
                                                    invitations</a>
                                            </li>
                                            <li class="list-group-item personal-data">
                                                <span class="item-icon"><img
                                                        src="http://localhost/chamilo/main/img/icons/22/database.png"
                                                        alt="Personal data" title="Personal data"></span>
                                                <a href="http://localhost/chamilo/main/social/personal_data.php">Personal
                                                    data</a>
                                            </li>
                                            <li class="list-group-item profile-social">
                                                <span class="item-icon"><img
                                                        src="http://localhost/chamilo/main/img/icons/22/edit-profile.png"
                                                        alt="Edit profile" title="Edit profile"></span>
                                                <a href="http://localhost/chamilo/main/auth/profile.php">Edit
                                                    profile</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
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
    <!-- Modal -->
    <div id="Modal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

</main>
<!-- END MAIN -->
<script src="<c:url value="/js/jquery-3.2.1.slim.min.js"></c:url>"></script>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: HL
  Date: 7/29/2021
  Time: 1:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Organisation - My campus - A</title>
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


    <!-- START CONTENT -->
    <section id="cm-content">
        <div class="container">
            <!-- TOOLS SHOW COURSE -->
            <div id="cm-tools" class="nav-tools">

            </div>
            <!-- END TOOLS SHOW COURSE -->

            <div id="view_as_link" class="pull-right">
                <div class="view-options"><a class="btn btn-default btn-sm"
                                             href="/chamilo/main/course_home/course_home.php?cDir=AA&amp;id_session=0&amp;isStudentView=true"
                                             target="_self" rel="noreferrer noopener"><em class="fa fa-eye"
                                                                                          title=""></em> Switch to
                    student view</a></div>
            </div>
            <ul class="breadcrumb">
                <li class="active"><a href="#"
                                      target="_self"><img src="http://localhost/chamilo/main/img/home.png" alt="${course.title}"
                                                          title="${course.title}">${course.title}</a></li>
            </ul>


            <div class="row">
                <div class="col-xs-12 col-md-12">


                    <section id="main_content">
                        <div id="course_tools">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="page-course">

                                        <title></title>


                                        <p>${course.description}</p>
                                        <c:if test="${NOTI != null}">
                                            <h3 class="text-danger"> ${NOTI}</h3>
                                        </c:if>
                                    </div>
                                    <div class="toolbar-edit">
                                        <div class="btn-group pull-right" rol="group">
                                            <a class="btn btn-default" href="<c:url value="/course/edit"><c:param name="id" value="${course.id}"></c:param> </c:url> " title="Thay đổi">
                                            <i class="fas fa-pencil-alt"></i>
                                            </a>
                                            <a class="btn btn-default"
                                               href="<c:url value="/course/delete"><c:param name="id" value="${course.id}"></c:param> </c:url> "
                                               onclick="javascript:if(!confirm('Hãy xác nhận lại lựa chọn của bạn')) return false;">
                                                <i class="fas fa-trash"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="alert alert-success" style="border:0px; margin-top: 0px;padding:0px;">
                                <div class="normal-message" id="id_normal_message" style="display:none"><img
                                        src="http://localhost/chamilo/main/inc/lib/javascript/indicator.gif">&nbsp;&nbsp;Please
                                    stand by...
                                </div>
                                <div class="alert alert-success" id="id_confirmation_message"
                                     style="display:none"></div>
                            </div>
                            <div class="page-header">
                                <h4 class="title-tools">Authoring</h4>
                            </div>

                            <div class="row course-tools-author">

                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_3"
                                               href="http://localhost/chamilo/main/document/document.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_3"
                                                                            src="http://localhost/chamilo/main/img/icons/64/folder_document.png"
                                                                            alt="Documents" title="Documents"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_3" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_3"
                                               href="http://localhost/chamilo/main/document/document.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Documents</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_6"
                                               href="http://localhost/chamilo/main/exercise/exercise.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_6"
                                                                            src="http://localhost/chamilo/main/img/icons/64/quiz.png"
                                                                            alt="Tests" title="Tests"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_6" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_6"
                                               href="http://localhost/chamilo/main/exercise/exercise.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Tests</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_7"
                                               href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_7"
                                                                            src="http://localhost/chamilo/main/img/icons/64/valves.png"
                                                                            alt="Announcements"
                                                                            title="Announcements"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_7" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_7"
                                               href="http://localhost/chamilo/main/announcements/announcements.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Announcements</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="page-header">
                                <h4 class="title-tools">Interaction</h4>
                            </div>

                            <div class="row course-tools-interaction">

                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_2"
                                               href="http://localhost/chamilo/main/calendar/agenda.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_2"
                                                                            src="http://localhost/chamilo/main/img/icons/64/agenda.png"
                                                                            alt="Agenda" title="Agenda"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_2" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_2"
                                               href="http://localhost/chamilo/main/calendar/agenda.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Agenda</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_8"
                                               href="http://localhost/chamilo/main/forum/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_8"
                                                                            src="http://localhost/chamilo/main/img/icons/64/forum.png"
                                                                            alt="Forums" title="Forums"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_8" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_8"
                                               href="http://localhost/chamilo/main/forum/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Forums</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_9"
                                               href="http://localhost/chamilo/main/dropbox/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_9"
                                                                            src="http://localhost/chamilo/main/img/icons/64/dropbox.png"
                                                                            alt="Dropbox" title="Dropbox"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_9" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_9"
                                               href="http://localhost/chamilo/main/dropbox/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Dropbox</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_10"
                                               href="http://localhost/chamilo/main/user/user.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_10"
                                                                            src="http://localhost/chamilo/main/img/icons/64/members.png"
                                                                            alt="Users" title="Users"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_10" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_10"
                                               href="http://localhost/chamilo/main/user/user.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Users</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_11"
                                               href="http://localhost/chamilo/main/group/group.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_11"
                                                                            src="http://localhost/chamilo/main/img/icons/64/group.png"
                                                                            alt="Groups" title="Groups"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_11" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_11"
                                               href="http://localhost/chamilo/main/group/group.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Groups</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_12" class="" href="javascript: void(0);"
                                               onclick="javascript: window.open('http://localhost/chamilo/main/chat/chat.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0','window_chatAA',config='height='+600+', width='+825+', left=2, top=2, toolbar=no, menubar=no, scrollbars=yes, resizable=yes, location=no, directories=no, status=no')"
                                               target="_self"><img id="toolimage_12"
                                                                   src="http://localhost/chamilo/main/img/icons/64/chat.png"
                                                                   alt="Chat" title="Chat"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_12" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_12" class="" href="javascript: void(0);"
                                               onclick="javascript: window.open('http://localhost/chamilo/main/chat/chat.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0','window_chatAA',config='height='+600+', width='+825+', left=2, top=2, toolbar=no, menubar=no, scrollbars=yes, resizable=yes, location=no, directories=no, status=no')"
                                               target="_self">Chat</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_13"
                                               href="http://localhost/chamilo/main/work/work.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_13"
                                                                            src="http://localhost/chamilo/main/img/icons/64/works.png"
                                                                            alt="Assignments" title="Assignments"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_13" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_13"
                                               href="http://localhost/chamilo/main/work/work.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Assignments</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_14"
                                               href="http://localhost/chamilo/main/survey/survey_list.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_14"
                                                                            src="http://localhost/chamilo/main/img/icons/64/survey.png"
                                                                            alt="Surveys" title="Surveys"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_14" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_14"
                                               href="http://localhost/chamilo/main/survey/survey_list.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Surveys</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_15"
                                               href="http://localhost/chamilo/main/wiki/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_15"
                                                                            src="http://localhost/chamilo/main/img/icons/64/wiki.png"
                                                                            alt="Wiki" title="Wiki"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_15" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_15"
                                               href="http://localhost/chamilo/main/wiki/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Wiki</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_18"
                                               href="http://localhost/chamilo/main/notebook/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_18"
                                                                            src="http://localhost/chamilo/main/img/icons/64/notebook.png"
                                                                            alt="Notebook" title="Notebook"></a>
                                        </div>
                                        <div class="content">
                                            <a class="make_visible_and_invisible" href="javascript:void(0);"><em
                                                    id="linktool_18" class="fa fa-eye" title="Deactivate"></em></a>

                                            <a id="istooldesc_18"
                                               href="http://localhost/chamilo/main/notebook/index.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Notebook</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="page-header">
                                <h4 class="title-tools">Administration</h4>
                            </div>

                            <div class="row course-tools-administration">

                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_21"
                                               href="http://localhost/chamilo/main/blog/blog_admin.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_21"
                                                                            src="http://localhost/chamilo/main/img/icons/64/blog_admin.png"
                                                                            alt="Projects" title="Projects"></a>
                                        </div>
                                        <div class="content">


                                            <a id="istooldesc_21"
                                               href="http://localhost/chamilo/main/blog/blog_admin.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Projects</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_22"
                                               href="http://localhost/chamilo/main/tracking/courseLog.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_22"
                                                                            src="http://localhost/chamilo/main/img/icons/64/statistics.png"
                                                                            alt="Reporting" title="Reporting"></a>
                                        </div>
                                        <div class="content">


                                            <a id="istooldesc_22"
                                               href="http://localhost/chamilo/main/tracking/courseLog.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Reporting</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_23"
                                               href="http://localhost/chamilo/main/course_info/infocours.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_23"
                                                                            src="http://localhost/chamilo/main/img/icons/64/reference.png"
                                                                            alt="Settings" title="Settings"></a>
                                        </div>
                                        <div class="content">


                                            <a id="istooldesc_23"
                                               href="http://localhost/chamilo/main/course_info/infocours.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Settings</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-4 col-md-3">
                                    <div class="course-tool">
                                        <div class="big_icon">
                                            <a id="tooldesc_24"
                                               href="http://localhost/chamilo/main/course_info/maintenance.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self"><img id="toolimage_24"
                                                                            src="http://localhost/chamilo/main/img/icons/64/backup.png"
                                                                            alt="Backup" title="Backup"></a>
                                        </div>
                                        <div class="content">


                                            <a id="istooldesc_24"
                                               href="http://localhost/chamilo/main/course_info/maintenance.php?cidReq=AA&amp;id_session=0&amp;gradebook=0&amp;origin=&amp;gidReq=0"
                                               class="" target="_self">Backup</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </section>
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
                        <div class="session-teachers">

                        </div>
                        <div class="teachers">
                            Trainer : <a class="ajax"
                                         href="http://localhost/chamilo/main/inc/ajax/user_manager.ajax.php?a=get_user_popup&amp;user_id=1">Doe
                            John (admin)</a>
                        </div>
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

<div class="modal fade" id="global-modal" tabindex="-1" role="dialog" aria-labelledby="global-modal-title"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
                <h4 class="modal-title" id="global-modal-title">&nbsp;</h4>
            </div>
            <div class="modal-body" id="global-modal-body">
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="expand-image-modal" tabindex="-1" role="dialog" aria-labelledby="expand-image-modal-title"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="expand-image-modal-title">&nbsp;</h4>
            </div>
            <div class="modal-body">
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="confirm-delete-title"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="confirm-delete-title">Delete</h4>
            </div>

            <div class="modal-body">
                <p class="debug-url"></p>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
                <a id="delete_item" class="btn btn-danger btn-ok">Delete</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>

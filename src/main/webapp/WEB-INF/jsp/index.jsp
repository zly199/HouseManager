<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8" />

    <title>房屋中介管理系统</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="<%=path %>/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="<%=path %>/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL STYLES -->

    <link href="<%=path %>/media/css/jquery.gritter.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

    <link href="<%=path %>/media/css/fullcalendar.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path %>/media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen"/>

    <link href="<%=path %>/media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>

    <!-- END PAGE LEVEL STYLES -->

    <link rel="shortcut icon" href="<%=path %>/media/image/favicon.ico" />

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="page-header-fixed">

<!-- BEGIN HEADER -->

<div class="header navbar navbar-inverse navbar-fixed-top">

    <!-- BEGIN TOP NAVIGATION BAR -->

    <div class="navbar-inner">

        <div class="container-fluid">

            <!-- logo标志 -->

            <a class="brand" href="#">

                <img src="<%=path %>/media/image/logo.png" alt="logo"/>

            </a>

            <!-- END LOGO -->

            <!-- BEGIN RESPONSIVE MENU TOGGLER -->

            <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

                <img src="<%=path %>/media/image/menu-toggler.png" alt="" />

            </a>

            <!-- END RESPONSIVE MENU TOGGLER -->

            <!-- BEGIN TOP NAVIGATION MENU -->

            <ul class="nav pull-right">


                <!-- 开始右边用户信息以及图像-->

                <li class="dropdown user">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                        <img alt="" src="<%=path %>/media/image/avatar1_small.jpg" />

                        <span class="username">${user.userName}</span>

                        <i class="icon-angle-down"></i>

                    </a>

                    <ul class="dropdown-menu">

                        <li><a href="#"><i class="icon-user"></i> 个人信息</a></li>
                        <li><a href="#"><i class="icon-key"></i> Log Out</a></li>

                    </ul>

                </li>

                <!-- END USER LOGIN DROPDOWN -->

            </ul>

            <!-- END TOP NAVIGATION MENU -->

        </div>

    </div>

    <!-- END TOP NAVIGATION BAR -->

</div>

<!-- END HEADER -->
<div class="copyrights">Collect from <a href="http://www.jxufe.145com/" >房屋中介</a></div>

<!-- BEGIN CONTAINER -->

<div class="page-container">

    <!-- BEGIN SIDEBAR -->

    <div class="page-sidebar nav-collapse collapse">

        <!-- BEGIN SIDEBAR MENU -->

        <ul class="page-sidebar-menu">

            <li>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

                <div class="sidebar-toggler hidden-phone"></div>

                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

            </li>
            <!--去除搜素框-->
            <!--<li>

                 BEGIN RESPONSIVE QUICK SEARCH FORM

                <form class="sidebar-search">

                    <div class="input-box">

                        <a href="javascript:;" class="remove"></a>

                        <input type="text" placeholder="Search..." />

                        <input type="button" class="submit" value=" " />

                    </div>

                </form>
<%--END RESPONSIVE QUICK SEARCH FORM--%>

<%--</li>--%>
            </li>-->

            <li class="start active ">

                <a href="#">

                    <i class="icon-home"></i>

                    <span class="title">主页</span>

                    <span class="selected"></span>

                </a>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-user"></i>

                    <span class="title">用户管理</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            用户查询</a>

                    </li>

                    <li >

                        <a href="#">

                            添加用户</a>

                    </li>
                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-bookmark-empty"></i>

                    <span class="title">房源管理</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            房源查询</a>

                    </li>

                    <li >

                        <a href="#">

                            增加房源</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-table"></i>

                    <span class="title">房源跟进</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            跟进查询</a>

                    </li>

                    <li >

                        <a href="#">

                            登记跟进记录</a>

                    </li>
                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-th-large"></i>

                    <span class="title">合同管理</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">
                            合同查询</a>

                    </li>

                    <li >

                        <a href="#">
                            增加合同</a>

                    </li>
                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-gift"></i>

                    <span class="title">销售管理</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            销售查询</a>

                    </li>

                    <li >

                        <a href="#">

                            增加销售信息</a>

                    </li>
                </ul>

            </li>

            <li class="">

                <a class="active" href="javascript:;">

                    <i class="icon-sitemap"></i>

                    <span class="title">新闻管理</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">
                    <li >

                        <a href="#">

                            新闻查询</a>

                    </li>
                    <li >

                        <a href="#">

                            增加新闻</a>

                    </li>

                </ul>

            </li>

            <li class="">

                <a href="javascript:;">

                    <i class="icon-folder-open"></i>

                    <span class="title">综合统计</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li>

                        <a href="javascript:;">

                            <i class="icon-folder-open"></i>

                            统计房源

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">
                            <li><a href="#"><i class="icon-globe"></i>统计求租房源 </a></li>

                            <li><a href="#"><i class="icon-globe"></i>  统计求购房源</a></li>

                            <li><a href="#"><i class="icon-globe"></i> 统计出租房源</a></li>

                            <li><a href="#"><i class="icon-globe"></i> 统计出售房源 </a></li>



                        </ul>

                    </li>

                    <li>

                        <a href="javascript:;">

                            <i class="icon-folder-open"></i>

                            统计客源

                            <span class="arrow"></span>

                        </a>

                        <ul class="sub-menu">

                            <li><a href="#"><i class="icon-globe"></i>统计出租人员</a></li>

                            <li><a href="#"><i class="icon-globe"></i>统计出售人员</a></li>

                            <li><a href="#"><i class="icon-globe"></i>统计求租人员</a></li>

                            <li><a href="#"><i class="icon-globe"></i>统计求售人员</a></li>

                        </ul>

                    </li>

                    <li>

                        <a href="#">

                            <i class="icon-folder-open"></i>

                            统计销售额
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">

                            <li><a href="#"><i class="icon-globe"></i>统计出租销售额</a></li>
                            <li><a href="#"><i class="icon-globe"></i>统计出售销售额</a></li>

                            <li><a href="#"><i class="icon-globe"></i>统计求租销售额</a></li>

                            <li><a href="#"><i class="icon-globe"></i>统计求售销售额</a></li>

                        </ul>

                    </li>

                </ul>

            </li>
            <li class="">

                <a href="javascript:;">

                    <i class="icon-th"></i>

                    <span class="title">客源跟进</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            查询客源跟进信息</a>

                    </li>

                    <li >

                        <a href="#">

                            增加客源跟进信息</a>

                    </li>
                </ul>

            </li>
            <c:if test="${parameter.userInf>0}">
            <li class="">

                <a href="javascript:;">

                    <i class="icon-user"></i>

                    <span class="title">员工信息</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            查询员工信息</a>

                    </li>

                    <li >

                        <a href="#">

                            增加员工信息</a>

                    </li>
                </ul>

            </li>
            </c:if>
            <li class="">

                <a href="javascript:;">

                    <i class="icon-map-marker"></i>

                    <span class="title">Maps</span>

                    <span class="arrow "></span>

                </a>

                <ul class="sub-menu">

                    <li >

                        <a href="#">

                            房源地图查询</a>

                    </li>

                    <li >

                        <a href="#">

                            学区房地图查询</a>

                    </li>

                </ul>

            </li>
        </ul>

        <!-- END SIDEBAR MENU -->

    </div>

    <!-- END SIDEBAR -->

    <!-- BEGIN PAGE -->

    <div class="page-content">

        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!--<div id="portlet-config" class="modal hide">

            <div class="modal-header">

                <button data-dismiss="modal" class="close" type="button"></button>

                <h3>Widget Settings</h3>

            </div>

            <div class="modal-body">

                Widget settings form goes here

            </div>

        </div>-->

        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

        <!-- BEGIN PAGE CONTAINER-->

        <div class="container-fluid">

            <!-- BEGIN PAGE HEADER-->

            <div class="row-fluid">

                <div class="span12">

                    <!-- BEGIN STYLE CUSTOMIZER -->

                    <div class="color-panel hidden-phone">

                        <div class="color-mode-icons icon-color"></div>

                        <div class="color-mode-icons icon-color-close"></div>

                        <div class="color-mode">

                            <p>THEME COLOR</p>

                            <ul class="inline">

                                <li class="color-black current color-default" data-style="default"></li>

                                <li class="color-blue" data-style="blue"></li>

                                <li class="color-brown" data-style="brown"></li>

                                <li class="color-purple" data-style="purple"></li>

                                <li class="color-grey" data-style="grey"></li>

                                <li class="color-white color-light" data-style="light"></li>

                            </ul>

                            <label>

                                <span>Layout</span>

                                <select class="layout-option m-wrap small">

                                    <option value="fluid" selected>Fluid</option>

                                    <option value="boxed">Boxed</option>

                                </select>

                            </label>

                            <label>

                                <span>Header</span>

                                <select class="header-option m-wrap small">

                                    <option value="fixed" selected>Fixed</option>

                                    <option value="default">Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Sidebar</span>

                                <select class="sidebar-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                            <label>

                                <span>Footer</span>

                                <select class="footer-option m-wrap small">

                                    <option value="fixed">Fixed</option>

                                    <option value="default" selected>Default</option>

                                </select>

                            </label>

                        </div>

                    </div>

                    <!-- END BEGIN STYLE CUSTOMIZER -->

                    <!-- BEGIN PAGE TITLE & BREADCRUMB-->

                    <h3 class="page-title">
                        欢迎来到房屋中介管理系统 您上次登陆的ip为：${user.userLastIp}
                    </h3>

                    <ul class="breadcrumb">

                        <li>

                            <i class="icon-home"></i>

                            <a href="index">Home</a>

                            <i class="icon-angle-right"></i>

                        </li>

                        <li><a href="#">主页</a></li>
                    </ul>

                    <!-- END PAGE TITLE & BREADCRUMB-->

                </div>

            </div>

            <!-- END PAGE HEADER-->
            <div class="span6">

                <!-- BEGIN PORTLET-->

                <div class="portlet">

                    <div class="portlet-title line">

                        <div class="caption"><i class="icon-comments"></i>Chats</div>

                        <div class="tools">

                            <a href="" class="collapse"></a>

                            <a href="#" data-toggle="modal" class="config"></a>

                            <a href="" class="reload"></a>

                            <a href="" class="remove"></a>

                        </div>

                    </div>

                    <div class="portlet-body" id="chats">

                        <div class="scroller" data-height="435px" data-always-visible="1" data-rail-visible1="1">

                            <ul class="chats">

                                <li class="in">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar1.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">${user.userName}</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="out">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar2.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">Lisa Wong</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="in">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar1.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">${user.userName}</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="out">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar3.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">Richard Doe</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="in">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar3.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">Richard Doe</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="out">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar1.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">${user.userName}</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="in">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar3.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">Richard Doe</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit,

													sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.

													</span>

                                    </div>

                                </li>

                                <li class="out">

                                    <img class="avatar" alt="" src="<%=path %>/media/image/avatar1.jpg" />

                                    <div class="message">

                                        <span class="arrow"></span>

                                        <a href="#" class="name">${user.userName}</a>

                                        <span class="datetime">at Jul 25, 2012 11:09</span>

                                        <span class="body">

													Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. sed diam nonummy nibh euismod tincidunt ut laoreet.

													</span>

                                    </div>

                                </li>

                            </ul>

                        </div>

                        <div class="chat-form">

                            <div class="input-cont">

                                <input class="m-wrap" type="text" placeholder="Type a message here..." />

                            </div>

                            <div class="btn-cont">

                                <span class="arrow"></span>

                                <a href="" class="btn blue icn-only"><i class="icon-ok icon-white"></i></a>

                            </div>

                        </div>

                    </div>

                </div>

                <!-- END PORTLET-->

            </div>

        </div>

    </div>

</div>

<!-- END PAGE CONTAINER-->



<!-- END PAGE -->



<!-- END CONTAINER -->

<!-- BEGIN FOOTER -->

<div class="footer">

    <div class="footer-inner">

        <div style="text-align: center;">2017 &copy; 技术支持 <a href="http://www.jxufe.145com/" title="软件145" target="_blank">软件145</a> More IFORMATION <a href="http://www.jxufe.145com/" target="_blank" title="房屋中介">房屋中介</a></div>

    </div>

    <div class="footer-tools">

			<span class="go-top">

			<i class="icon-angle-up"></i>

			</span>

    </div>

</div>

<!-- END FOOTER -->

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

<!-- BEGIN CORE PLUGINS -->

<script src="<%=path %>/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

<script src="<%=path %>/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/bootstrap.min.js" type="text/javascript"></script>

<!--[if lt IE 9]>

<script src="media/js/excanvas.min.js"></script>

<script src="media/js/respond.min.js"></script>

<![endif]-->

<script src="<%=path %>/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL PLUGINS -->

<script src="<%=path %>/media/js/jquery.vmap.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.russia.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.world.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.europe.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.germany.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.usa.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.flot.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.flot.resize.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.pulsate.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/date.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/daterangepicker.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.gritter.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/fullcalendar.min.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/jquery.sparkline.min.js" type="text/javascript"></script>

<!-- END PAGE LEVEL PLUGINS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=path %>/media/js/app.js" type="text/javascript"></script>

<script src="<%=path %>/media/js/index.js" type="text/javascript"></script>

<!-- END PAGE LEVEL SCRIPTS -->

<script>

    jQuery(document).ready(function() {

        App.init(); // initlayout and core plugins

        Index.init();

        Index.initJQVMAP(); // init index page's custom scripts

        Index.initCalendar(); // init index page's custom scripts

        Index.initCharts(); // init index page's custom scripts

        Index.initChat();

        Index.initMiniCharts();

        Index.initDashboardDaterange();

        Index.initIntro();

    });

</script>
<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>
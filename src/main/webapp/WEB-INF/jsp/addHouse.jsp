
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" class="no-js">
	<!--<![endif]-->

	<!-- BEGIN HEAD -->

	<head>

		<meta charset="utf-8" />

		<title>房屋中介管理系统</title>

		<meta content="width=device-width, initial-scale=1.0" name="viewport" />

		<meta content="" name="description" />

		<meta content="" name="author" />

		<!-- BEGIN GLOBAL MANDATORY STYLES -->

		<link href="<%=path%>/media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/media/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/media/css/zq.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="<%=path%>/media/css/uniform.default.css" rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->

		<!-- BEGIN PAGE LEVEL STYLES -->

		<link href="<%=path%>/media/css/jquery.gritter.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/fullcalendar.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen" />

		<link href="<%=path%>/media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />

		<!--<link href="media/css/data" rel="stylesheet" type="text/css" />-->
		<!--
		作者：offline
		时间：2017-04-21
		描述：日历的css样式
	-->
		<link href="<%=path%>/media/css/datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/media/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />

		<!-- END PAGE LEVEL STYLES -->

		<link rel="shortcut icon" href="<%=path%>/media/image/favicon.ico" />

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

					<a class="brand" href="index.html">

						<img src="<%=path%>/media/image/logo.png" alt="logo" />

					</a>

					<!-- END LOGO -->

					<!-- BEGIN RESPONSIVE MENU TOGGLER -->

					<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

						<img src="<%=path%>/media/image/menu-toggler.png" alt="" />

					</a>

					<!-- END RESPONSIVE MENU TOGGLER -->

					<!-- BEGIN TOP NAVIGATION MENU -->

					<ul class="nav pull-right">

						<!-- 开始右边用户信息以及图像-->

						<li class="dropdown user">

							<a href="#" class="dropdown-toggle" data-toggle="dropdown">

								<img alt="" src="<%=path%>/media/image/avatar1_small.jpg" />

								<span class="username">Bob Nilson</span>

								<i class="icon-angle-down"></i>

							</a>

							<ul class="dropdown-menu">

								<li>
									<a href="#"><i class="icon-user"></i> 个人信息</a>
								</li>
								<li>
									<a href="login.html"><i class="icon-key"></i> Log Out</a>
								</li>

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
		<div class="copyrights">Collect from
			<a href="http://www.jxufe.145com/">房屋中介</a>
		</div>

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

					<!-- END RESPONSIVE QUICK SEARCH FORM -->

					<!--</li>-->

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

							<li>

								<a href="userselect.html">

									用户查询</a>

							</li>

							<li>

								<a href="addUser.html">

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

							<li>

								<a href="#">

									房源查询</a>

							</li>

							<li>

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

							<li>

								<a href="#">

									跟进查询</a>

							</li>

							<li>

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

							<li>

								<a href="#">
									合同查询</a>

							</li>

							<li>

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

							<li>

								<a href="#">

									销售查询</a>

							</li>

							<li>

								<a href="#">

									增加销售信息</a>

							</li>
						</ul>

					</li>

					<li>

						<a class="active" href="javascript:;">

							<i class="icon-sitemap"></i>

							<span class="title">新闻管理</span>

							<span class="arrow "></span>

						</a>

						<ul class="sub-menu">
							<li>

								<a href="#">

									新闻查询</a>

							</li>
							<li>

								<a href="#">

									增加新闻</a>

							</li>

						</ul>

					</li>

					<li>

						<a href="javascript:;">

							<i class="icon-folder-open"></i>

							<span class="title">综合统计</span>

							<span class="arrow "></span>

						</a>

						<ul class="sub-menu">

							<li>

								<a href="javascript:;">

									<i class="icon-folder-open"></i> 统计房源

									<span class="arrow"></span>

								</a>

								<ul class="sub-menu">
									<li>
										<a href="#"><i class="icon-globe"></i>统计求租房源 </a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i> 统计求购房源</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i> 统计出租房源</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i> 统计出售房源 </a>
									</li>

								</ul>

							</li>

							<li>

								<a href="javascript:;">

									<i class="icon-folder-open"></i> 统计客源

									<span class="arrow"></span>

								</a>

								<ul class="sub-menu">

									<li>
										<a href="#"><i class="icon-globe"></i>统计出租人员</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i>统计出售人员</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i>统计求租人员</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i>统计求售人员</a>
									</li>

								</ul>

							</li>

							<li>

								<a href="#">

									<i class="icon-folder-open"></i> 统计销售额
									<span class="arrow"></span>
								</a>
								<ul class="sub-menu">

									<li>
										<a href="#"><i class="icon-globe"></i>统计出租销售额</a>
									</li>
									<li>
										<a href="#"><i class="icon-globe"></i>统计出售销售额</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i>统计求租销售额</a>
									</li>

									<li>
										<a href="#"><i class="icon-globe"></i>统计求售销售额</a>
									</li>

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

							<li>

								<a href="table_basic.html">

									查询客源跟进信息</a>

							</li>

							<li>

								<a href="table_responsive.html">

									增加客源跟进信息</a>

							</li>
						</ul>

					</li>
					<li class="">

						<a href="javascript:;">

							<i class="icon-map-marker"></i>

							<span class="title">Maps</span>

							<span class="arrow "></span>

						</a>

						<ul class="sub-menu">

							<li>

								<a href="#">

									房源地图查询</a>

							</li>

							<li>

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

							欢迎来到房屋中介管理系统

						</h3>

							<ul class="breadcrumb">

								<li>

									<i class="icon-home"></i>

									<a href="../index">Home</a>

									<i class="icon-angle-right"></i>

								</li>

								<li>
									<a href="#">添加房源</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->
					<!--<span class="zq">
					<h4>
					<form>
					用户名：<input type="text" name="username">
					<span class="zq1">
					用户名：<input type="text" name="username">
					</span>
					</br>
					 用户名：<input type="text" name="username">
					<span class="zq1">
					用户名：<input type="text" name="username">
					</span>
					</br>
					 <button class="zq2">提交</button>
					 <button class="zq3">取消</button>
					</form>
					 </h4>
					
				</div>-->
					<form action="userselect.html" method="post" class="definewidth m20">
						<table class="table table-bordered table-hover definewidth m10">
							<tr class="size">
								<td width="10%">房源房主ID</td>
								<td><input type="text" name="house_host_id" /></td>
								<td>房源登记时间</td>
								<td>
									<div class="input-append date form_datetime">
										<input style="height: 24px;" size="16" type="text" value="" readonly>
										<span class="add-on"><i class="icon-th"></i></span>
									</div>
								</td>
							</tr>
							<tr class="size">
								<td>房源状态</td>
								<td>
									<input type="radio" name="optionsRadios3" value="出租" />出租 &nbsp; &nbsp;
									<input type="radio" name="optionsRadios3" value="出售" checked />出售
								</td>

								<td>物业信息ID</td>
								<td>
							<input type="text" name="house_property_id" />
								</td>
							</tr>
							<tr class="size">
								<td>房源类型</td>
								<td><input type="text" name="house_type" /></td>
								<td>房源面积</td>
								<td><input type="text" name="house_acreage" /></td>
							</tr>
							<tr class="size">
								<td>楼层</td>
								<td><input type="text" name="house_floor" /></td>
								 <td>房源顾问ID</td>
								<td><input type="text" name="house_user_id" /></td>
							</tr>
							<tr class="size">
								<td>小区ID</td>
								<td><input type="text" name="house_village＿id" /></td>
								<td>学区ID</td>
								<td><input type="text" name="house_school_id" /></td>
							</tr>
							<tr class="size">
								<td>物业类型</td>
								<td><input type="text" name="house_property_type" /></td>
								<td>物业用途</td>
								<td><input type="text" name="house_property_use" /></td>
							</tr>
							<tr class="size"> 
								<td>房源房间数</td>
								<td><input type="text" name="house_room" /></td>
								<td class="tableleft">操作</td>
									<td>
										<!--<button type="submit" class="button blue" type="button">保存</button> &nbsp;&nbsp;<button type="button" class="button yellow" name="backid" id="backid">返回列表</button>-->
										<div class="submit-btn">
											<a href="#" class="btn green">Save </a>
											<a href="userselect.html" class="btn">Cancel</a>
										</div>
									</td>
							</tr>
						</table>
					</form>

				</div>

			</div>

		</div>

		<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->

		</div>

		<!-- END CONTAINER -->

		<!-- BEGIN FOOTER -->

		<div class="footer">

			<div class="footer-inner">

				<div style="text-align: center;">2017 &copy; 技术支持
					<a href="http://www.jxufe.145com/" title="软件145" target="_blank">软件145</a> More IFORMATION
					<a href="http://www.jxufe.145com/" target="_blank" title="房屋中介">房屋中介</a>
				</div>

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
		<!--<script src="media/js/jquery.js" type="text/javascript"></script>-->
		<script src="<%=path%>/media/js/jquery.uniform.min.js" type="text/javascript"></script>
		<script src="<%=path%>/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="<%=path%>/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="<%=path%>/media/js/bootstrap.js" type="text/javascript"></script>
		<!--[if lt IE 9]>

	<script src="<%=path%>/media/js/excanvas.min.js"></script>

	<script src="<%=path%>/media/js/respond.min.js"></script>

	<![endif]-->

		<script src="<%=path%>/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.blockui.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.cookie.min.js" type="text/javascript"></script>

		<!-- END CORE PLUGINS -->

		<!-- BEGIN PAGE LEVEL PLUGINS -->

		<script src="<%=path%>/media/js/jquery.vmap.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.russia.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.world.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.europe.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.germany.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.usa.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.flot.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.flot.resize.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.pulsate.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/date.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/daterangepicker.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.gritter.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/fullcalendar.min.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/jquery.sparkline.min.js" type="text/javascript"></script>
		<!--
        	作者：zq
        	时间：2017-04-21
        	描述：日历的js
        -->
		<script src="<%=path%>/media/js/bootstrap-datepicker.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL PLUGINS -->

		<!-- BEGIN PAGE LEVEL SCRIPTS -->

		<script src="<%=path%>/media/js/app.js" type="text/javascript"></script>

		<script src="<%=path%>/media/js/index.js" type="text/javascript"></script>

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
		<!--<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="userselect.html";
		 });

    });
</script>-->
		<!--
	作者：zq
	时间：2017-04-21
	描述：日历的js
-->
		<script type="text/javascript">
			$(".form_datetime").datetimepicker({
				format: "dd MM yyyy",
				startView: 2,
				minView: 2,
				autoclose: true,
				todayBtn: true,
				pickerPosition: "bottom-left"
			});
		</script>
	</body>

	<!-- END BODY -->

</html>
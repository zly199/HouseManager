

<!DOCTYPE html>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!-->
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

		<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
		
		<link href="media/css/bootstrap.css" rel="stylesheet" type="text/css" />
		
		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />

		<!--
		作者：offline
		时间：2017-04-21
		描述：日历的css样式
	-->
		<link href="media/css/datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="media/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />

		<!-- END PAGE LEVEL STYLES -->

		<link rel="shortcut icon" href="media/image/favicon.ico" />

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

					<a class="brand" href="back/user/index">

						<img src="media/image/logo.png" alt="logo" />

					</a>

					<!-- END LOGO -->

					<!-- BEGIN RESPONSIVE MENU TOGGLER -->

					<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">

						<img src="media/image/menu-toggler.png" alt="" />

					</a>

					<!-- END RESPONSIVE MENU TOGGLER -->

					<!-- BEGIN TOP NAVIGATION MENU -->

					<ul class="nav pull-right">

						<!-- 开始右边用户信息以及图像-->

						<li class="dropdown user">

							<a href="#" class="dropdown-toggle" data-toggle="dropdown">

								<img alt="" src="media/image/avatar1_small.jpg" />

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
		<!-- 开始内容模块 -->

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
									出租合同查询</a>

							</li>
							<li>

								<a href="#">
									出售合同查询</a>

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

									<a href="back/user/index">Home</a>

									<i class="icon-angle-right"></i>

								</li>

								<li>
									<a href="addHouse.html">添加房源</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>
					<form action="userselect.html" method="post" class="definewidth m20">
						<div style="width: 100%;">
							<table class="table  table-hover definewidth m10" style="width: 950px;">
								<tr class="size">
									<td>房源编号</td>
									<td><input style="width: 88px;" type="text" name="username" /></td>
								</tr>
								<tr class="size2">
									<td>交易</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>出售</option>
											<option value="">出租</option>
											<option value="">租售</option>
										</select>
									</td>
									<td>用途</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>住宅</option>
											<option value="">商住</option>
											<option value="">商铺</option>
											<option value="">网店</option>
											<option value="">写字楼</option>
											<option value="">厂房</option>
											<option value="">写厂</option>
											<option value="">铺厂</option>
											<option value="">仓库</option>
											<option value="">地皮</option>
											<option value="">车位</option>
											<option value="">其他</option>
										</select>
									</td>
								</tr>
								<tr class="size2">
									<td>房源地址</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>城区</option>
											<option value="">宝山区</option>
											<option value="">常宁区</option>
											<option value="">崇明县</option>
											<option value="">奉贤区</option>
											<option value="">虹口区</option>
											<option value="">黄浦区</option>
											<option value="">嘉定区</option>
											<option value="">金山区</option>
											<option value="">静安区</option>
											<option value="">闵行区</option>
											<option value="">浦东新区</option>
											<option value="">普陀区</option>
											<option value="">青浦区</option>
											<option value="">松江区</option>
											<option value="">徐汇区</option>
											<option value="">杨浦区</option>
										</select>
										<select style="width: 100px;" id="point" disabled="disabled">
											<option value="" selected>商圈</option>
										</select>
										<input type="text" name="" / style="width: 88px;" placeholder="楼盘字典" data-toggle="tooltip"  title="此空不能为空" id="point">
										<input type="text" name="" / style="width: 88px;" placeholder="栋座" data-toggle="tooltip"  title="此空不能为空" id="point">
										<input type="text" name="" / style="width: 88px;" placeholder="单元" data-toggle="tooltip"  title="此空不能为空" id="point">
										<input type="text" name="" / style="width: 88px;" placeholder="房号" data-toggle="tooltip"  title="此空不能为空" id="point">
										<input type="text" name="" / style="width: 88px;" placeholder="楼层" data-toggle="tooltip"  title="此空不能为空" id="point">
										<input type="text" name="" / style="width: 88px;" placeholder="总层" data-toggle="tooltip"  title="此空不能为空" id="point">
										
									</td>
								</tr>
								<tr class="size2">
									<td>面积</td>
									<td>
										<input id="point" style="width: 88px;" type="text" name="" / data-toggle="tooltip"  title="此空不能为空 ，最多保留两位小数">平米
								         (套内 <input id="point" style="width: 38px;" type="text" name="" / data-toggle="tooltip"  title="此空不能为空，最多保留两位小数">平米)
									</td>
									<td>类型</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>请选择</option>
											<option value="">多层</option>
											<option value="">高层</option>
											<option value="">小高层</option>
											<option value="">多层复式</option>
											<option value="">高层复式</option>
											<option value="">多层越式</option>
											<option value="">裙楼</option>
											<option value="">高层越式</option>
											<option value="">独立别墅</option>
											<option value="">联体别墅</option>
											<option value="">双拼别墅</option>
											<option value="">四合院</option>
										</select>
									</td>
								</tr>
								<tr class="size2">
									<td>房型</td>
									<td>
										<select style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>房</option>
											<option value="">0房</option>
											<option value="">1房</option>
											<option value="">2房</option>
											<option value="">3房</option>
											<option value="">4房</option>
											<option value="">5房</option>
											<option value="">6房</option>
											<option value="">7房</option>
											<option value="">8房</option>
											<option value="">9房</option>
											<option value="">*</option>
											<option value="">1-2房</option>
											<option value="">2-3房</option>
											<option value="">3-4房</option>
											<option value="">4-5房</option>
											<option value="">6-9房</option>
										</select>
										<select style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>厅</option>
											<option value="">0厅</option>
											<option value="">1厅</option>
											<option value="">2厅</option>
											<option value="">3厅</option>
											<option value="">4厅</option>
											<option value="">5厅</option>
											<option value="">6厅</option>
										</select>
										<select style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>卫</option>
											<option value="">0卫</option>
											<option value="">1卫</option>
											<option value="">2卫</option>
											<option value="">3卫</option>
											<option value="">4卫</option>
											<option value="">5卫</option>
											<option value="">6卫</option>
										</select>
										<select style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>阳</option>
											<option value="">0阳台</option>
											<option value="">1阳台</option>
											<option value="">2阳台</option>
											<option value="">3阳台</option>
											<option value="">4阳台</option>
											<option value="">5阳台</option>
											<option value="">6阳台</option>
										</select>
									</td>
									<td>装修</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>请选择</option>
											<option value="">毛坯</option>
											<option value="">清水</option>
											<option value="">简装</option>
											<option value="">中装</option>
											<option value="">精装</option>
											<option value="">豪装</option>
										</select>
									</td>
								</tr>
								<tr class="size2">
									<td>朝向</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>请选择</option>
											<option value="">南北</option>
											<option value="">东西</option>
											<option value="">南</option>
											<option value="">北</option>
											<option value="">东</option>
											<option value="">西</option>
											<option value="">东南</option>
											<option value="">西南</option>
											<option value="">东北</option>
											<option value="">西北</option>
										</select>
									</td>
								</tr>
								<tr class="size2">
									<td>状态</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>有效</option>
											<option value="">预定</option>
											<option value="">已购</option>
											<option value="">已租</option>
											<option value="">我购</option>
											<option value="">我租</option>
											<option value="">暂缓</option>
											<option value="">未知</option>
											<option value="">无效</option>
										</select>
									</td>
									<td>售价</td>
									<td>
										<input type="text" placeholder="0" value=" " id="point" style="width: 38px;" data-toggle="tooltip"  title="此空不能为空"/>
										<select style="width: 50px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>万元</option>
											<option value="">万美</option>
											<option value="">万港</option>
											<option value="">万台</option>
											<option value="">万欧</option>
											<option value="">万日</option>
											<option value="">万韩</option>
										</select>
										<input type="text" placeholder="0" value=" " id="point" style="width: 38px;"/ data-toggle="tooltip"  title="此空不能为空">元/m^2
									</td>
								</tr>
								<tr>
									<td class="size2">属性</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>公盘</option>
											<option value="">私盘</option>
											<option value="">封盘</option>
											<option value="">特盘</option>
										</select>
									</td>
									<td class="size">售底价</td>
									<td>
		                               <input type="text" name=""  value=""  placeholder="0" style="width:88px ;"/>
									</td>
								</tr>
								<tr class="size">
									<td >
										购买时间
									</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">不满两年</option>
											<option value="">满两年</option>
											<option value="">满五年</option>
										</select>
										<input type="date" name="" id="" value="" style="width: 120px;"/>
									</td>
									<td>
										租价
									</td>
									<td>
										<input type="text" name="" id="" value=""  style="width:38px ;" disabled="disabled"/>
										<select style="width: 50px;" disabled="disabled">
											<option value="" selected>元/月</option>
										</select>
										<input type="text" name="" id="" value="" style="width:38px ;" disabled="disabled"/>元/m^2/月
									</td>
								</tr>
								<tr class="size">
									<td>唯一住房</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="" >是</option>
											<option value="" >否</option>
										</select>
									</td>
									<td>租底价</td>
									<td>
										<input type="text" name="" id="" value="" placeholder="0" style="width: 38px;"/>
									</td>
								</tr>
								<tr class="size">
									<td>委托日期</td>
									<td>
										<input type="date" name="" id="" value="" style="width: 120px;" id="point" data-toggle="tooltip"  title="此空不能为空"/>
									</td>
									<td>有贷款</td>
									<td>
										<select style="width: 70px;">
											<option value="" selected>请选择</option>
											<option value="" >是</option>
											<option value="" >否</option>
										</select>
										<input type="text" name="" id="" value="" style="width:48px ;"/>万元
									</td>
								</tr>
								<tr class="size2">
									<td>委托方式</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>请选择</option>
											<option value="">独家</option>
											<option value="">A-独家</option>
											<option value="">B-签约</option>
											<option value="">C-未签</option>
											<option value="">X-限时</option>
											<option value="">X-托管</option>
											<option value="">X-收购</option>
										</select>
									</td>
									<td>来源</td>
									<td>
										<select style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
											<option value="" selected>请选择</option>
											<option value="">来电</option>
											<option value="">来访</option>
											<option value="">中介</option>
											<option value="">朋友</option>
											<option value="">广告</option>
											<option value="">扫街</option>
											<option value="">网络</option>
											<option value="">搜房</option>
											<option value="">口碑</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>委托编号</td>
									<td>
									<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
									<td>交房日期</td>
									<td>
										<input type="date" name="" id="" value="" style="width: 120px;"/>
									</td>
								</tr>
								<tr class="size">
									<td>备案号</td>
									<td>
									<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
								</tr>
								<tr class="size">
									<td>标签</td>
									<td>
									<input type="checkbox" name="" id="" value="" />优质房
									<input type="checkbox" name="" id="" value="" />聚焦房
									<input type="checkbox" name="" id="" value="" />速销房
									</td>
								</tr>
								<tr class="size">
									<td>备注</td>
									<td>
										<textarea rows="5" cols="100" style="width:350px ;"></textarea>
									</td>
								</tr>
								<tr class="size">
									<td>建房年代</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>2017</option>
											<option value="">2016</option>
											<option value="">2015</option>
											<option value="">2014</option>
											<option value="">2013</option>
											<option value="">2012</option>
											<option value="">2011</option>
											<option value="">2010</option>
											<option value="">2009</option>
											<option value="">2008</option>
										</select>
									</td>
									<td>现状</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>空房</option>
											<option value="">业主住</option>
											<option value="">租客住</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>产权</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">商品房</option>
											<option value="">房改房</option>
											<option value="">经济适用房</option>
											<option value="">集体房</option>
											<option value="">军产房</option>
										</select>
									</td>
									<td>配套</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">地砖</option>
											<option value="">木地砖</option>
											<option value="">地毯</option>
											<option value="">地胶</option>
											<option value="">水泥地</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>包税费</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">各付</option>
											<option value="">实得</option>
											<option value="">净得</option>
											<option value="">包税</option>
										</select>
									</td>
									<td>家具</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">无</option>
											<option value="">少量</option>
											<option value="">部分</option>
											<option value="">配套</option>
											<option value="">全新</option>
											<option value="">全齐</option>
											<option value="">可配</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>原购价</td>
									<td>
										<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
									<td>家电</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">无</option>
											<option value="">少量</option>
											<option value="">部分</option>
											<option value="">配套</option>
											<option value="">全新</option>
											<option value="">全齐</option>
											<option value="">可配</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>管理费</td>
									<td>
										<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
									<td>付佣</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">商议</option>
											<option value="">给全佣</option>
											<option value="">九折佣</option>
											<option value="">八折佣</option>
											<option value="">七折佣</option>
											<option value="">六折佣</option>
											<option value="">五折佣</option>
											<option value="">四折佣</option>
											<option value="">三折佣</option>
											<option value="">不给佣</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>车位</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">自行车</option>
											<option value="">汽车</option>
											<option value="">面积</option>
										</select>
										<input type="text" name="" id="" value="" style="width: 88px;"/>平米
									</td>
									<td>付款</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">年租</option>
											<option value="">半年租</option>
											<option value="">季租</option>
											<option value="">月租</option>
											<option value="">一次付清</option>
											<option value="">按揭方式</option>
											<option value="">垫资解按</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>看房</td>
									<td>
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">预约</option>
											<option value="">有匙</option>
											<option value="">借匙</option>
											<option value="">直接</option>
										</select>
										<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
								</tr>
								<tr class="size">
									<td>产证号</td>
									<td>
										<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
									<td>产证年限</td>
									<td>
										<input type="text" name="" id="" value="" style="width: 88px;"/>
									</td>
								</tr>
							</table>
							<!--
	作者：zq
	时间：2017-05-01
	描述：右边框
-->

							<table class="table table-bordered  definewidth m10 taright2 ">
								<tr class="size">
									<td>
									业主及联系人
									</td>
								</tr>
								<tr>
									<td>
										身 份:
										<select style="width: 100px;" id="point" >
											<option value="" selected>请选择</option>
											<option value="" >客户</option>
											<option value="" >联系人</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										姓 名: <input type="text" name="" / id="point">
									</td>
								</tr>
								<tr>
									<td>
										电话1: <input type="text" name="" / id="point">
									</td>
								</tr>
								<tr>
									<td>
										电话2: <input type="text" name="" />
									</td>
								</tr>
								<tr>
									<td>
										证 件:
										<select style="width: 100px;">
											<option value="" selected>请选择</option>
											<option value="">身份证</option>
											<option value="">军人证</option>
											<option value="">港澳通行证</option>
											<option value="">同胞证</option>
											<option value="">护照</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										备 注:<textarea rows="2" cols="5" style="width:200px ;"></textarea>
									</td>
								</tr>
								<tr>
									<td>
										<a href="#">+新增客户/联系人</a>
									</td>
								</tr>
							</table>

							<!--
    	作者：zq
    	时间：2017-05-02
    	描述：归属人
    -->
							<table class="table table-bordered  definewidth m10 taright3 ">
								<tr class="size">
									<td>
									相关员工
									</td>
								</tr>
								<tr>
									<td>
										归属人1:
										<select style="width: 100px;" id="point">
											<option value="" selected>系统管理组</option>
										</select>

										<select style="width: 100px;" id="point">
											<option value="" selected>manager</option>
											<option value="" selected>guest</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										归属人2:
										<select style="width: 100px;">
											<option value="" selected>无</option>
											<option value="" selected>系统管理组</option>
										</select>

										<select style="width: 100px;">
											<option value="" selected>manager</option>
											<option value="" selected>guest</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										归属人3:
										<select style="width: 100px;" disabled="disabled">
											<option value="" selected>无</option>
										</select>

										<select style="width: 100px;" disabled="disabled">
											<option value="" selected>无</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										拉有效:
										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>

										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										钥匙:
										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>

										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										委托:
										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>

										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										实勘照片:
										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>

										<select style="width: 100px;" >
											<option value="" selected>无</option>
										</select>
									</td>
								</tr>
							</table>

						</div>
					</form>
					<div class="submit-btn" style="text-align: center;">
						<a href="#" class="btn green">Save </a>
						<a href="userselect.html" class="btn">Cancel</a>
					</div>
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
		<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>
		<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

		<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

		<!--[if lt IE 9]>

	
		<!--
        	作者：zq
        	时间：2017-04-21
        	描述：日历的js
        -->
		<script src="media/js/bootstrap-datepicker.js" type="text/javascript"></script>

		<script src="media/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

		<script src="media/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL PLUGINS -->

		<!-- BEGIN PAGE LEVEL SCRIPTS -->

		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL SCRIPTS -->

		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();
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

</html>
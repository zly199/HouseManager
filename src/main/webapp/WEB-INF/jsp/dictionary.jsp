<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="<%=basePath%>">

<!DOCTYPE html>

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

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
		<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />
		<link href="media/css/fileinput.min.css" rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->
		<!--
    	作者：offline
    	时间：2017-04-20
    	描述：table切换
    -->
		<link href="media/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />

		<link href="media/css/chosen.css" rel="stylesheet" type="text/css" />

		<link href="media/css/profile.css" rel="stylesheet" type="text/css" />
		<!-- BEGIN PAGE LEVEL STYLES -->

		<link href="media/css/jquery.gritter.css" rel="stylesheet" type="text/css" />

		<link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />

		<link href="media/css/fullcalendar.css" rel="stylesheet" type="text/css" />

		<link href="media/css/jqvmap.css" rel="stylesheet" type="text/css" media="screen" />

		<link href="media/css/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />

		<!-- END PAGE LEVEL STYLES -->

		<link rel="shortcut icon" href="media/image/favicon.ico" />
		
		
		<!--楼盘字典-->
		<link href="media/css/style/zzsc.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="media/css/style/bootstrap4alpha.css" />
		<link rel="stylesheet" type="text/css" href="media/css/style/dataTables.bootstrap4.css">
		<link rel="stylesheet" href="media/css/style/style.css">
		<style type="text/css" class="init">
			.right {
				font-size: 12px;
				float: left;
				margin-top: -30px;
			}
			
			#light {
				width: 527px;
				float: right;
			}
			
			#Blight {
				background-color: #c8e5bc;
				float: right;
			}
			
			#example>thead>tr>th {
				text-align: center;
			}
			/*        #example_info{ display:none;}*/
		</style>
		<script src="media/css/stylejs/jquery.min.js" type="text/javascript"></script>
		<script src="media/css/stylejs/showlist.js" type="text/javascript"></script>
		<script type="text/javascript" language="javascript" src="media/css/stylejs/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" language="javascript" src="media/css/stylejs/dataTables.bootstrap4.js"></script>
		<script type="text/javascript" language="javascript" src="media/css/stylejs/jquery.dataTables.js"></script>
		<script type="text/javascript" language="javascript" class="init">
			var dataTable;
			$(document).ready(function() {
				//      	$.ajax({
				//	               type: "get",
				//	               url: "table_body.json",
				//	               success: function(data){
				//				        dataTable =data;
				//				    },
				//	        });
				//			$.ajax({
				//               type: "get",
				//               url: "table_head.json",
				//               success: function(columName){
				var columName = [{
					"data": ""
				}, {
					"data": "楼盘名称"
				}, {
					"data": "拼音"
				}, {
					"data": "商圈"
				}, {
					"data": "概要地址"
				}, {
					"data": "栋数"
				}, {
					"data": "栋规"
				}, {
					"data": "房规"
				}, {
					"data": "用途"
				}, {
					"data": "类型"
				}, {
					"data": "照片"
				}, {
					"data": "备注"
				}, {
					"data": "操作"
				}];
				for(var i = 0; i < columName.length; i++) {
					$("#example thead tr").append("<th>" + columName[i].data + "</th>");
				}
				var table = $('#example').DataTable({
					ordering: false, //是否启用排序
					searching: true, //搜索
					language: {
						lengthMenu: '显示 <select style="height: 30px;width: 70px;">' +
							'<option value="5">5</option>' +
							'<option value="10">10</option>' +
							'<option value="20">20</option>' +
							'<option value="30">30</option>' +
							'<option value="40">40</option>' +
							'<option value="50">50</option>' +
							'<option value="-1">不限</option>' +
							'</select>',
						search: '<span class="label label-success" style="margin-top:20px">搜索：</span>', //右上角的搜索文本，可以写html标签
						paginate: { //分页的样式内容。
							previous: "上一页",
							next: "下一页",
							first: "第一页",
							last: "最后"
						},
						zeroRecords: "没有内容", //table tbody内容为空时，tbody的内容。
						//下面三者构成了总体的左下角的内容。
						info: "总共_PAGES_ 页，显示第_START_ 到第 _END_ ，筛选之后得到 _TOTAL_ 条，初始_MAX_ 条 ", //左下角的信息显示，大写的词为关键字。
						infoEmpty: "0条记录", //筛选为空时左下角的显示。
						infoFiltered: "" //筛选之后的左下角筛选提示，
					},
					paging: true,
					pagingType: "full_numbers", //分页样式的类型
					data: dataTable,
					lengthChange: true,
					columns: columName,
					//						dom: 'Bfltip',
					'dom': '<"left"f>r<"right"<"#light"l><"Blight"B>>tip',
					//		                'excel', 'pdf', 'print','colvis','csv','copy'
					buttons: ['excel'],
					createdRow: function(row, data, index) {
						$('td', row).css('font-weight', "normal").css("text-align", "center");
					},
				});
				//			    },
				//         	});    
			});
		</script>


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

									<a href="index.html">Home</a>

									<i class="icon-angle-right"></i>

								</li>

								<li>
									<a href="#">楼盘字典</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<div class="houselist">
							<a href="newbuild.html" style="border: 1px solid #D2D2D2;">新增楼盘</a>
							<a href="javascript:0;" class="cd-popup-trigger0 cd-popup-trigger8" style="border: 1px solid #D2D2D2;">楼盘合并</a>
							<a href="javascript:0;" class="cd-popup-trigger1" style="border: 1px solid #D2D2D2;">批量设置栋座规则</a>
							<a href="javascript:0;" class="cd-popup-trigger2" style="border: 1px solid #D2D2D2;">新增商圈</a>
							<a href="javascript:0;" class="cd-popup-trigger3 cd-popup-trigger9" style="border: 1px solid #D2D2D2;">修改商圈</a>
							<a href="javascript:0;" class="cd-popup-trigger4 cd-popup-trigger10" style="border: 1px solid #D2D2D2;">删除商圈</a>
							<a href="javascript:0;" class="cd-popup-trigger5" style="border: 1px solid #D2D2D2;">新增城区</a>
							<a href="javascript:0;" class="cd-popup-trigger6 cd-popup-trigger11" style="border: 1px solid #D2D2D2;">修改城区</a>
							<a href="javascript:0;" class="cd-popup-trigger7 cd-popup-trigger12" style="border: 1px solid #D2D2D2;">删除城区</a>
						</div>
						<!--弹框-->
				
						<!--楼盘合并-->
						<div class="cd-popup">
							<div class="cd-popup-container" style="background-color:#44A0BB ;">
								<p style="padding-top: 50px;">请选择商圈</p>
								<p>
									<a href=""><button value="" style="float:right;margin-right: 150px;margin-top:20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;cursor:pointer;">确定</button></a>
								</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--楼盘合并-->
						<div class="cd-popup8">
							<div class="cd-popup-container8">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">楼盘合并</p>
								<div class="box-101">
									<p style="text-align: left;padding-left: 10px;padding-top: 5px;">城区:
										<select style="width: 100px;cursor:pointer;">
											<c:forEach items="${users}" var="user" varStatus="status">
												<option>静安区</option>
											</c:forEach>
										</select>
										<select style="width: 100px;cursor:pointer;">
											<c:forEach items="${users}" var="user" varStatus="status">
												<option>不夜城</option>
											</c:forEach>
										</select>
									</p>
									<p style="text-align: left;font-size: 12px;padding-left: 10px;padding-top: 25px; ">
										<input style="width: 96px;height: 25px;" value="33街坊高福坊"></input>
										将合并到新楼盘:
										<input style="width: 96px;height: 25px;" value="楼盘字典"></input>
									</p>
									<p style="text-align: left;font-size: 14px;padding-left: 10px;padding-top: 25px;">1.只能合并同一城区商圈的楼盘. </p>
									<p style="text-align: left;font-size: 14px;padding-left: 10px;padding-top: 25px;">2.栋座也会被合并到新楼盘中. </p>
									<p style="text-align: left;font-size: 14px;padding-left: 10px;padding-top: 25px;">3.该楼盘的房源也将合并到新楼盘. </p>
								</div>
								<div class="box-102">
									<div class="button1">
										<a href="tables.html"><button value="">取消</button></a>
									</div>
									<div class="button2">
										<a href="tables.html"><button value="">保存</button></a>
									</div>
								</div>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--批量设置规则-->
						<div class="cd-popup1">
							<div class="cd-popup-container1">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">批量设置规则</p>
								<div class="box-100" style="width: 500px;border: 2px solid #E1E1E1;height: 50px;margin-top: 10px;margin-left: 50px;">
									<p style="text-align: left;font-size:12px ;padding-top: 15px;"><input type="checkbox" name="favorl" value="favor1" checking="" style="cursor:pointer;">新增房源【栋座位置】必须从栋座中选取</p>
									<p style="float:right;margin-top:-20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;">
										<a href="">设置楼栋规则</a>
									</p>
								</div>
								<div class="box-101" style="height: 450px;margin-top: 10px;">
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 20px;">选择楼盘：<input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[1]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[2]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[3]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[4]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[5]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">原来房号规则为[6]的楼盘字典</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">所有的楼盘字典</p>
				
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 20px;">选择楼盘：<input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">1.【字母、数字任意组合】例：601、18D</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">2.【字母、数字、字符任意组合】例：601、18-D</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">3.【楼层(2位)+房间号(数字)】2+2规则，例：0601、1804</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">4.【楼层(2位)+房间号(字母)】2+1规则，例：06A、18D</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">5.【楼层(2位)+房间号(数字或字母)】2+2/2+1混合，例：0601、18D</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;"><input type="radio" name="favorl" value="favor1" checking="" style="cursor:pointer;">6.【新增/修改房源（房号）必须从已有房号中选取】</p>
									<p style="text-align: left;font-size:12px ;padding-top: 15px;margin-left: 80px;color: red;">没有添加房号的栋座，将无法新增房源！</p>
									<p style="float:right;margin-top:-20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;">
										<a href="">设置房号规则</a>
									</p>
								</div>
								<div class="box-102" ">
									<div class="button1 ">
										<!--<a href="tables.html "><button value=" ">取消</button></a>-->
									</div>
									<div class="button2 "">
									<a href="tables.html"><button value="">关闭</button></a>
								</div>
							</div>
							<a href="#0" class="cd-popup-close">close</a>
						</div>
						</div>
				
						<!--新增商圈-->
						<div class="cd-popup2">
							<div class="cd-popup-container2">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">新增商圈</p>
								<div class="box-101" style="height: 100px;">
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;">商圈名称:
										<input style="width: 96px;height: 25px;"></input>
									</p>
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;margin-left: 15px;">隶属于:
										<select style="width: 100px;cursor:pointer;">
											<c:forEach items="${users}" var="user" varStatus="status">
												<option>城区</option>
											</c:forEach>
										</select>
									</p>
								</div>
								<div class="box-102">
									<div class="button1">
										<a href="tables.html"><button value="">取消</button></a>
									</div>
									<div class="button2">
										<a href="tables.html"><button value="">保存</button></a>
									</div>
								</div>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--修改商圈-->
						<div class="cd-popup3">
							<div class="cd-popup-container3" style="background-color:#44A0BB ;">
								<p style="padding-top: 50px;">请选择商圈</p>
								<p>
									<a href=""><button value="" style="float:right;margin-right: 150px;margin-top:20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;cursor:pointer;">确定</button></a>
								</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>		
						<!--修改商圈-->
						<div class="cd-popup9">
							<div class="cd-popup-container9">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">修改商圈</p>
								<div class="box-101" style="height: 100px;">
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;">商圈名称:
										<input style="width: 96px;height: 25px;"></input>
									</p>
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;margin-left: 0px;">所属城区:
										<select style="width: 100px;cursor:pointer;">
											<c:forEach items="${users}" var="user" varStatus="status">
												<option>城区</option>
											</c:forEach>
										</select>
									</p>
								</div>
								<div class="box-102">
									<div class="button1">
										<a href="tables.html"><button value="">取消</button></a>
									</div>
									<div class="button2">
										<a href="tables.html"><button value="">保存</button></a>
									</div>
								</div>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--删除商圈-->
						<div class="cd-popup4">
							<div class="cd-popup-container4" style="background-color:#44A0BB ;">
								<p style="padding-top: 50px;">请选择商圈</p>
								<p>
									<a href=""><button value="" style="float:right;margin-right: 150px;margin-top:20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;cursor:pointer;">确定</button></a>
								</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
						<!--删除商圈-->
						<div class="cd-popup10">
							<div class="cd-popup-container10">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">删除商圈</p>
								<p>删除成功</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--新增城区-->
						<div class="cd-popup5">
							<div class="cd-popup-container5">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">新增城区</p>
								<div class="box-101" style="height: 100px;">
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;">城区名称:
										<input style="width: 96px;height: 25px;"></input>
									</p>
								</div>
								<div class="box-102">
									<div class="button1">
										<a href="tables.html"><button value="">取消</button></a>
									</div>
									<div class="button2">
										<a href="tables.html"><button value="">保存</button></a>
									</div>
								</div>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<!--修改城区-->
						<div class="cd-popup6">
							<div class="cd-popup-container6" style="background-color:#44A0BB ;">
								<p style="padding-top: 50px;">请选中你要修改的城区</p>
								<p>
									<a href=""><button value="" style="float:right;margin-right: 150px;margin-top:20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;cursor:pointer;">确定</button></a>
								</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
						<!--修改城区-->
						<div class="cd-popup11">
							<div class="cd-popup-container11">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">修改商圈</p>
								<div class="box-101" style="height: 100px;">
									<p style="text-align: left;padding-left: 10px;padding-top: 15px;">城区名称:
										<input style="width: 96px;height: 25px;"></input>
									</p>
								</div>
								<div class="box-102">
									<div class="button1">
										<a href="tables.html"><button value="">取消</button></a>
									</div>
									<div class="button2">
										<a href="tables.html"><button value="">保存</button></a>
									</div>
								</div>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
				
						<!--删除城区-->
						<div class="cd-popup7">
							<div class="cd-popup-container7" style="background-color:#44A0BB ;">
								<p style="padding-top: 50px;">请选择城区</p>
								<p>
									<a href=""><button value="" style="float:right;margin-right: 150px;margin-top:20px;width: 100px;height: 30px;background-color: #5BC0DE;font-size:12px ;text-align:center;line-height: 30px;cursor:pointer;">确定</button></a>
								</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
						<!--删除城区-->
						<div class="cd-popup12">
							<div class="cd-popup-container12">
								<p style="text-align: left;padding-left: 20px;padding-top: 15px;font-weight:bold ;font-size: 20px;">删除商圈</p>
								<p>删除成功</p>
								<a href="#0" class="cd-popup-close">close</a>
							</div>
						</div>
				
						<div class="container">
							<section>
								<div class="panel panel-default">
									<div class="panel-body">
				
										<table id="example" class="table table-bordered table-striped table-hover">
											<thead>
												<tr id="table_tr"></tr>
											</thead>
											<tbody>
												<c:forEach items="${users}" var="user" varStatus="status">
													<c:if test="${status.index%2 == 0}">
														<tr>
															<td width="10px"><input type="checkbox" id="checkll" name="favorl" value="favor1" checking=""></td>
															<td>
																<div style="width: 100px;overflow:hidden; 
				white-space:nowrap;">${status.index+1}</div>
															</td>
															<td>
																<div style="width: 40px;overflow:hidden; 
				white-space:nowrap;">${user.id}</div>
									</div>
									</td>
									<td>
										<div style="width: 60px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<div style="width: 150px;overflow:hidden; 
				white-space:nowrap;">${user.realname}</div>
									</td>
									<td>
										<div style="width: 40px;overflow:hidden; 
				white-space:nowrap;">${user.password}</div>
									</td>
									<td>
										<div style="width: 40px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<div style="width: 40px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<div style="width: 50px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<div style="width: 70px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<div style="width: 40px;overflow:hidden; 
				white-space:nowrap;">user.username</div>
									</td>
									<td>
										<div style="width: 70px;overflow:hidden; 
				white-space:nowrap;">${user.username}</div>
									</td>
									<td>
										<a href="newbuild.html">修改</a>
										<a href="">合并</a>
										<a href="del?id=${user.id}">删除</a>
									</td>
									</tr>
									</c:if>
									</c:forEach>
				
									
									</tbody>
									</table>
				
								</div>
							</div>
							</section>
						</div>
				
						<div class="main content">
							<div class="left-sider">
								<div class="operate">
									<h3 align="center"> 全部 </h3>
									<ul id="J_navlist">
										<li>
											<c:forEach items="${users}" var="user" varStatus="status">
											<h4 id="checkll2">宝山区</h4>
											
											<div class="list-item none">
												<p id="checkll1">
													<a href="#" target="_self">大场</a>
												</p>												
											</div>
											</c:forEach>
										</li>									
									</ul>
									<script type="text/javascript" language="javascript">
										navList(12);
									</script>
								</div>
							</div>
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
		<!--<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>-->

		<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

		<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

		<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

		<!-- END CORE PLUGINS -->

		<!-- BEGIN PAGE LEVEL PLUGINS -->

		<script src="media/js/jquery.vmap.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.russia.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.world.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.europe.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.germany.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.usa.js" type="text/javascript"></script>

		<script src="media/js/jquery.vmap.sampledata.js" type="text/javascript"></script>

		<script src="media/js/jquery.flot.js" type="text/javascript"></script>

		<script src="media/js/jquery.flot.resize.js" type="text/javascript"></script>

		<script src="media/js/jquery.pulsate.min.js" type="text/javascript"></script>

		<script src="media/js/date.js" type="text/javascript"></script>

		<script src="media/js/daterangepicker.js" type="text/javascript"></script>

		<script src="media/js/jquery.gritter.js" type="text/javascript"></script>

		<script src="media/js/fullcalendar.min.js" type="text/javascript"></script>

		<script src="media/js/jquery.easy-pie-chart.js" type="text/javascript"></script>

		<script src="media/js/jquery.sparkline.min.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL PLUGINS -->

		<!-- BEGIN PAGE LEVEL SCRIPTS -->

		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>
		<script src="media/js/fileinput.min.js" type="text/javascript"></script>
		<script src="media/js/fileinput_locale_zh.js" type="text/javascript"></script>


		

		
		<!--楼盘字典-->
			<script type="text/javascript">
			/*弹框JS内容*/
			jQuery(document).ready(function($) {
				//楼盘合并打开窗口

				var cheak = false;
				var num1 = 0;
				$("#checkll").click(function() {
					num1++;
					if(num1 % 2 == 0) {
						cheak = false;
					} else {
						cheak = true;
					}
				});
				
				
				$('.cd-popup-trigger0').on('click', function(event) {
					event.preventDefault();
					if(cheak) {
						$('.cd-popup8').addClass('is-visible8');
					} else {
						$('.cd-popup').addClass('is-visible');
						//$(".dialog-addquxiao").hide()
					}

				});
				//关闭窗口
				$('.cd-popup').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup')) {
						event.preventDefault();
						$(this).removeClass('is-visible');
					}
				});
				//关闭窗口
				$('.cd-popup8').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup8')) {
						event.preventDefault();
						$(this).removeClass('is-visible8');
					}
				});

				//ESC关闭
				$(document).keyup(function(event) {
					if(cheak) {
						if(event.which == '27') {
							$('.cd-popup8').removeClass('is-visible8');
						}
					} else {
						if(event.which == '27') {
							$('.cd-popup').removeClass('is-visible');
						}
					}

				});

				//批量设置楼栋规则打开窗口
				$('.cd-popup-trigger1').on('click', function(event) {
					event.preventDefault();
					$('.cd-popup1').addClass('is-visible1');
					//$(".dialog-addquxiao").hide()
				});
				//关闭窗口
				$('.cd-popup1').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup1')) {
						event.preventDefault();
						$(this).removeClass('is-visible1');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup1').removeClass('is-visible1');
					}
				});

				//新增商圈打开窗口
				$('.cd-popup-trigger2').on('click', function(event) {
					event.preventDefault();
					$('.cd-popup2').addClass('is-visible2');
					//$(".dialog-addquxiao").hide()
				});
				//关闭窗口
				$('.cd-popup2').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup2')) {
						event.preventDefault();
						$(this).removeClass('is-visible2');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup2').removeClass('is-visible2');
					}
				});


				var cheak1 = false;
				var num2 = 0;
				$("#checkll1").click(function() {
					num2++;
					if(num2 % 2==0) {
						cheak1 = false;
						$(this).css('background-color',"white" );
					} else {
						cheak1 = true;
						$(this).css('background-color',"#d2d2d2" );
					}
//					alert("cheak1");
				});
	
				//修改商圈打开窗口
				$('.cd-popup-trigger3').on('click', function(event) {
					event.preventDefault();
					if(cheak1){
						$('.cd-popup9').addClass('is-visible9');
					}else{
						$('.cd-popup3').addClass('is-visible3');
					}
					//$(".dialog-addquxiao").hide()
				});
				//关闭窗口
				$('.cd-popup3').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup3')) {
						event.preventDefault();
						$(this).removeClass('is-visible3');
					}
				});
				//关闭窗口
				$('.cd-popup9').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup9')) {
						event.preventDefault();
						$(this).removeClass('is-visible9');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup3').removeClass('is-visible3');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup9').removeClass('is-visible9');
					}
				});

				//删除商圈打开窗口
				$('.cd-popup-trigger4').on('click', function(event) {
					event.preventDefault();
					if(cheak1){
						$('.cd-popup10').addClass('is-visible10');
					}else{
						$('.cd-popup4').addClass('is-visible4');
					}
				});

				//关闭窗口
				$('.cd-popup4').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup4')) {
						event.preventDefault();
						$(this).removeClass('is-visible4');
					}
				});
				$('.cd-popup10').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup10')) {
						event.preventDefault();
						$(this).removeClass('is-visible10');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup4').removeClass('is-visible4');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup10').removeClass('is-visible10');
					}
				});

				//新增城区打开窗口
				$('.cd-popup-trigger5').on('click', function(event) {
					event.preventDefault();
					$('.cd-popup5').addClass('is-visible5');
					//$(".dialog-addquxiao").hide()
				});
				//关闭窗口
				$('.cd-popup5').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup5')) {
						event.preventDefault();
						$(this).removeClass('is-visible5');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup5').removeClass('is-visible5');
					}
				});

				var cheak2 = false;
				var num3 = 0;
				$("#checkll2").click(function() {
					num3++;
					if(num3 % 2==0) {
						cheak2 = false;
						$(this).css('background-color',"white" );
					} else {
						cheak2 = true;
						$(this).css('background-color',"#d2d2d2" );
					}
//					alert("cheak2");
				});
				//修改城区打开窗口
				
				$('.cd-popup-trigger6').on('click', function(event) {
					event.preventDefault();
					if(cheak2){
						$('.cd-popup11').addClass('is-visible11');
					}else{
						$('.cd-popup6').addClass('is-visible6');						
					}
					
					//$(".dialog-addquxiao").hide()
				});

				//关闭窗口
				$('.cd-popup6').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup6')) {
						event.preventDefault();
						$(this).removeClass('is-visible6');
					}
				});
				//关闭窗口
				$('.cd-popup11').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup11')) {
						event.preventDefault();
						$(this).removeClass('is-visible11');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup6').removeClass('is-visible6');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup11').removeClass('is-visible11');
					}
				});


				//删除城区打开窗口
				$('.cd-popup-trigger7').on('click', function(event) {
					event.preventDefault();
					if(cheak2){
						$('.cd-popup12').addClass('is-visible12');
					}else{
						$('.cd-popup7').addClass('is-visible7');
						
					}
					//$(".dialog-addquxiao").hide()
				});

				//关闭窗口
				$('.cd-popup7').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup7')) {
						event.preventDefault();
						$(this).removeClass('is-visible7');
					}
				});
				//关闭窗口
				$('.cd-popup12').on('click', function(event) {
					if($(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup12')) {
						event.preventDefault();
						$(this).removeClass('is-visible12');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup7').removeClass('is-visible7');
					}
				});
				//ESC关闭
				$(document).keyup(function(event) {
					if(event.which == '27') {
						$('.cd-popup12').removeClass('is-visible12');
					}
				});
			});
		</script>
	


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

		<script>
			$(document).on('ready', function() {
				$("#input-4").fileinput({
					showCaption: false
				});
			});
		</script>
		<!-- END JAVASCRIPTS -->

	</body>

	<!-- END BODY -->

</html>
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

<!--[if !IE]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

	<meta charset="utf-8" />

	<title>房屋中介管理系统</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	
	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	
	<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.css" rel="stylesheet">
	
	<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.min.css" rel="stylesheet">
	
	<link rel="shortcut icon" href="media/image/favicon.ico" />
	
	<link href="media/css/tab.css" rel="stylesheet" type="text/css" />
	
		<!--
    	作者：offline
    	时间：2017-04-21
    	描述：bootstrap table
    -->
		<link href="media/css/bootstrap-table.css" rel="stylesheet" type="text/css" />

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

				<img src="media/image/logo.png" alt="logo"/>

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

							<li><a href="profile.html"><i class="icon-user"></i> 个人信息</a></li>
							<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>

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

							<i class="icon-th"></i>

							<span class="title">人事OA</span>

							<span class="arrow "></span>

						</a>

						<ul class="sub-menu">

							<li>

								<a href="userPhone.html">

									通讯录</a>

							</li>
							<li>

								<a href="departmentPhone.html">

									部门通讯录</a>

							</li>

							<li>

								<a href="authority1.html">

									组织机构</a>

							</li>
							<li>

								<a href="addstaff.html">

									新增员工</a>

							</li>
							<li>

								<a href="detailOA.html">

									人事OA详情信息</a>

							</li>
							<li>

								<a href="new.html">

									新闻/公告查询</a>

							</li>
							<li>

								<a href="writeNew.html">

									新增新闻/公告</a>

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

							<li><a href="#">详情OA</a></li>
						</ul>

						<!-- END PAGE TITLE & BREADCRUMB-->

					</div>

				</div>

				<!-- END PAGE HEADER-->
						<!--
                        	作者：zq
                        	时间：2017-04-20
                        	描述：table切换开始
                        -->
                      <div class="row-fluid profile">

					<div class="span12">

						<!--BEGIN TABS-->

						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">
								<li><a href="#tab_1_2" data-toggle="tab">员工明细</a></li>

								<li><a href="#tab_1_3" data-toggle="tab">异动记录</a></li>

							</ul>

							<div class="tab-content">
								<!--
                                	作者：zq
                                	时间：2017-04-20
                                	描述：开始tab_1_2
                                -->
								<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab_1_2">
								<div id="">
									<h4 style="color: green;">职务信息</h4>
									<table>
											<tr>
												<td>员工姓名:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">照片：</span></td>
												<td> <span id="sp3">
													<img src="media/image/bg/3.jpg"  style="width: 100px; height: 50px;"/>
												</span> </td>
											</tr>
											<tr>
												<td>所属部门:</td>
												<td> <span id="sp3">0</span> </td>
												
											</tr>
											<tr>
												<td>员工编号:</td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>职务:</td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>状态:</td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>座席:</td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>上级:</td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>来源:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">入职时间：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>职称:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">离职时间：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>档案:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">工龄：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
										</table>
								</div>
                                  <div>
                                  	<h4 style="color: green;">联系方式</h4>
                                  	电话:<select style="width: 100px;">
                                  		<option value="手机">手机</option>
                                  		<option value="固定">固定</option>
                                  	</select>
                                  	<input type="text" name="" id="" value="13838383" style="width: 100px;"/>
                                  </br>
                                                                   移动端:未绑定 <button type="button" class="btn green">申请绑定微信</button> <button type="button" class="btn green">申请绑APP</button>
                                  </div>
                                  <div>
                                  	<h4 style="color: green;">个人信息</h4>
									<table>
											<tr>
												<td>身份证:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">性别：</span></td>
												<td> <span id="sp3">
													0
												</span> </td>
											</tr>
											<tr>
												<td>民族:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">籍贯：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>电子邮件:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">出生日期：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>联系地址:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">面貌：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>银行帐号:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">学历：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>个人签名:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">毕业院校：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>主营楼盘:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">专业：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
											<tr>
												<td>备注:</td>
												<td><span id="sp3">0</span> </td>
												
											</tr>
										</table>
                                  	
                                  </div>
                                  <div>
                                  	  	<h4 style="color: green;">设置</h4>
									<table>
											<tr>
												<td>规定上班:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">规定下班：</span></td>
												<td> <span id="sp3">
													0
												</span> </td>
											</tr>
											<tr>
												<td>密码:</td>
												<td><span id="sp3">0</span> </td>
												<td><span id="sp4">确认密码：</span></td>
												<td> <span id="sp3">0</span> </td>
											</tr>
										
										</table>
                                  </div>
                                  <div>
                                  	<h4 style="color: green;">附件</h4>
                                  	<p>000000000000000</p>
                                  </div>
									

								</div>

								<!--作者：zq
                                	时间：2017-04-20
                                	描述：结束tab_1_2-->

                                <!--作者：zq
                                	时间：2017-04-20
                                	描述：开始tab_1_3-->

								<div class="tab-pane row-fluid profile-account" id="tab_1_3">

								<table id="ta1">
								
								</table>
								</div>

								<!--end tab-pane-->

							</div>

						</div>

						<!--END TABS-->

					</div>

				</div>
                        <!--
                        	作者：zq
                        	时间：2017-04-20
                        	描述：table切换结束
                        -->
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

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>   

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.min.js"></script>

		<!--
    	作者：zq
    	时间：2017-04-21
    	描述：bootatrap table js
    -->
		<script src="media/js/bootstrap-table.js"></script>

		<script src="media/js/bootstrap-table-export.js"></script>

		<script src="media/js/jquery.base64.js"></script>

		<script src="media/js/tableExport.js"></script>

		<script type="text/javascript">
			$(function() {
				$('#ta1').bootstrapTable({
					method: 'POST',
					url: '',
					cache: false,
					striped: true,
					pagination: true,
					pageSize: 20,
					pageNumber: 1,
					pageList: [10, 20, 50, 100, 200, 500],
					search: true,
					showColumns: true,
					showRefresh: true,
					showExport: true,
					exportTypes: ['csv', 'txt', 'xml'],
					search: true,
					clickToSelect: true,
					columns: [{
						field: "custom_eamil",
						title: "异动时间",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_phone",
						title: "类别",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_state",
						title: "旧",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_date",
						title: "新",
						align: "center",
						valign: "middle",
						sortable: "true"
					}],
					data: [{
						"user_email": "20dai.rikon@gmail.com",
						"user_company": "",
						"user_dates": "2014-10-13 13:35:51",
						"user_lastlogintime": "0",
						"user_version": "0",
						"user_isv2": "0",
						"userstatus_usertype": "0",
						"userstatus_package_id": "100014",
						"userstatus_end_time": "NULL"
					}, {
						"user_email": "20140416@xxxxddffg.com",
						"user_company": "NULL",
						"user_dates": "2014-10-13 13:35:51",
						"user_lastlogintime": "0",
						"user_version": "1",
						"user_isv2": "0",
						"userstatus_usertype": "0",
						"userstatus_package_id": "100001",
						"userstatus_end_time": "NULL"
					}, {
						"user_email": "20083matsumoto-hs@polus.co.jp",
						"user_company": "",
						"user_dates": "2014-10-31 13:02:47",
						"user_lastlogintime": "1414726074",
						"user_version": "0",
						"user_isv2": "1",
						"userstatus_usertype": "0",
						"userstatus_package_id": "100014",
						"userstatus_end_time": "0"
					}],
					onPageChange: function(size, number) {
						//$("#pageSizeInput").val(size);
						//$("#pageNumberInput").val(number);

						//var form = $('#tableForm');
						//form.action= '${base}/showReport';
						//form.submit();
					},
					//onSort: function (name, order) {
					// },
					//formatShowingRows: function (pageFrom, pageTo, totalRows) {
					//	return '';
					// },
					//formatRecordsPerPage: function () {
					//	return '';
					//  },
					formatNoMatches: function() {
						return ' ';
					}
				});

				$(window).resize(function() {
					$('#ta1').bootstrapTable('resetView');
				});
			});
		</script>  

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="media/js/app.js" type="text/javascript"></script>

	<script src="media/js/index.js" type="text/javascript"></script>        

	<!-- END PAGE LEVEL SCRIPTS -->  

	<script>

		jQuery(document).ready(function() {    

		   App.init(); // initlayout and core plugins

		   Index.init();

//	       Index.initIntro();

		});

	</script>
	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>
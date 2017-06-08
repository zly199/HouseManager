<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="<%=basePath%>">
<!DOCTYPE html>

<html lang="en" class="no-js">

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

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.css" rel="stylesheet">

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.min.css" rel="stylesheet">

		<link rel="shortcut icon" href="media/image/favicon.ico" />

		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<!--
    	作者：offline
    	时间：2017-04-21
    	描述：bootstrap table
    -->
		<link href="media/css/bootstrap-table.css" rel="stylesheet" type="text/css" />

	</head>

	<body class="page-header-fixed">

    <div class="header navbar navbar-inverse navbar-fixed-top">

        <!-- BEGIN TOP NAVIGATION BAR -->

        <div class="navbar-inner">

            <div class="container-fluid">

                <!-- logo标志 -->

                <a class="brand" href="back/user/index">

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

                            <span class="username"><shiro:principal/></span>

                            <i class="icon-angle-down"></i>

                        </a>

                        <ul class="dropdown-menu">

                            <li><a href="back/personnelMinistry/user/detail"><i class="icon-user"></i> 个人信息</a></li>
                            <li><a href="back/user/loginOut"><i class="icon-key"></i> Log Out</a></li>

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

                            <span class="title">客户管理</span>

                            <span class="arrow "></span>

                        </a>

                        <ul class="sub-menu">

                            <li >

                                <a href="back/client/view">

                                    客户查询</a>

                            </li>

                            <li >

                                <a href="addUser.html">

                                    添加客户</a>

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

                                <a href="back/house/view">

                                    房源查询</a>

                            </li>

                            <li >

                                <a href="back/house/add">

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

                                <a href="back/personnelMinistry/organization">

                                    组织机构</a>

                            </li>
                            <li>

                                <a href="back/personnelMinistry/user/add">

                                    新增员工</a>

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

                            <li >

                                <a href="http://123.207.86.52:8080/bdmap/#/?x=121.466709&y=31.227474" target="_Blank">

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
									<a href="#">带看确认单</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>
						<!--
	作者：zq
	时间：2017-05-11
	描述：带看单部分
-->
					</div>
					<div class="breadcrumb">
						<h5 class="watch">带看单状态:</h5>
						<div class="submit-btn watch1">
							<button  class="btn green" onclick="addWatch()">保存 </button>
                            <button href="userselect.html" class="btn green">关闭 </button>
						</div>
					</div>
					<div>
						<h4 class="watch">带看单信息</h4>
						<h5 class="watch">
					经济人:
					<select>
						<option value="">总部</option>
						<optgroup label="张瑛区域" >
						<option value="">中新路店</option>
						<option value="">共和新路店</option>
						</optgroup>
						<option value="">财务</option>
						<option value="" selected>软件开发</option>
						<option value="">系统管理组</option>
					</select>
					<select>
						<option value="">不限</option>
						<option value="" selected>软件开发</option>
					</select>
				</h5>

						<h5 class="watch">
					带看时间:
					<input type="date" name="" id="" value="" />
					
					<div id="watch2">
						<h5 class="watch">
							交易类型:
						<select>
						<option value="" selected>求购</option>
						<option value="">求租</option>
					</select>
						</h5>
					</div>
					</h5>
				</div>

				<div>
					<h5 class="watch">
					客源信息
					<div class="submit-btn watch3">
						<a href="#" class="btn grey" data-toggle="modal" data-target="#coustom">关联客源 </a>
				</div>
				</h5>
                    <form></form>
					<table border="1" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
						<tr>
							<th>客源编号</th>
							<th>交易</th>
							<th>客户</th>
							<th>位置</th>
							<th>楼层</th>
							<th>面积</th>
							<th>价格</th>
						</tr>
						<tr id="watch4">

							<td>${client.id}</td>
							<td>${client.transaction}</td>
							<td>${client.username}</td>
							<td>${client.address}</td>
							<td>${client.floor}</td>
							<td>${client.area}m²</td>
							<td>${client.purchasingPrice}万</td>
						</tr>
					</table>
				</div>

				<div style="margin-top: 30px;">
					<h5 class="watch">
					带看房源
					<div class="submit-btn watch3">
						<a href="#" class="btn grey" data-toggle="modal" data-target="#house">关联房源 </a>
				</div>
				</h5>
					<table border="1" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
						<tr>
							<th>房源编号</th>
							<th>地址</th>
							<th>房号</th>
							<th>面积</th>
							<th>用途</th>
							<th>操作</th>
						</tr>
						<tr id="watch4">
                            <td><div id="houseMsgId"></div></td>
							<td><div id="houseMsgAddress"></div></td>
							<td><div id="houseMsgNumber"></div></td>
							<td><div id="houseMsgArea"></div></td>
							<td><div id="houseMsgUseage"></div></td>
							<td>
								<a href="#">删除</a>
							</td>
						</tr>
					</table>
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
		<div class="modal fade" id="coustom" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					
				</button>
						<h4 class="modal-title" id="myModalLabel">
					选择客源
				</h4>
					</div>
					<div class="modal-body">
						<div style="background-color: #eee;">
							部门
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">总部</option>
								<option value=" ">张瑛区域</option>
								<option value=" ">中兴路店</option>
								<option value=" ">共和新路店</option>
								<option value=" ">财务</option>
								<option value=" ">软件开发</option>
								<option value=" ">系统管理组</option>
							</select>
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
							</select>
							城区
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">宝山区</option>
								<option value=" ">长宁区</option>
								<option value=" ">崇明区</option>
								<option value=" ">奉贤区</option>
								<option value=" ">虹口区</option>
								<option value=" ">黄浦区</option>
								<option value=" ">嘉定区</option>
								<option value=" ">金山区</option>
								<option value=" ">静安区</option>
								<option value=" ">闵行区</option>
								<option value=" ">浦东新区</option>
								<option value=" ">普陀区</option>
								<option value=" ">松江区</option>
								<option value=" ">徐汇区</option>
								<option value=" ">杨浦区</option>
							</select>
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
							</select>
							</br>
							交易
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">求租</option>
								<option value=" ">求购</option>
								<option value=" ">租购</option>
							</select>
							状态
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">有效</option>
								<option value=" ">非有效</option>
								<option value=" ">预定</option>
								<option value=" ">已购</option>
								<option value=" ">已租</option>
								<option value=" ">我购</option>
								<option value=" ">我租</option>
								<option value=" ">暂缓</option>
								<option value=" ">未知</option>
								<option value=" ">无效</option>
							</select>

							关键词 <input type="text" placeholder="编号/位置/客户电话" name="" id="" value="" />

							<button type="button" class="btn green">
					                  查询
				            </button>
							<button type="button" class="btn btn-primary">
					                  快查我的客源
				            </button>

						</div>
						<table id="coustomtable">

						</table>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
						<button type="button" class="btn green">
					提交更改
				</button>
					</div>
				</div>

			</div>
		</div>
		
		<div class="modal fade" id="house" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					
				</button>
						<h4 class="modal-title" id="myModalLabel">
					选择客源
				</h4>
					</div>
					<div class="modal-body">
						<div style="background-color: #eee;">
							部门
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">总部</option>
								<option value=" ">张瑛区域</option>
								<option value=" ">中兴路店</option>
								<option value=" ">共和新路店</option>
								<option value=" ">财务</option>
								<option value=" ">软件开发</option>
								<option value=" ">系统管理组</option>
							</select>
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
							</select>
							城区
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">宝山区</option>
								<option value=" ">长宁区</option>
								<option value=" ">崇明区</option>
								<option value=" ">奉贤区</option>
								<option value=" ">虹口区</option>
								<option value=" ">黄浦区</option>
								<option value=" ">嘉定区</option>
								<option value=" ">金山区</option>
								<option value=" ">静安区</option>
								<option value=" ">闵行区</option>
								<option value=" ">浦东新区</option>
								<option value=" ">普陀区</option>
								<option value=" ">松江区</option>
								<option value=" ">徐汇区</option>
								<option value=" ">杨浦区</option>
							</select>
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
							</select>
							</br>
							交易
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">求租</option>
								<option value=" ">求购</option>
								<option value=" ">租购</option>
							</select>
							状态
							<select style="width: 100px;">
								<option value=" " selected>不限</option>
								<option value=" ">有效</option>
								<option value=" ">非有效</option>
								<option value=" ">预定</option>
								<option value=" ">已购</option>
								<option value=" ">已租</option>
								<option value=" ">我购</option>
								<option value=" ">我租</option>
								<option value=" ">暂缓</option>
								<option value=" ">未知</option>
								<option value=" ">无效</option>
							</select>

							关键词 <input type="text" placeholder="编号/楼盘" name="" id="" value="" />
                                                        栋号 <input type="text" style="width: 85px;"    placeholder="栋号" name="" id="" value="" />
                                                        房号 <input type="text" style="width: 85px;"    placeholder="栋号" name="" id="" value="" />
							<button type="button" class="btn green">
					                  查询
				            </button>
							<button type="button" class="btn btn-primary">
					                  快查我的房源
				            </button>

						</div>
						<table id="housetable">

						</table>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
                        <button type="button" class="btn green" onclick="houseTableSelect()">
                            提交更改
                        </button>
					</div>
				</div>

			</div>
		</div>
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

		<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.min.js"></script>

		<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

		<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL SCRIPTS -->

		<!--
    	作者：zq
    	时间：2017-04-21
    	描述：bootatrap table js
    -->
		<script src="media/js/bootstrap-table.js"></script>

		<script src="media/js/bootstrap-table-export.js"></script>

		<script src="media/js/jquery.base64.js"></script>

		<script src="media/js/tableExport.js"></script>

		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();

				//	       Index.initIntro();

			});
		</script>
<!--
	作者：zq
	时间：2017-05-15
	描述：关联客源
-->
		<script type="text/javascript">
			$(function() {
				$('#coustomtable').bootstrapTable({
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
					search: false,
					clickToSelect: true,
					columns: [{
						field: "custom_id",
						title: "客源编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_id",
						title: "客户",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_name",
						title: "交易",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_eamil",
						title: "城区",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_phone",
						title: "位置",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_state",
						title: "状态",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_date",
						title: "委托日",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "id",
						title: "操作",
						align: "center",
						valign: "middle",
						sortable: "true",
						formatter: function(value, row, index) {
							var e = '<a href="#" >选中</a> ';
							return e;
						}

					}],
					data: [],
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
					$('#coustomtable').bootstrapTable('resetView');
				});
			});
		</script>
		
<!--
	作者：zq
	时间：2017-05-15
	描述：关联房源
-->		
		<script type="text/javascript">
			$(function() {
                $('#housetable').bootstrapTable({
                    method: 'GET',
                    url: 'back/house/getHouseData',
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
                    search: false,
                    clickToSelect: true,
                    columns: [{
                        checkbox: true,
                        width: 10
                    }, {
                        field: "tag",
                        title: "*",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    },
                        {
                            field: "id",
                            title: "房源编号",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "city",
                            title: "城区",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },  {
                            field: "dictionaries",
                            title: "楼盘字典",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "building",
                            title: "栋座",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "roomNumber",
                            title: "房号",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "houseType",
                            title: "房型",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "id",
                            title: "操作",
                            align: "center",
                            valign: "middle",
                            sortable: "true",
                        }],
                    data: [],
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
					$('#housetable').bootstrapTable('resetView');
				});
			});
		</script>
        <script>
            function houseTableSelect() {
                var row=$.map($("#housetable").bootstrapTable('getSelections'),function(row){
                    return row ;
                });
                if(row.length==1){

                    $.ajax({
                        cache: true,
                        type: "GET",
                        url:"back/house/getHouseMsg/"+row[0].id,
                        async: false,
                        error: function(request) {
                            alert("连接错误");
                        },
                        success: function(data) {

                            if(data!=null)
                            {
                                document.getElementById('houseMsgId').innerHTML=data.id;
                                document.getElementById('houseMsgAddress').innerHTML=
                                    data.address[0]+"-"+data.address[1]+"-"+data.address[2]+"-"+data.address[3]+"-"+data.address[4];
                                document.getElementById('houseMsgNumber').innerHTML=data.address[5];
                                document.getElementById('houseMsgArea').innerHTML=data.area[0]+"m²(套内:"+data.area[1]+")";
                                document.getElementById('houseMsgUseage').innerHTML=data.application;
                                alert("关联成功!");
                            }
                             if(data==null){
                                alert("获取数据失败，请检查您的网络连接");
                            }
                        }
                    });

                }else{
                    alert("请选中一行");
                }

            }
            function addWatch() {
                var row=$.map($("#housetable").bootstrapTable('getSelections'),function(row){
                    return row ;
                });
                $.ajax({
                    cache: true,
                    type: "POST",
                    url:"back/client/${client.id}/takeWatch/"+row[0].id,
                    async: false,
                    error: function(request) {
                        alert("连接错误");
                    },
                    success: function(data) {
                        if(data>0)
                        {alert("成功!");}
                        if(data==0){alert("重复操作，或者您没有相关权限");}
                    }
                });

            }
        </script>
	</body>

	<!-- END BODY -->

</html>
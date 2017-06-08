<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->

<!--[if !IE]><!-->
<html lang="en" class="no-js">
	<!--<![endif]-->

	<!-- BEGIN HEAD -->

	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />

		<title>房屋中介管理系统</title>

		<meta content="width=device-width, initial-scale=1.0" name="viewport" />

		<meta content="" name="description" />

		<meta content="" name="author" />

		<!-- BEGIN GLOBAL MANDATORY STYLES -->
		<!--<link href="http://www.jq22.com/jquery/bootstrap-2.3.1.css" rel="stylesheet">-->

		<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

		<link rel="stylesheet" type="text/css" href="media/css/bootstrap-treeview.css">

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.css" rel="stylesheet">

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.min.css" rel="stylesheet">

		<link rel="shortcut icon" href="media/image/favicon.ico" />

		<link href="media/css/tab.css" rel="stylesheet" type="text/css" />

		<link href="media/css/SimpleTree.css" rel="stylesheet" type="text/css" />
		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />
		<link href="media/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="https://cdn.bootcss.com/zTree.v3/3.5.28/css/zTreeStyle/zTreeStyle.css" rel="stylesheet">

		<!--
		作者：offline
		时间：2017-04-21
		描述：日历的css样式
	-->
		<link href="media/css/datetimepicker.css" rel="stylesheet" type="text/css" />
		<link href="media/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />

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
									<a href="#">组织机构</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->
					<div class="span11">

						<!-- BEGIN PORTLET-->

						<!--<div class="portlet">-->
						<div style="margin-left:-28px ;">

							状态:
							<select style="width: 100px;">
								<option selected>不限</option>
								<option>试用业务员</option>
								<option>物业顾问</option>
								<option>区域经理</option>
								<option>文员</option>
								<option>分行经理</option>
								<option>总经理</option>
								<option>公共账户</option>
								<option>财务人员</option>
								<option>客服人员</option>
								<option>行政人员</option>
								<option>法务人员</option>
								<option>电脑管理员</option>
								<option>自助客户</option>
							</select>

							入职时间:
							<select style="width: 100px;z-index:99;">
								<option selected>请选择</option>
								<option>自定义</option>
								<option>今天</option>
								<option>三周</option>
								<option>本周</option>
								<option>上周</option>
								<option>本月</option>
								<option>上月</option>
								<option>今年</option>
								<option>去年</option>
							</select>

							<input type="text" placeholder="开始入职时间" disabled="disabled" style="width: 80px;" /> -
							<input type="text" placeholder="结束入职时间" disabled="disabled" style="width: 80px;" /> 离职时间:
							<select style="width: 100px;z-index:99 ;">
								<option selected>请选择</option>
								<option>自定义</option>
								<option>今天</option>
								<option>三周</option>
								<option>本周</option>
								<option>上周</option>
								<option>本月</option>
								<option>上月</option>
								<option>今年</option>
								<option>去年</option>
							</select>

							<input type="text" placeholder="开始离职时间" disabled="disabled" style="width: 88px;" /> -
							<input type="text" placeholder="结束离职时间" disabled="disabled" style="width: 88px;" />

							</br>

							<input type="text" name="" id="" value="" placeholder="员工姓名或编号" />
							<button type="button" class="btn green" style="margin-top: -8px;">查询</button> &nbsp;
							<a href="#">清空</a>
							&nbsp;&nbsp;
							<input type="checkbox" name="" id="" />显示离职或调动员工
						</div>

						<div style="margin-left:-28px ;">

							<a id="add1" class="btn green">新增员工</a>

							<button type="button" class=" btn green" data-toggle="modal" data-target="#department">新增部门 </button>

							<button id="edit1" type="button" class="btn  green" data-toggle="modal">修改部门权限 </button>

							<button id="remove" type="button" class="btn  green" onclick="return false;">删除当前部门</button>

							<button type="button" class="btn  green" data-toggle="modal" data-target="#post">职务管理 </button>
							<a href="enjoy.html" class="btn green">共享圈 </a>
							<button type="button" class="btn  green" data-toggle="modal" data-target="#post1">批量设置考勤</button>
							<button type="button" class="btn  green">批量绑定员工电话</button>
							<button type="button" class="btn  green">导出员工</button>

						</div>

						<div>
							<div style="background-color: #eee; margin-left: -28px; height: 500px">
								<ul id="treeDemo" class="ztree"></ul>
							</div>

							<div style="float: right; margin-top: -510px;width: 860px;height: 100%">
								<table id="auyhoritytable">
								</table>
							</div>
						</div>
					</div>

					<!--</div>-->

					<!-- END PORTLET-->

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

		<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

		<!-- <script src="media/js/bootstrap.modal.js" type="text/javascript"></script>-->

		<script src="media/js/bootstrap-treeview.js" type="text/javascript"></script>

		<script src="media/js/SimpleTree.js" type="text/javascript"></script>

		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.js"></script>

		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.min.js"></script>

		<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>

		<script src="https://cdn.bootcss.com/zTree.v3/3.5.28/js/jquery.ztree.core.js"></script>
		<script src="https://cdn.bootcss.com/zTree.v3/3.5.28/js/jquery.ztree.excheck.js"></script>
		<script src="https://cdn.bootcss.com/zTree.v3/3.5.28/js/jquery.ztree.exedit.js"></script>

		<!--
        	作者：zq
        	时间：2017-04-21
        	描述：日历的js
        -->
		<script src="media/js/bootstrap-datepicker.js" type="text/javascript"></script>

		<script src="media/js/bootstrap-datetimepicker.js" type="text/javascript"></script>

		<script src="media/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>

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
				$('#auyhoritytable').bootstrapTable({
					method: 'GET',
					url: 'back/personnelMinistry/getOaUserByOrganizationName/全部',
					cache: false,
					striped: true,
					pagination: true,
					pageSize: 7,
					pageNumber: 1,
					pageList: [10, 20, 50, 100, 200, 500],
					search: true,
					showColumns: true,
					showRefresh: true,
					showExport: true,
					exportTypes: ['csv', 'txt', 'xml'],
					search: false,
					width:200,
					clickToSelect: true,
					columns: [{
						checkbox: true,
						width: 10
					}, {
						field: "userId",
						title: "员工编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "userName",
						title: "员工",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "duties",
						title: "职务",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "state",
						title: "状态",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "chifeName",
						title: "上级",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "entryTime",
						title: "入职时间",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "dimissionTime",
						title: "离职时间",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "workingTime",
						title: "上班",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "closingTime",
						title: "下班",
						align: "center",
						valign: "middle",
						sortable: "true"
					},  {
						field: "id",
						title: "操作",
						align: "center",
						valign: "middle",
						sortable: "true",
						formatter: function(value, row, index) {
							var e = '<a href="detailOA.html" >查看详情</a> ';
							var d = '<a data-toggle="modal"   data-target="#showModal" onclick=targetTo("'  + row.userId + '")>设置权限 </a>';
							//var d = '<a href="back/permission/getPermission/'+row.userId +'" data-toggle="modal" data-target="#authority" >设置权限</a> ';
							var h = '<a href="#" data-toggle="modal" data-target="#transaction">异动</a> ';
							var i = '<a href="#" >删除</a> ';
							var g = '<a href="#" data-toggle="modal" data-target="#superior">设置上级</a> ';
							return e + d + h + i + g;
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
					$('#auyhoritytable').bootstrapTable('resetView');
				});
			});
		</script>

        <script>
            /*隐藏时刷新modal，便于下次加载*/
            $("#authority").on("hidden", function() {
                $(this).removeData("modal");  }
            );
            function targetTo(id){
                var remote = 'back/permission/getPermissionByUserId/'+id+'';
                if (remote != "") {
                    $("#modalContent").load(remote, function() {
                        $("#authority").modal('show');
                    });
                }
            }
        </script>

		<!-- END PAGE LEVEL SCRIPTS -->
		<script type="text/javascript">
			$(function() {
				$("#checkAll").click(function() {
					$('input[name="subBox"]').attr("checked", this.checked);
				});
				var $subBox = $("input[name='subBox']");
				$subBox.click(function() {
					$("#clear").attr("checked", $subBox.length == $("input[name='subBox']:checked").length ? true : false);
				});
			});
		</script>
		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();

				//	       Index.initIntro();

			});
		</script>

		<!-- END JAVASCRIPTS -->
		<!--
	作者：zq
	时间：2017-05-21
	描述：权限设置
-->
        <div class="modal fade" id="authority" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="width: 960px; margin-left:-300px ;">
            <div class="modal-dialog" role="document">
                <div class="modal-content" id="modalContent">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true"></span></button>
                        <h3 class="modal-title" id="exampleModalLabel">设置权限</h3>
                    </div>
                    <div class="modal-body" style="height: 470px; width: 930px; ">
                        <div class="tabbable tabbable-custom tabbable-full-width">

                            <ul class="nav nav-tabs">
                                <li>
                                    <a href="#tab_1_1" data-toggle="tab">房源1</a>
                                </li>
                                <li>
                                    <a href="#tab_1_2" data-toggle="tab">房源2</a>
                                </li>
                                <li>
                                    <a href="#tab_1_3" data-toggle="tab">房源3</a>
                                </li>
                                <li>
                                    <a href="#tab_1_4" data-toggle="tab">客源</a>
                                </li>

                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane row-fluid active tab-pane profile-classic row-fluid center1" id="tab_1_1">
                                    <div class="cell c1">
                                        <h5>公盘</h5>
                                        <input type="checkbox" name="subBox" id="" />列表/详情查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />列表字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />详细字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />底价
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />业主查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px;">
                                        <h5>私盘</h5>
                                        <input type="checkbox" name="subBox" id="" />列表/详情查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />列表字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />详细字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />底价
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />业主查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />私盘设置
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px;">
                                        <h5>特盘</h5>
                                        <input type="checkbox" name="subBox" id="" />列表/详情查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />列表字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />详细字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />底价
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />业主查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />特盘设置
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>

                                    </div>
                                    <div class="cell c2">
                                        <h5>封盘</h5>
                                        <input type="checkbox" name="subBox" id="" />列表/详情查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />列表字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />详细字段可看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        <div style="padding-left: 40px;">
                                            <input type="checkbox" name="subBox" id="" />栋座位置
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房号
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />楼层
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />底价
                                        </div>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />业主查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />封盘设置
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="tab-pane row-fluid profile-account" id="tab_1_2">

                                    <div class="cell c1" style="padding-left: 20px; width: 220px;">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />房源新增
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />房源删除
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />公共房源跟进可看
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归属转移
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />看业主电话
                                        <input type="text" name="" id="" style="width: 40px;" />次/天
                                        </br>
                                        <input type="text" name="" id="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width: 100px;" />
                                        </br>
                                        <input type="text" name="" id="" placeholder="=999明显显示电话" disabled="disabled" style="width: 100px;" />
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                                        <h5>[用途]可查看</h5>
                                        <input type="checkbox" name="subBox" id="" />住宅
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />商铺
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />商住
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />写字楼
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />铺厂
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />写厂
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />车位
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />地皮
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />仓库
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />厂房
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />委托日期修改
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[预定]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[已售/我售]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[已租/我租]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[其他状态]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[非有效]-[有效]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[预定]看业主电话
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />(禁用看业主)设置
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />看业主不必写审请
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />看业主不必写跟进
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />出售看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />出租看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />租售看业主<input type="text" name="" id="" style="width: 40px;" />次/天
                                        </br>
                                        <input type="text" name="" id="" placeholder=">999不限次+记日志" disabled="disabled" style="width: 100px;" />
                                        </br>
                                        <input type="text" name="" id="" placeholder="=999不限次+不记日志" disabled="disabled" style="width: 100px;" />

                                    </div>
                                    <div class="cell c2" style="padding-left: 20px; ">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />跟进新增【本人】
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />跟进修改【本人】
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进删除
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />房源激活
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />修改共享账号房源第一人

                                        </br>
                                        <input type="checkbox" name="subBox" id="" />优质房设置
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />聚焦房设置
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />速销房设置
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />不受(每房源看业主次数限制)

                                        </br>
                                        <input type="checkbox" name="subBox" id="" />房源审核
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />房源导出
                                        </br>
                                        <h5>钥匙管理</h5>
                                        <input type="checkbox" name="subBox" id="" />新增
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />修改
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />删除
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />借出
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归还
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />收回
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />查看密码
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="tab-pane row-fluid profile-account" id="tab_1_3">

                                    <div class="cell c1" style="padding-left: 20px; width: 220px;">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />全部修改
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />部分修改
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />交易人 &nbsp; &nbsp;<input type="checkbox" name="subBox" id="" />归属人1
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />房型 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />归属人2
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />面积 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />归属人3
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />业主 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />权益人
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />状态 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />总层 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />委托编号
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />价格 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />房产证
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />来源 <input type="checkbox" name="subBox" id="" style="margin-left: 24px;" />房源明细
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />备注
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />添加业主/联系人
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                                        <h5>交易可查看</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />出售
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />出租
                                        </div>
                                        <h5>[委托]可保存</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />A委托方式
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />B委托方式
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />C委托方式
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />X委托方式
                                        </div>
                                        <h5>图片</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />查看
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />新增
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />修改
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />删除
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />下载
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>

                                            </select>
                                        </div>
                                        <h5>全景看房</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />关联/取消关联
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <h5>协议附件</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />上传
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />查看
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />下载
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />删除
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                                        <h5>房源描述</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />全部修改
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <h5>资料房源</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />资料房源查看
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />归属转移
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />查看业主
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />全部修改
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <h5>部分修改</h5>
                                        <div style="padding-left: 20px;">
                                            <input type="checkbox" name="subBox" id="" />交易
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />现状
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />来源
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />房型
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />面积
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />价格
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />资料房源新增
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />资料房源看更新
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />资料房源加备注
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />资料房源转正式
                                            </br>
                                            <input type="checkbox" name="subBox" id="" />资料房源删除
                                        </div>
                                    </div>

                                </div>

                                <div class="tab-pane row-fluid profile-account" id="tab_1_4">

                                    <div class="cell c1" style="padding-left: 20px; width: 220px;">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />公客查看
                                            <select style="width: 60px;">
                                                <option selected="selected">无</option>
                                                <option>本人</option>
                                                <option>本部</option>
                                                <option>跨部</option>
                                            </select>
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />私客查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />私客看客户
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />带看房源查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />客源新增
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>

                                        </br>
                                        <input type="checkbox" name="subBox" id="" />全部修改
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />部分修改
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />来源
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />等级
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归属人1
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归属人2
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归属人3
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />交易
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 200px;">
                                        <h5>[交易]可查看</h5>
                                        <input type="checkbox" name="subBox" id="" />求购
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />求租
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />租购
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />客源删除
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />私客设置
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />归属转移
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />客源审核
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />委托日期修改
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[预定]

                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[已购/我购]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[已租/我租]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[有效]-[其他状态]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[非有效]-[有效]
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />[预定]看客户电话
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />看客户不必写跟进
                                    </div>
                                    <div class="cell c1" style="margin-left: 7px; padding-left: 20px; width: 190px;">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />看客户 <input type="text" name="" id="" style="width: 40px;" />次/天
                                            </br>
                                            <input type="text" name="" id="" placeholder=">=900不限次+记日志" style="width: 140px;" disabled="disabled" />
                                            </br>
                                            <input type="text" name="" id="" placeholder="=900不限次+不记日志" style="width: 140px;" disabled="disabled" />

                                        </div>
                                        <h5>[委托]可保存</h5>

                                        <input type="checkbox" name="subBox" id="" />A委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />B委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />C委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />X委托方式
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />公客跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />私客跟进查看
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进新增【本人】

                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进修改【本人】
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />跟进删除
                                        <select style="width: 60px;">
                                            <option selected="selected">无</option>
                                            <option>本人</option>
                                            <option>本部</option>
                                            <option>跨部</option>
                                        </select>
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />不受[每客源跟进次数]限制
                                    </div>
                                    <div class="cell c2" style="padding-left: 20px; ">
                                        <div style="margin-top: 10px;">
                                            <input type="checkbox" name="subBox" id="" />公共账户修改[归属]
                                        </div>
                                        <input type="checkbox" name="subBox" id="" />公共客源跟进可看
                                        </br>
                                        <input type="checkbox" name="subBox" id="" />看客户电话 <input type="text" name="" id="" value="999" style="width: 40px;" />次/天
                                        </br>
                                        <input type="text" name="" id="" placeholder="<999屏蔽电话且限制看的次数" disabled="disabled" style="width:140px ;" />
                                        <input type="text" name="" id="" placeholder="=999明码显示电话" disabled="disabled" style="width:140px ;" />
                                    </div>
                                </div>

                                <!--END TABS-->

                            </div>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <div style="float: left;">

                            <a href="#" id="checkAll">全都选中</a>
                            <a href="#" id="clear">全部清除</a>
                            <a href="#" id="myTabDrop1" class="dropdown-toggle dropdown" data-toggle="dropdown">权限预设
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">普通业务员</a>
                                </li>
                                <li>
                                    <a href="#">分店经理</a>
                                </li>
                                <li>
                                    <a href="#">分店秘书</a>
                                </li>
                            </ul>
                            <a href="#">职务授权</a>
                            <a href="#" data-toggle="modal" data-target="#save">保存权限到职务</a>
                        </div>
                        <div>
                            <button type="button" class="btn green">保存</button>
                            <button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>
                        </div>

                    </div>
                </div>
            </div>
        </div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：异动
-->
		<div class="modal fade" id="transaction" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="height: 400px;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">员工异动</h3>
					</div>
					<div class="modal-body" style="height: 300px;">

						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">
								<li>
									<a href="#tab11" data-toggle="tab">员工调动</a>
								</li>
								<li>
									<a href="#tab22" data-toggle="tab">员工离职</a>
								</li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab11">

									<div>
										<h5>$(userName)  &nbsp; $(userName) 将调动到新部门
                                    		<select style="width: 100px;">
                                    			<option >总部</option>
                                    			<option >张瑛区域</option>
                                    			<option >中兴路店</option>
                                    			<option >共和路店</option>
                                    			<option >财务</option>
                                    			<option >软件开发</option>
                                    			<option >系统管理组</option>
                                    		</select>
                                    	</h5>

									</div>
									<div>
										<p style="color: green;">····业务类不转走的将【跟随到新部门】····· ····财务类不转走的将【保留在旧部门】····</p>

									</div>
									<div>

										<table>
											<tr>
												<td>房源记录</td>
												<td><span id="sp1">0</span> </td>
												<td><span id="sp2">合同记录</span></td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>房源跟进</td>
												<td> <span id="sp1">0</span> </td>
												<td><span id="sp2">业绩分成</span></td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>客源记录</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>客源跟进</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>任务</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>工作总结</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
										</table>

									</div>

								</div>

								<div class="tab-pane row-fluid profile-account" id="tab22">
									<div>
										<h5>离职时间: <input type="date" name="" id=""  />
                                    	</h5>

									</div>
									<div>
										<p style="color: green;">····业务类不转走的将【跟随到新部门】····· ····财务类不转走的将【保留在旧部门】····</p>

									</div>
									<div>

										<table>
											<tr>
												<td>房源记录</td>
												<td><span id="sp1">0</span> </td>
												<td><span id="sp2">合同记录</span></td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>房源跟进</td>
												<td> <span id="sp1">0</span> </td>
												<td><span id="sp2">业绩分成</span></td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>客源记录</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>客源跟进</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>任务</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
											<tr>
												<td>工作总结</td>
												<td> <span id="sp1">0</span> </td>
											</tr>
										</table>

									</div>
								</div>
								<!--END TABS-->

							</div>

						</div>

					</div>

					<div class="modal-footer">
						<div>
							<a href="#" style="color: green; float: left;">员工转房客</a>
						</div>
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
        	作者：zq
        	时间：2017-05-21
        	描述：新增部门
        -->
		<div class="modal fade" id="department" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">新增部门</h3>
					</div>
					<div class="modal-body">
						<h4 style="color: green;">部门定义</h4> 序 号:<input type="text" name="" id="" value="11" style="width: 100px;" />
						</br>
						隶属于:
						<select style="width: 100px;">
							<option value="一级">一级</option>
							<option value="总部">总部</option>
							<option value="张瑛区域">张瑛区域</option>
							<option value="中兴路店">中兴路店</option>
							<option value="共和新路店">共和新路店</option>
							<option value="共和新路店">财务</option>
							<option value="共和新路店">软件开发</option>
							<option value="共和新路店">系统管理组</option>

						</select>
						</br>
						部门名称:<input type="text" name="" id="" value="11" style="width: 100px;" />
						</br>
						客源/房源编号前缀:<input type="text" name="" id="" value="11" placeholder="2-4位的大写字母或数字" style="width: 100px;" />
						</br>
						部门类型:
						<select style="width: 100px;">
							<option value="请选择">请选择</option>
							<option value="综合">综合</option>
							<option value="业务">业务</option>
							<option value="财务">财务</option>
							<option value="客服">客服</option>
							<option value="行政">行政</option>
							<option value="技术">技术</option>
							<option value="关闭">关闭</option>

						</select>
						</br>
						门店属性:
						<select style="width: 100px;">
							<option value="请选择">请选择</option>
							<option value="无">无</option>
							<option value="直营">直营</option>
							<option value="加盟">加盟</option>
						</select>
						</br>
						归属共享圈:
						<select style="width: 100px;">
							<option value="请选择">请选择</option>
						</select>
						</br>
						是否为门店:<input type="radio" name="" id="" value="是" checked="checked" />是
						<input type="radio" name="" id="" value="否" />否
						</br>
						部门电话:<input type="text" name="" id="" value="11" style="width: 100px;" />
						</br>
						部门地址:<input type="text" name="" id="" value="11" style="width: 100px;" />
						</br>

						月应收业绩指标:<input type="text" name="" id="" value="11" style="width: 100px;" />元
						</br>
						月实收业绩指标:<input type="text" name="" id="" value="11" style="width: 100px;" />元
						</br>
						新增时间:<input type="date" name="" id="" value="11" style="width: 100px;" />
						</br>
						门店号码:<input type="text" name="" id="" value="11" style="width: 100px;" />
						</br>
						分机范围:<input type="text" name="" id="" value="11" style="width: 80px;" />-<input type="text" name="" id="" value="11" style="width: 80px;" />

					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>
		<!--
	作者：zq
	时间：2017-05-21
	描述：修改部门权限
-->
		<div class="modal fade" id="mymodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="width: 800px;">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">【userName】修改部门权限(权限)</h3>
					</div>
					<div class="modal-body">
						<div class="tabbable tabbable-custom tabbable-full-width">

							<ul class="nav nav-tabs">
								<li>
									<a href="#tab111" data-toggle="tab">部门定义</a>
								</li>
								<li>
									<a href="#tab222" data-toggle="tab">部门权限(行政跨部)</a>
								</li>
								<li>
									<a href="#tab333" data-toggle="tab">部门权限(地理跨区)</a>
								</li>

							</ul>

							<div class="tab-content">
								<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab111">

									<h4 style="color: green;">部门定义</h4> 序 号:<input type="text" name="" id="" value="11" style="width: 100px;" />
									</br>
									隶属于:
									<select style="width: 100px;">
										<option value="一级">一级</option>
										<option value="总部">总部</option>
										<option value="张瑛区域">张瑛区域</option>
										<option value="中兴路店">中兴路店</option>
										<option value="共和新路店">共和新路店</option>
										<option value="共和新路店">财务</option>
										<option value="共和新路店">软件开发</option>
										<option value="共和新路店">系统管理组</option>

									</select>
									</br>
									部门名称:<input type="text" name="" id="" value="11" style="width: 100px;" />
									</br>
									客源/房源编号前缀:<input type="text" name="" id="" value="11" placeholder="2-4位的大写字母或数字" style="width: 100px;" />
									</br>
									部门类型:
									<select style="width: 100px;">
										<option value="请选择">请选择</option>
										<option value="综合">综合</option>
										<option value="业务">业务</option>
										<option value="财务">财务</option>
										<option value="客服">客服</option>
										<option value="行政">行政</option>
										<option value="技术">技术</option>
										<option value="关闭">关闭</option>

									</select>
									</br>
									门店属性:
									<select style="width: 100px;">
										<option value="请选择">请选择</option>
										<option value="无">无</option>
										<option value="直营">直营</option>
										<option value="加盟">加盟</option>
									</select>
									</br>
									归属共享圈:
									<select style="width: 100px;">
										<option value="请选择">请选择</option>
									</select>
									</br>
									是否为门店:<input type="radio" name="optionsRadios1" id="" value="是" />是
									<input type="radio" name="optionsRadios1" id="" value="否" checked="checked" />否
									</br>
									部门电话:<input type="text" name="" id="" value="11" style="width: 100px;" />
									</br>
									部门地址:<input type="text" name="" id="" value="11" style="width: 100px;" />
									</br>

									月应收业绩指标:<input type="text" name="" id="" value="11" style="width: 100px;" />元
									</br>
									月实收业绩指标:<input type="text" name="" id="" value="11" style="width: 100px;" />元
									</br>
									新增时间:<input type="date" name="" id="" value="11" style="width: 100px;" />
									</br>
									门店号码:<input type="text" name="" id="" value="11" style="width: 100px;" />
									</br>
									分机范围:<input type="text" name="" id="" value="11" style="width: 80px;" />-<input type="text" name="" id="" value="11" style="width: 80px;" />

								</div>

								<div class="tab-pane row-fluid profile-account" id="tab222">
									<div style="width: 150px; float: left;">
										<h5>该部门员工只能查看所选部门的房客源记录</h5>
										<input type="text" name="" id="" value="请输入部门名称" /> &nbsp;<button type="button" class="btn green" style="margin-top: -10px;">查询</button>
										</br>
										<input type="checkbox" name="box" id="" />复制查看房源列
										</br>
										<input type="checkbox" name="box" id="" />复制查看客源列

										</br>
										<input type="checkbox" name="box" id="" />复制公盘看业主列

										</br>
										<input type="checkbox" name="box" id="" />复制私盘看业主列

										</br>
										<input type="checkbox" name="box" id="" />复制房源看跟进列
										</br>
										<input type="checkbox" name="box" id="" />复制客源看跟进列
										</br>
										<button type="button" class="btn green">复制到共享圈</button>
										</br>
										<button type="button" style="margin-top: 8px;" class="btn green" data-toggle="modal" data-target="#mymodal1">复制到部门</button>

									</div>
									<div style="float: right; ">
										<h5>该部门员工只能查看所选部门的房客源记录。</h5>
										<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
											<tr>
												<th>部门</th>
												<th><input type="checkbox" name="box" id="" />查看房源</th>
												<th><input type="checkbox" name="box" id="" />查看客源</th>
												<th><input type="checkbox" name="box" id="" />公盘看业主</th>
												<th><input type="checkbox" name="box" id="" />私盘看业主</th>
												<th><input type="checkbox" name="box" id="" />房源看跟进</th>
												<th><input type="checkbox" name="box" id="" />客源看跟进</th>
											</tr>
											<tr id="watch4">
												<td><input type="checkbox" name="box" id="" />userName</td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>
											</tr>
										</table>

									</div>

								</div>
								<div class="tab-pane row-fluid profile-account" id="tab333">
									<div style="width: 250px; float: left;">
										<h5>该部门员工只能查看所选区域的房客源记录</h5>

										<input type="checkbox" name="box" id="" />复制查看房源列
										</br>
										<input type="checkbox" name="box" id="" />复制查看客源列
										</br>
										<button type="button" class="btn green">复制到共享圈</button>
										</br>
										<button type="button" style="margin-top: 8px;" class="btn green" data-toggle="modal" data-target="#mymodal1">复制到部门</button>

									</div>
									<div style="float: right; width: 500px;">
										<h5>该部门员工只能查看所选部门的房客源记录。</h5>
										<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
											<tr>
												<th></th>
												<th>城区</th>
												<th>商圈</th>
												<th><input type="checkbox" name="box" id="" />查看客源</th>
												<th><input type="checkbox" name="box" id="" />查看客源</th>
											</tr>
											<tr id="watch4">
												<td><input type="checkbox" name="box" id="" /></td>
												<td>宝山区</td>
												<td>宝山西城</td>
												<td><input type="checkbox" name="box" id="" /></td>
												<td><input type="checkbox" name="box" id="" /></td>

											</tr>
										</table>

									</div>

								</div>
								<!--END TABS-->

							</div>

						</div>

					</div>

					<div class="modal-footer">
						<a href="#" id="checkAll1">全都选中</a>
						<a href="#" id="clear1">全部清除</a>
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：复制到部门
-->
		<div class="modal fade" id="mymodal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">将【userName】行政跨部权限保存到：</h3>
					</div>
					<div class="modal-body">
						<input type="text" name="" id="" value="请输入部门名称" /> <button type="button" class="btn green" style="margin-bottom: 10px;">查询</button>
						<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
							<tr>

								<th>部门</th>
								<th><input type="checkbox" name="" id="" /></th>
							</tr>
							<tr id="watch4">

								<td>userName</td>
								<td><input type="checkbox" name="" id="" /></td>

							</tr>
						</table>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：职务管理
-->
		<div class="modal fade" id="post" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">职务管理 </h3>
						<h5 style="color:green;"><a href="#" data-toggle="modal" data-target="#addpost">新增职务</a> </h5>
					</div>
					<div class="modal-body">
						<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
							<tr>

								<th>序号</th>
								<th>职务名称</th>
								<th>底薪</th>
								<th>级别</th>
								<th>职务属性</th>
								<th>业务</th>
								<th>店管</th>
								<th>区管</th>
								<th>区总</th>
								<th>副总</th>
								<th>总经</th>
								<th>操作</th>
							</tr>
							<tr id="watch4">

								<td>userName</td>
								<td>userName</td>
								<td>userName</td>
								<td>userName</td>
								<td>userName</td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td>
									<a href="#" data-toggle="modal" data-target="#modifypost">修改</a>
									<a href="#" data-toggle="modal" data-target="#modifypost1">合并</a>
									<a href="#">删除</a>
								</td>

							</tr>
						</table>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>
		<!--
	作者：zq
	时间：2017-05-21
	描述：批量设置考勤
-->
		<div class="modal fade" id="post1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">电子考勤批量设置 </h3>
					</div>
					<div class="modal-body">
						<h5 style="color: green;">考勤设置</h5> 批量设置部门:
						<select>
							<option selected="selected">全部</option>
							<option>总部</option>
							<option>张瑛区域</option>
							<option>中兴路店</option>
							<option>共和新路店</option>
							<option>财务</option>
							<option>软件开发</option>
							<option>系统管理组</option>
						</select>
						</br>
						批量设置职务:
						<select>
							<option selected="selected">全部</option>
							<option>试用业务员</option>
							<option>物业顾问</option>
							<option>区域经理</option>
							<option>文员</option>
							<option>分行经理</option>
							<option>总经理</option>
							<option>公共账户</option>
							<option>财务人员</option>
							<option>客服人员</option>
							<option>行政人员</option>
							<option>法务人员</option>
							<option>电脑管理员</option>
							<option>自助客户</option>
						</select>
						</br>
						规定上班时间:
						<div class="input-append date form_datetime">
							<input style="height: 24px;" size="16" type="text" value="" readonly>
							<span class="add-on"><i class="icon-th"></i></span>
						</div>
						</br>
						规定下班时间:
						<div class="input-append date form_datetime">
							<input style="height: 24px;" size="16" type="text" value="" readonly>
							<span class="add-on"><i class="icon-th"></i></span>
						</div>

					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：设置上级
-->
		<div class="modal fade" id="superior" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">设置上级 </h3>
					</div>
					<div class="modal-body">
						<h5>请设置所选员工上级员工:</h5>
						<div>
							<select style="text-align: center;">
								<option selected="selected">总部</option>
								<option>张瑛区域</option>
								<option>中兴路店</option>
								<option>共和新路店</option>
								<option>财务</option>
								<option>软件开发</option>
								<option>系统管理组</option>
							</select>
							<select>
								<option selected="selected">userName</option>
								<option>userName</option>
								<option>userName</option>
								<option>userName</option>
								<option>userName</option>
								<option>userName</option>
								<option>userName</option>
							</select>
						</div>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：职务管理增加
-->
		<div class="modal fade" id="addpost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">职务管理增加 </h3>
					</div>
					<div class="modal-body">
						<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
							<tr>

								<th>序号</th>
								<th>职务名称</th>
								<th>底薪</th>
								<th>级别</th>
								<th>职务属性</th>
								<th>业务</th>
								<th>店管</th>
								<th>区管</th>
								<th>区总</th>
								<th>副总</th>
								<th>总经</th>
							</tr>
							<tr>

								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td>
									<select style="width: 70px;">
										<option value="请选择">请选择</option>
										<option value="业务">业务</option>
										<option value="店长">店长</option>
										<option value="秘书">秘书</option>
										<option value="区总">区总</option>
										<option value="区管">区管</option>
										<option value="幕僚">幕僚</option>
									</select>
								</td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
							</tr>
						</table>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：职务管理修改
-->
		<div class="modal fade" id="modifypost" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">职务管理修改 </h3>
					</div>
					<div class="modal-body">
						<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
							<tr>

								<th>序号</th>
								<th>职务名称</th>
								<th>底薪</th>
								<th>级别</th>
								<th>职务属性</th>
								<th>业务</th>
								<th>店管</th>
								<th>区管</th>
								<th>区总</th>
								<th>副总</th>
								<th>总经</th>
								<th>操作</th>
							</tr>
							<tr>

								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td>
									<select style="width: 70px;">
										<option value="请选择">请选择</option>
										<option value="业务">业务</option>
										<option value="店长">店长</option>
										<option value="秘书">秘书</option>
										<option value="区总">区总</option>
										<option value="区管">区管</option>
										<option value="幕僚">幕僚</option>
									</select>
								</td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td>
									<a href="#">保存</a>
									<a href="#">取消</a>
								</td>

							</tr>
						</table>
					</div>

					<div class="modal-footer">
						<!--<button type="button" class="btn green">保存</button>-->
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>

		<!--
	作者：zq
	时间：2017-05-21
	描述：职务管理合并
-->
		<div class="modal fade" id="modifypost1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">职务管理合并 </h3>
					</div>
					<div class="modal-body">
						<table border="0" cellspacing="" cellpadding="" style="width: 100%; background-color: #eee">
							<tr>

								<th>序号</th>
								<th>职务名称</th>
								<th>底薪</th>
								<th>级别</th>
								<th>职务属性</th>
								<th>业务</th>
								<th>店管</th>
								<th>区管</th>
								<th>区总</th>
								<th>副总</th>
								<th>总经</th>
								<th>操作</th>
							</tr>
							<tr>

								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td><input type="text" name="" id="" value="userName" style="width: 60px;" /></td>
								<td>
									<select style="width: 70px;">
										<option value="请选择">请选择</option>
										<option value="业务">业务</option>
										<option value="店长">店长</option>
										<option value="秘书">秘书</option>
										<option value="区总">区总</option>
										<option value="区管">区管</option>
										<option value="幕僚">幕僚</option>
									</select>
								</td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td><input type="checkbox" name="" id="" /></td>
								<td>
									<a href="#">保存</a>
									<a href="#">取消</a>
								</td>

							</tr>
						</table>
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>
		
				<!--
	作者：zq
	时间：2017-05-21
	描述：保存权限到职务
-->
		<div class="modal fade" id="save" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">保存权限到职务 </h3>
					</div>
					<div class="modal-body">
						将所选权限保存到
						<select>
							<option selected="selected">试用业务员</option>
							<option>物业顾问</option>
							<option>区域经理</option>
							<option>文员</option>
							<option>分行经理</option>
							<option>总经理</option>
							<option>公共账户</option>
							<option>财务人员</option>
							<option>客服人员</option>
							<option>行政人员</option>
							<option>法务人员</option>
							<option>电脑管理员</option>
							<option>自助客户</option>
						</select>
						吗？
					</div>

					<div class="modal-footer">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>
		<!--
	作者：zq
	时间：2017-04-21
	描述：日历的js
-->

		<script type="text/javascript">
			$(".form_datetime").datetimepicker({
				format: "dd MM yyyy - hh:ii",
				startView: 0,
				minView: 0,
				autoclose: true,
				todayBtn: true,
				pickerPosition: "bottom-left"
			});
		</script>

	</body>
	<script>
		jQuery(document).ready(function() {
			$("#authority").css("display", "none");
			$("#department").css("display", "none");
			$("#mymodal").css("display", "none");
			$("#transaction").css("display", "none");
			$("#mymodal1").css("display", "none");
			$("#post").css("display", "none");
			$("#post1").css("display", "none");
			$("#superior").css("display", "none");
			$("#modifypost").css("display", "none");
			$("#modifypost1").css("display", "none");
			$("#addpost").css("display", "none");
			$("#save").css("display", "none");
		});
	</script>

	<SCRIPT type="text/javascript">
		var setting = {
			view: {
				selectedMulti: false
			},
			edit: {
				enable: true,
				showRemoveBtn: false,
				showRenameBtn: false
			},
			data: {
				keep: {
					parent: true,
					leaf: true
				},
				simpleData: {
					enable: true
				}
			},
			callback: {
				beforeDrag: beforeDrag,
				beforeRemove: beforeRemove,
				beforeRename: beforeRename,
				onRemove: onRemove
			}
		};

		var zNodes = [{
			id: 1,
			pId: 0,
			name: "父节点 1",
			open: true
		}, {
			id: 11,
			pId: 1,
			name: "叶子节点 1-1"
		}, {
			id: 12,
			pId: 1,
			name: "叶子节点 1-2"
		}, {
			id: 111,
			pId: 11,
			name: "叶子节点 1-3"
		}, {
			id: 2,
			pId: 0,
			name: "父节点 2",
			open: true
		}, {
			id: 21,
			pId: 2,
			name: "叶子节点 2-1"
		}, {
			id: 22,
			pId: 2,
			name: "叶子节点 2-2"
		}, {
			id: 23,
			pId: 2,
			name: "叶子节点 2-3"
		}, {
			id: 3,
			pId: 0,
			name: "父节点 3",
			open: true
		}, {
			id: 31,
			pId: 3,
			name: "叶子节点 3-1"
		}, {
			id: 32,
			pId: 3,
			name: "叶子节点 3-2"
		}, {
			id: 33,
			pId: 3,
			name: "叶子节点 3-3"
		}];
		var log, className = "dark";

		function beforeDrag(treeId, treeNodes) {
			return false;
		}

		function beforeRemove(treeId, treeNode) {
			className = (className === "dark" ? "" : "dark");
			showLog("[ " + getTime() + " beforeRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
			return confirm("确认删除 节点 -- " + treeNode.name + " 吗？");
		}

		function onRemove(e, treeId, treeNode) {
			showLog("[ " + getTime() + " onRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
		}

		function beforeRename(treeId, treeNode, newName) {
			if(newName.length == 0) {
				alert("节点名称不能为空.");
				var zTree = $.fn.zTree.getZTreeObj("treeDemo");
				setTimeout(function() {
					zTree.editName(treeNode)
				}, 10);
				return false;
			}
			return true;
		}

		function showLog(str) {
			if(!log) log = $("#log");
			log.append("<li class='" + className + "'>" + str + "</li>");
			if(log.children("li").length > 8) {
				log.get(0).removeChild(log.children("li")[0]);
			}
		}

		function getTime() {
			var now = new Date(),
				h = now.getHours(),
				m = now.getMinutes(),
				s = now.getSeconds(),
				ms = now.getMilliseconds();
			return(h + ":" + m + ":" + s + " " + ms);
		}

		var newCount = 1;

		function add(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				isParent = e.data.isParent,
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(treeNode) {
				treeNode = zTree.addNodes(treeNode, {
					id: (100 + newCount),
					pId: treeNode.id,
					isParent: isParent,
					name: "new node" + (newCount++)
				});
			} else {
				treeNode = zTree.addNodes(null, {
					id: (100 + newCount),
					pId: 0,
					isParent: isParent,
					name: "new node" + (newCount++)
				});
			}
			if(treeNode) {
				zTree.editName(treeNode[0]);
			} else {
				alert("叶子节点被锁定，无法增加子节点");
			}
		};

		function edit() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(nodes.length == 0) {
				alert("请先选择一个部门");
				return;
			}
			zTree.editName(treeNode);
		};

		function remove(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(nodes.length == 0) {
				alert("请先选择你要删除的部门");
				return;
			}
			var callbackFlag = $("#callbackTrigger").attr("checked");
			zTree.removeNode(treeNode, callbackFlag);
		};

		function clearChildren(e) {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(nodes.length == 0 || !nodes[0].isParent) {
				alert("请先选择一个父节点");
				return;
			}
			zTree.removeChildNodes(treeNode);
		};

		$(document).ready(function() {
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
			$("#addParent").bind("click", {
				isParent: true
			}, add);
			$("#addLeaf").bind("click", {
				isParent: false
			}, add);
			$("#edit").bind("click", edit);
			$("#remove").bind("click", remove);
			$("#clearChildren").bind("click", clearChildren);
		});

		$("#edit1").click(function() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(nodes.length == 0) {
				$("#mymodal").css("display", "none");
				alert("请选中你要修改的部门");
				$("#mymodal").modal({
					show: false
				});
			} else {
				$("#mymodal").css("display", "block");
				$("#mymodal").modal({
					show: true
				});
			}
		});
		$("#add1").click(function() {
			var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				treeNode = nodes[0];
			if(nodes.length == 0) {
				alert("请选择部门");
			} else {
				window.location.href = "addstaff.html";
			}
		});
	</SCRIPT>
 


	<script type="text/javascript">
	
	
	
		$(function() {		
					$("#checkAll").click(function() {
							
							$("input[name='subBox']").prop("checked",true );
					});
			$("#clear").click(function() {
				$("input[name='subBox']").prop("checked",false );
			})
		});
			$(function() {		
					$("#checkAll1").click(function() {
							
							$("input[name='box']").prop("checked",true );
					});
			$("#clear1").click(function() {
				$("input[name='box']").prop("checked",false );
			})
		});
	</script>

	<!-- END BODY -->

</html>
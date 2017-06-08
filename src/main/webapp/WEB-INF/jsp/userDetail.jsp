<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.css" rel="stylesheet">

		<link href="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/css/bootstrap-submenu.min.css" rel="stylesheet">

		<link rel="shortcut icon" href="media/image/favicon.ico" />

		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<!--
    	作者：zq
    	时间：2017-04-21
    	描述：bootstrap table
    -->
		<link href="media/css/bootstrap-table.css" rel="stylesheet" type="text/css" />

		<link href="media/css/fileinput.min.css" rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->
		<!--
    	作者：zq
    	时间：2017-04-20
    	描述：上传
    -->
		<link href="media/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />

		<!--<link rel="stylesheet" type="text/css" href="media/css/default1.css" />-->
		<link rel="stylesheet" type="text/css" href="media/css/base.css" />

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
									<a href="#">客源详情</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->
					<div class="span12">
						<div class="detail1">
							<p class="detail2"><span class="detail4">${client.transaction}</span>${client.clientname}</p>
							<p class="detail3">ZY0000177</p>
							<p class="detail5">
                                ${client.application} ${client.purchasingPrice}万 ${client.willingAddress}
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="back/client/detail/edit/${client.id}"> + 编辑 + </a>
                            </p>
						</div>

						<div>
							<div style="margin-top: 10px;">
								<table style="margin-left: 60px;">
									<tr>
                                        <td><span id="sp14">状态</span></td>
										<td><span id="sp13">${client.status}</span> </td>
										<td><span id="sp14">价格</span></td>
										<td> <span id="sp13">
                                            ${client.purchasingPrice}万
												</span> </td>
										<td><span id="sp14">类型</span></td>
										<td> <span id="sp13">
                                            ${client.gener}
												</span> </td>

                                        <td><span id="sp14">入住人年龄</span></td>
                                        <td><span id="sp13">${client.clientAge}</span> </td>

									</tr>

									<tr>
                                        <td><span id="sp14">到期日</span></td>
										<td><span id="sp13"><fmt:formatDate value="${client.maturity}" pattern="yyyy-MM-dd"/></span> </td>
										<td><span id="sp14">属性</span></td>
										<td> <span id="sp13">
                                            ${client.attribute}
												</span> </td>
										<td><span id="sp14">来源</span></td>
										<td><span id="sp13">${client.source}</span> </td>
										<td><span id="sp14">委托日期</span></td>
										<td> <span id="sp13">
                                            <fmt:formatDate value="${client.precatoryDate}" pattern="yyyy-MM-dd"/>

												</span> </td>
									</tr>
									<tr>
                                        <td><span id="sp14">委托方式</span></td>
										<td><span id="sp13">${client.precatoryMethod}</span> </td>
										<td><span id="sp14">客户等级</span></td>
										<td> <span id="sp13">
                                            ${client.rank}
												</span> </td>
										<td><span id="sp14">客户类别</span></td>
										<td><span id="sp13">${client.type}</span> </td>
										<td><span id="sp14">客户意向</span></td>
										<td> <span id="sp13">
                                            ${client.intention}
												</span> </td>
									</tr>
									<tr>
                                        <td><span id="sp14">客户期限</span></td>
										<td><span id="sp13">${client.deadline}</span> </td>
										<td><span id="sp14">付款</span></td>
										<td> <span id="sp13">
                                            ${client.payment}
												</span> </td>
										<td><span id="sp14">付佣</span></td>
										<td><span id="sp13">${client.paymentCommission}</span> </td>
										<td><span id="sp14">客户现住</span></td>
										<td><span id="sp13">${client.nowAddress}</span> </td>
									</tr>
									<tr>
                                        <td><span id="sp14">现住址</span></td>
										<td><span id="sp13">${client.address}</span> </td>
									</tr>

									<tr>
										<td><span id="sp14">备注</span></td>
										<td><span id="sp13">${client.remark}</span> </td>
									</tr>
									<tr>
                                        <td><span id="sp14">房型</span></td>
										<td><span id="sp13">${client.housetype}</span> </td>
										<td><span id="sp14">朝向</span></td>
										<td> <span id="sp13">
                                            ${client.orientation}
												</span> </td>
										<td><span id="sp14">装修</span></td>
										<td><span id="sp13">${client.decoration}</span> </td>
										<td><span id="sp14">配套</span></td>
										<td> <span id="sp13">
                                            ${client.development}
												</span> </td>
									</tr>
									<tr>
                                        <td><span id="sp14">面积</span></td>
										<td><span id="sp13">${client.area}</span> </td>
										<td><span id="sp14">楼层</span></td>
										<td> <span id="sp13">
                                            ${client.floor}
											</span> </td>
									</tr>
								</table>
			<!--
                        	作者：zq
                        	时间：2017-05-24
                        	描述：右边栏
                        -->					
								<div class="button11">
									<button type="button" class="btn green" id="clickme1">看客户</button>
									<button type="submit" class="btn green" onclick="location.href='back/personnelMinistry/user/tapeWatch/${client.id}'" >写带看</button>
									<div id="hide1">
										<table>
											<tr>
												<td>联系人</td>
												<td><span id="sp13">0</span></td>
											</tr>
											<tr>
												<td>电话1</td>
												<td><span id="sp13">0</span></td>
											</tr>
											<tr>
												<td>电话2</td>
												<td><span id="sp13">0</span></td>
											</tr>
											<tr>
												<td>证件</td>
												<td><span id="sp13">0</span></td>
											</tr>
											<tr>
												<td>备注</td>
												<td><span id="sp13">0</span></td>
											</tr>

										</table>
										<a href="#" data-toggle="modal" data-target="#editfollow">编辑</a>&nbsp;&nbsp;
										<a href="#">禁止查看业主</a>&nbsp;&nbsp;
									</div>
									<div style="margin-top: 15px;">
										<button type="button" class="btn">发送请报</button>
										<button type="button" class="btn">发布到微门店</button>
										<div style="margin-top: 10px;">
											<button type="button" class="btn">收藏</button>
											<button type="button" class="btn btn-large">禁止发布到门店</button>
										</div>
									</div>
									<div>
										<h5 style="font-size: 15px;">相关员工 <span style="float: right;"><a href="#">编辑</a></span></h5>
										<p>张瑛区域 张瑛</p>
										<p>员工</p>
										<p>首次录入
										</p>
										<p>2017-05-03 20:31:07 张瑛区域 张瑛</p>
										<p>最后跟进</p>
										<p>2017-05-03 20:46:07 张瑛区域 张瑛</p>
										<p>最后修改</p>
										<p>2017-05-13 20:34:45 共和新路店 庞盼盼</p>

									</div>
						</div>
								
								
				</div>
								<!--
                                	作者：zq
                                	时间：2017-05-24
                                	描述：tab切换开始
                                -->
								<div class="tabbable tabbable-custom tabbable-full-width" style="width: 800px; margin-left: -30px; margin-top: -180px;">
									<ul class="nav nav-tabs">
										<li>
											<a href="#tab1" data-toggle="tab">跟进记录(1)</a>
										</li>

										<li>
											<a href="#tab2" data-toggle="tab">带看房源(1) </a>
										</li>
									</ul>

									<div class="tab-content">
										<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab1">
											<div>
												<input type="date" name="" id="" value="" style="width: 120px; height: 30px;" />-<input type="date" name="" id="" value="" style="width: 120px;height: 30px;" />
												<select style="width: 90px;">
													<option>全部跟进</option>
													<option>写入跟进</option>
													<option>修改跟进</option>
													<option>其他跟进</option>
												</select>
												<select style="width: 90px;">
													<option selected="selected">总部</option>
													<option>张瑛区域</option>
													<option>中兴路店</option>
													<option>共和新路店</option>
													<option>财务</option>
													<option>软件开发</option>
													<option>系统管理组</option>
												</select>
												<select style="width: 90px;">
													<option selected="selected">name</option>
													<option>zq</option>
													<option>zq</option>
													<option>yf</option>
													<option>xzw</option>
													<option>name</option>
													<option>name</option>
												</select>
												<input type="text" name="" id="" value="" placeholder="关键词" style="width: 65px;" />
												<input type="checkbox" name="" id="" value="" />有录音
												<input type="checkbox" name="" id="" value="" />有短信
												<span style="float: right;"><a href="#" data-toggle="modal" data-target="#userfollow">写跟进</a></span>
											</div>
											<div>
												<div class="htmleaf-container">
													<div class="container">
														<div id="timeline">
															<div class="timeline-item">
																<div class="timeline-icon">
																	<img src="media/image/star.svg" alt="">
																</div>
																<div class="timeline-content">
																	<h5>2017-5-30</h5>
																	<p>
																		【来电】700万以内的两房 小区要新一点的 比较中意中兴财富 礼拜天有时间看房
																	</p>
																	<p>20:46:07　张瑛区域 张瑛（区域经理）
																		<a href="#">删除</a>
																	</p>
																</div>
															</div>
														</div>
													</div>
												</div>
												<!--
	作者：zq
	时间：2017-05-25
	描述：进度条结束
-->
											</div>
										</div>

										<div class="tab-pane row-fluid profile-account" id="tab2">

											<table id="seeHouse"></table>
										</div>
										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab2结束
                            -->

									</div>
								</div>
								<!-- 详情页包含详情页信息和tab切换-->
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
		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap-submenu/2.0.4/js/bootstrap-submenu.min.js"></script>

		<script src="media/js/fileinput.min.js" type="text/javascript"></script>

		<script src="media/js/fileinput_locale_zh.js" type="text/javascript"></script>

		<script src="media/js/nicEdit.js" type="text/javascript"></script>

		<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>

		<!--bootstrap-table-->
		<script src="media/js/bootstrap-table.js"></script>

		<script src="media/js/bootstrap-table-export.js"></script>

		<script src="media/js/jquery.base64.js"></script>

		<script src="media/js/tableExport.js"></script>

		<script type="text/javascript">
			$(function() {
				$('#seeHouse').bootstrapTable({
					method: 'GET',
					url: 'back/client/${client.id}/takeWatch/list',
					cache: false,
					striped: true,
					pagination: true,
					pageSize: 5,
					pageNumber: 1,
					pageList: [10, 20, 50, 100, 200, 500],
					columns: [{
                        field: "takeNumber",
                        title: "带看编号",
                        align: "center",
                        valign: "middle",
                        sortable: "true"
                    }, {
							field: "inspector",
							title: "房源编号",
							align: "center",
							valign: "middle",
							sortable: "true"
						},
                        {
                            field: "lastTime",
                            title: "创建时间",
                            align: "center",
                            valign: "middle",
                            sortable: "true"
                        },
                        {
                            field: "status",
                            title: "状态",
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
							formatter: function(value, row, index) {
								var e = '<a href="#" data-toggle="modal" data-target="#userfollow">查看详情   </a>';
								var g = '<a href="#">删除</a>';
								return e + g;
							}

						}
					],
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
						//$("#pageSizeInput ").val(size);
						//$("#pageNumberInput ").val(number);

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
					$('#seeHouse').bootstrapTable('resetView');
				});
			});
		</script>
		
		
		<script type="text/javascript">
			$(document).ready(function(){
				$("#hide1").hide();
				$("#clickme1").click(function(){
					$("#hide1").toggle();
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

		<!--
	作者：zq
	时间：2017-05-25
	描述：写跟进
-->
		<div class="modal fade" id="userfollow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true "></span></button>
						<h3 class="modal-title" id="exampleModalLabel">写跟进 </h3>
					</div>
					<div class="modal-body">
						<table>

							<tr>
								<td>填写时间时间</td>
								<td><span id="sp13">0</span></td>
							</tr>
							<tr>
								<td>跟进人</td>
								<td><span id="sp13">0</span></td>
								<td><span id="sp13">0</span></td>
							</tr>
							<tr>
								<td>跟进方式</td>
								<td>
									<select>
										<option>带看</option>
									</select>
								</td>
							</tr>
							<tr style="margin-top: 100px;">
								<td>跟进内容</td>
								<td>
									<textarea rows="3" cols="50" style="width:300px;">
										
									</textarea>
								</td>

							</tr>
							<tr>
								<td>
									<input type="checkbox" name=" " id=" " value=" " />下次提醒
								</td>
							</tr>
							<table style="margin-top: 20px; background-color: #eee; width: 600px;">
								<tr>
									<td>提醒时间</td>
									<td>
										<input type="date" name=" " id=" " value=" " style="width: 70px;" />
									</td>
									<td>提醒范围</td>
									<td>
										<select style="width: 70px;">
											<option selected="selected">总部</option>
											<option>张瑛区域</option>
											<option>中兴路店</option>
											<option>共和新路店</option>
											<option>财务</option>
											<option>软件开发</option>
											<option>系统管理组</option>
										</select>
										<select style="width: 70px;">
											<option selected="selected">name</option>
											<option>zq</option>
											<option>zq</option>
											<option>yf</option>
											<option>xzw</option>
											<option>name</option>
											<option>name</option>
										</select>
									</td>
								</tr>
								<tr style="margin-top: 100px;">
									<td>提醒内容</td>
									<td>
										<textarea rows="3" cols="50 " style="width:300px ;">
										
									</textarea>
									</td>

								</tr>
							</table>
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
	描述：编辑业主
-->
		<div class="modal fade" id="editfollow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true "></span></button>
						<h3 class="modal-title" id="exampleModalLabel ">编辑业主或联系人 </h3>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td>身份1</td>
								<td>
									<select>
										<option>请选择</option>
										<option>业主</option>
										<option>联系人</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>姓名</td>
								<td><input type="text" name=" " id=" " value=" " style="height: 30px; margin-left: -15px;"/></td>
							</tr>
							<tr>
								<td>电话1</td>
								<td><input type="text" name=" " id=" " value=" " style="height: 30px; margin-left: -15px;"/></td>

							</tr>
							<tr>
								<td>电话2</td>
								<td>
									<input type="text" name=" " id=" " value=" " style="height: 30px; margin-left: -15px;"/>
								</td>
							</tr>
							<tr>
								<td>证件</td>
								<td>
									<select>
										<option>请选择</option>
										<option>身份证</option>
										<option>军人证</option>
										<option>护照</option>
										<option>港澳通行证</option>
										<option>台胞证</option>
									</select>
								</td>
							</tr>
							<tr style="margin-top: 100px;">
                                <td>备注</td>
								<td>
									<textarea rows="3" cols="50" style="width:300px ; height: 50px;">	
									</textarea>
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
		
		<script>
			jQuery(document).ready(function() {
				$("#userfollow").css("display", "none");
				$("#editfollow").css("display", "none");
			});
		</script>
	</body>

	<!-- END BODY -->

</html>
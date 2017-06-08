<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

		<link href="media/css/bootstrap.css" rel="stylesheet" type="text/css" />

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="https://cdn.bootcss.com/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css" rel="stylesheet">

		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<link href="media/css/zq1.css" rel="stylesheet" type="text/css" />

		<link href="media/css/zq2.css" rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->

		<!-- BEGIN PAGE LEVEL STYLES -->
		<!--
    	作者：offline
    	时间：2017-04-21
    	描述：bootstrap table
    -->
		<link href="media/css/bootstrap-table.css" rel="stylesheet" type="text/css" />

		<!--<link href="media/css/daterangepicker.css" rel="stylesheet" type="text/css" />-->

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
									<a href="userselect.html">用户查询</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->

					<!-- BEGIN PORTLET-->

					<!--<div class="portlet">-->
					<div id="reportTableDiv">
						<div>

							<div class="box">

								<div id="nav-menu">
									<ul class="menu">
										<li class="stmenu">
											<a href="#" id="T" class="xialaguang"><span>全部时间</span></a>
											<ul id="a1" class="children">
												<li>
													<a href="#"><span>今日新客</span></a>
												</li>
												<li>
													<a href="#"><span>最近三天</span></a>
												</li>
												<li>
													<a href="#"><span>最近七天</span></a>
												</li>
												<li>
													<a href="#"><span>最近半月</span></a>
												</li>
												<li>
													<a href="#"><span>最近一月</span></a>
												</li>
												<li>
													<a href="#"><span>最近三月</span></a>
												</li>
												<li>
													<a href="#"><span>全部显示</span></a>
												</li>
											</ul>
										</li>
										<li class="stmenu">
											<a href="#" id="T1" class="xialaguang"><span>求购</span></a>
											<ul id="a2" class="children">
												<li>
													<a href="#"><span>今日买客</span></a>
												</li>
												<li>
													<a href="#"><span>最近三天</span></a>
												</li>
												<li>
													<a href="#"><span>最近七天</span></a>
												</li>
												<li>
													<a href="#"><span>最近半月</span></a>
												</li>
												<li>
													<a href="#"><span>最近一月</span></a>
												</li>
												<li>
													<a href="#"><span>最近三月</span></a>
												</li>
												<li>
													<a href="#"><span>全部显示</span></a>
												</li>
											</ul>
										</li>
										<li class="stmenu">
											<a href="#" id="T2" class="xialaguang"><span>求租</span></a>
											<ul id="a3" class="children">
												<li>
													<a href="#"><span>今日租客</span></a>
												</li>
												<li>
													<a href="#"><span>最近三天</span></a>
												</li>
												<li>
													<a href="#"><span>最近七天</span></a>
												</li>
												<li>
													<a href="#"><span>最近半月</span></a>
												</li>
												<li>
													<a href="#"><span>最近一月</span></a>
												</li>
												<li>
													<a href="#"><span>最近三月</span></a>
												</li>
												<li>
													<a href="#"><span>全部显示</span></a>
												</li>
											</ul>
										</li>
										<li class="stmenu">
											<a href="#" id="T3" class="xialaguang"><span>状态</span></a>
											<ul id="a4" class="children">
												<li>
													<a href="#"><span>不限</span></a>
												</li>
												<li>
													<a href="#"><span>有效</span></a>
												</li>
												<li>
													<a href="#"><span>有效+暂缓</span></a>
												</li>
												<li>
													<a href="#"><span>非有效</span></a>
												</li>
												<li>
													<a href="#"><span>预定</span></a>
												</li>
												<li>
													<a href="#"><span>已购</span></a>
												</li>
												<li>
													<a href="#"><span>我购</span></a>
												</li>
												<li>
													<a href="#"><span>已租</span></a>
												</li>
											</ul>
										</li>
										<li class="stmenu">
											<a href="#" class="xialaguang"><span><strong style="color: green; font-size: 20px;">优</strong> 优质客</span></a>
											<ul class="children">
												<li>
													<a href="#"><span><strong style="color: green; font-size: 20px;">优</strong> 优质客</span></a>
												</li>
											</ul>
									</ul>
								</div>

							</div>

							<div style="float: right; margin-top:-20px ;">
								<a href="#" data-toggle="modal" data-target="#exampleModal">收藏夹管理</a>
							</div>
						</div>
						<div>
							<div>
								<select class="selecthouse1" style="margin-top: 10px; height:34px ;">
									<option value=" ">交易不限</option>
									<option value=" " selected>求购</option>
									<option value=" ">求租</option>
									<option value=" ">租购</option>
									<option value=" ">仅购</option>
									<option value=" ">仅租</option>
								</select>

								<select class="selecthouse1" style="margin-top: 10px; height:34px ;">
									<option value=" ">状态不限</option>
									<option value=" " selected>有效</option>
									<option value=" ">有效+预定</option>
									<option value=" ">有效+暂缓</option>
									<option value=" ">非有效</option>
									<option value=" ">预定</option>
									<option value=" ">已购</option>
									<option value=" ">已租</option>
									<option value=" ">我购</option>
									<option value="">我租</option>
									<option value=" ">暂缓</option>
									<option value=" ">未知</option>
									<option value=" ">无效</option>
								</select>

								<select class="selecthouse1" style="margin-top: 10px; height:34px ;">
									<option value=" " selected>房型不限</option>
									<option value=" ">单间</option>
									<option value=" ">1房</option>
									<option value=" ">2房</option>
									<option value=" ">3房</option>
									<option value=" ">4房</option>
									<option value=" ">5房</option>
									<option value=" ">单间+1房</option>
									<option value=" ">1-2房</option>
									<option value=" ">2-3房</option>
									<option value=" ">3-4房</option>
									<option value=" ">4-5房</option>
									<option value=" ">6房以上</option>
								</select>

								<select class="selecthouse1" style="margin-top: 10px; height:34px ;">
									<option value=" " selected>属性不限</option>
									<option value=" ">公客</option>
									<option value=" ">私客</option>
								</select>
								<select class="selecthouse1" style="margin-top: 10px; height:34px ;">
									<option value=" " selected>收藏不限</option>
									<option value=" ">默认收藏夹</option>
								</select>
								<select id="example-allSelectedText-includeSelectAllOption" multiple="multiple">
									<option value="1">宝山区</option>
									<option value="2">常宁区</option>
									<option value="3">崇明区</option>
									<option value="4">奉贤区</option>
									<option value="5">虹口区</option>
									<option value="6">黄浦区</option>
									<option value="6">嘉定区</option>
									<option value="7">金山区</option>
									<option value="8">静安区</option>
									<option value="9">闵行区</option>
									<option value="10">浦东新区</option>
									<option value="11">普陀区</option>
									<option value="12">松江区</option>
									<option value="13">徐汇区</option>
									<option value="14">杨浦区</option>
								</select>

								<input type="text" placeholder="编号/位置/客户名/电话/备注" style="margin-top: 8px; height:25px ;" />
								<a href="#" class="btn green" style="margin-top: -3px; height: 20px;">查询 </a>
								<button type="button" id="clickme" class="btn btn-default btn-lg" style="float: right; height:30px ;">
                            <span class="icon-double-angle-down"></span> 
                            </button>
							</div>
							<div id="phide">

								<div class="area">
									<ul class="clearfix">
										<select class="selecthouse2">
											<option value=" " selected>日期</option>
											<option value=" ">委托日期</option>
											<option value=" ">最后跟近日</option>
											<option value=" ">首次录入日</option>
										</select>
										-<input type="date" value="" / class="selecthouse2">-<input type="date" value="" / class="selecthouse2">
										<select class="selecthouse2">
											<option value=" " selected>用途不限</option>
											<option value=" ">住宅</option>
											<option value=" ">商住</option>
											<option value=" ">商铺</option>
											<option value=" ">网店</option>
											<option value=" ">写字楼</option>
											<option value=" ">厂房</option>
											<option value=" ">写厂</option>
											<option value=" ">铺厂</option>
											<option value=" ">仓库</option>
											<option value=" ">地皮</option>
											<option value=" ">车库</option>
											<option value=" ">其他</option>
										</select>
										<select class="selecthouse2">
											<option value=" " selected>朝向不限</option>
											<option value=" ">南北</option>
											<option value=" ">东西</option>
											<option value=" ">南</option>
											<option value=" ">北</option>
											<option value=" ">东</option>
											<option value=" ">西</option>
											<option value=" ">东南</option>
											<option value=" ">西南</option>
											<option value=" ">西北</option>
											<option value=" ">东北</option>
										</select>
										<select class="selecthouse2">
											<option value="" selected>类型不限</option>
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
										<select class="selecthouse2">
											<option value="" selected>类别不限</option>
											<option value="">老板</option>
											<option value="">高管</option>
											<option value="">白领</option>
											<option value="">打工</option>
											<option value="">个体户</option>
											<option value="">公务员</option>
											<option value="">工程师</option>
											<option value="">自由职业</option>
											<option value="">教师</option>
											<option value="">医生</option>
											<option value="">律师</option>
											<option value="">农民</option>
											<option value="">无业</option>
											<option value="">其他</option>
										</select>
										<select class="selecthouse2">
											<option value=" " selected>其他不限</option>
											<option value=" ">单价</option>
											<option value=" ">登记人</option>
											<option value=" ">商铺位置</option>
											<option value=" ">写字楼级别</option>
											<option value=" ">地皮规划</option>
											<option value=" ">车位位置</option>
											<option value=" ">等级</option>
											<option value=" ">现住</option>
											<option value=" ">意向</option>
											<option value=" ">限期</option>
											<option value=" ">装修</option>
											<option value=" ">配套</option>
											<option value=" ">付款</option>
											<option value=" ">付佣</option>
											<option value=" ">公私</option>
											<option value=" ">委托</option>
											<option value=" ">来源</option>
											<option value=" ">审核</option>
											<option value=" ">空调要求</option>
											<option value=" ">上下水</option>
										</select>
										<li class="return_reques">
											<input type="text" name="" value="最小面积" class="local select_style provin_select" readonly>
											<div class="clearfix pa">
												<div class="bomb_con_style provin_con none">
													<dl>
														<dd>50</dd>
														<dd>100</dd>
														<dd>150</dd>
														<dd>200</dd>
														<dd>250</dd>
														<dd>300</dd>
													</dl>
												</div>
											</div>
										</li>
										<li class="return_reque">
											<input type="text" name="" value="最大面积" class="local select_style provin_select" readonly style="margin-left: -7px;">
											<div class="clearfix pa">
												<div class="bomb_con_style provin_con none">
													<dl>
														<dd>50</dd>
														<dd>100</dd>
														<dd>150</dd>
														<dd>200</dd>
														<dd>250</dd>
														<dd>300</dd>
													</dl>
												</div>
											</div>
										</li>
									</ul>
									</br>
									<select class="selecthouse2">
										<option value="1" selected>价格</option>
										<option value="2">单价</option>
									</select>
									<ul class="clearfix">
										<li class="return_reques">
											<input type="text" name="" value="最低价格" class="local select_style provin_select" readonly>
											<div class="clearfix pa">
												<div class="bomb_con_style provin_con none">
													<dl>
														<dd>50</dd>
														<dd>100</dd>
														<dd>150</dd>
														<dd>200</dd>
														<dd>250</dd>
														<dd>300</dd>
													</dl>
												</div>
											</div>
										</li>
										<li class="return_reque">
											<input type="text" name="" value="最高价格" class="local select_style provin_select" readonly>
											<div class="clearfix pa">
												<div class="bomb_con_style provin_con none">
													<dl>
														<dd>50</dd>
														<dd>100</dd>
														<dd>150</dd>
														<dd>200</dd>
														<dd>250</dd>
														<dd>300</dd>
													</dl>
												</div>
											</div>
										</li>
									</ul>
									<input type="checkbox" value="" />智能包含备注
									<input type="checkbox" value="" checked="" />公共账户
									<input type="checkbox" value="" />优质客
								</div>
							</div>
							<div class="submit-btn" style="margin-top: -5px;">
								<a href="usertapeWatch.html" class="btn green" id="tape">填写带看单 </a>
								<a href="#" class="btn green" data-toggle="modal" data-target="#move">归属转移 </a>
								<a href="userDetail.html" class="btn green">查看详情 </a>
							</div>
						</div>
						<table id="reportTable">
						</table>
					</div>

					<!--	</div>-->

					<!-- END PORTLET-->

				</div>

			</div>

		</div>

		<!-- END PAGE CONTAINER-->

		</div>

		<!-- END PAGE -->

		</div>


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

		<!--  <script src="media/js/bootstrap.js" type="text/javascript"></script>-->

		<script src="https://cdn.bootcss.com/bootstrap-modal/2.2.6/js/bootstrap-modal.min.js"></script>

		<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<!--<script src="media/js/bootstrap.js" type="text/javascript"></script>-->

		<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

		<!--
	作者：zq
	时间：2017-05-08
	描述：下拉列表
-->
		<!--
	作者：zq
	时间：2017-05-04
	描述：多选
-->
		<script src="https://cdn.bootcss.com/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

		<!--
        	作者：zq
        	时间：2017-05-04
        	描述：下拉菜单js
        -->
		<script src="https://cdn.bootcss.com/dropdown.js/0.0.2dev/jquery.dropdown.js"></script>

		<!--
    	作者：zq
    	时间：2017-04-21
    	描述：bootatrap table js
    -->
		<script src="media/js/bootstrap-table.js"></script>

		<script src="media/js/bootstrap-table-export.js"></script>

		<script src="media/js/jquery.base64.js"></script>

		<script src="media/js/tableExport.js"></script>
		<!-- END PAGE LEVEL PLUGINS -->

		<script type="text/javascript">
			$(document).ready(function() {
				$('#example-allSelectedText-includeSelectAllOption').multiselect({
					includeSelectAllOption: true,
					allSelectedText: 'No option left ...'
				});
			});
		</script>
		<!-- BEGIN PAGE LEVEL SCRIPTS -->

		<script src="media/js/app.js" type="text/javascript"></script>

		<script src="media/js/index.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL SCRIPTS -->

		<script type="text/javascript">
			$(function() {
				$('#reportTable').bootstrapTable({
					method: 'POST',
					url: 'back/client/getList',
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
						field: "",
						title: "!",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "id",
						title: "客源编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "transaction",
						title: "交易",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "clientname",
						title: "客户",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "precatoryDate",
						title: "委托日",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "willingAddress",
						title: "位置",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "floor",
						title: "楼层",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "housetype",
						title: "房型",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "area",
						title: "面积",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "purchasingPrice",
						title: "价格",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "application",
						title: "用途",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "organizationname",
						title: "部门",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "username",
						title: "经纪人",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "attribute",
						title: "公私",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_property_use",
						title: "最后跟进日",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_compeleted_min_year",
						title: "最后带看时",
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
                            var e = '<a href="back/client/detail/'+row.id +'">' + " 查看详情 " + '</a>';
                            var d = '<a onclick=removeClient("'  + row.id + '")>' + " 删除 " + '</a>';
                            return e+d;
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
					$('#reportTable').bootstrapTable('resetView');
				});
			});
		</script>

		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();
			});
		</script>

		<!--
	作者：zq
	时间：2017-05-08
	描述：下拉列表
-->
		<script type="text/javascript">
			$('#nav-menu .menu > li').hover(function() {
				$(this).find('.children').animate({
					opacity: 'show',
					height: 'show'
				}, 200);
				$(this).find('.xialaguang').addClass('navhover');
			}, function() {
				$('.children').stop(true, true).hide();
				$('.xialaguang').removeClass('navhover');
			});
			$(" #a1 li a").click(function() {

				$('#T').text($(this).text());
				$('#T').css("font-family", "微软雅黑");
				$('#T').css("font-weight", "bold");
				$('#T').css("color", "gray");
				$('#T').css("font-size", "13px");
			});
			$(" #a2 li a").click(function() {

				$('#T1').text($(this).text());
				$('#T1').css("font-family", "微软雅黑");
				$('#T1').css("font-weight", "bold");
				$('#T1').css("color", "gray");
				$('#T1').css("font-size", "13px");
			});
			$(" #a3 li a").click(function() {

				$('#T2').text($(this).text());
				$('#T2').css("font-family", "微软雅黑");
				$('#T2').css("font-weight", "bold");
				$('#T2').css("color", "gray");
				$('#T2').css("font-size", "13px");
			});
			$(" #a4 li a").click(function() {

				$('#T3').text($(this).text());
				$('#T3').css("font-family", "微软雅黑");
				$('#T3').css("font-weight", "bold");
				$('#T3').css("color", "gray");
				$('#T3').css("font-size", "13px");
			});
		</script>

		<!--
	作者：zq
	时间：2017-05-08
	描述：最大面积以及最小面积
-->
		<script>
			$(function() {
				function select_simulated(select_style, bomb_con_style) {
					$(document).click(function() {
						$(bomb_con_style).hide();
					})
					$(select_style).live('click', function(e) {
						var thisinput = $(this);
						var local = $(this).position();
						var bomb_con = $(bomb_con_style);
						$(this).parents("li").siblings().find(bomb_con_style).hide();
						$(this).parent().find(bomb_con_style).width($(this).width()); //下拉框的宽度
						$(this).parent().find(bomb_con_style).show();
						e ? e.stopPropagation() : event.cancelBubble = true;
						bomb_con.find("dd").click(function(e) {
							var bomb_text = $(this).text();
							$(this).addClass("selected").siblings().removeClass("selected");
							$(this).parents(bomb_con_style).hide();
							$(this).parents("li").find(select_style).val(bomb_text);
							e ? e.stopPropagation() : event.cancelBubble = true;

						});
					});
					return false;
				}
				select_simulated(".provin_select", ".provin_con");

				$(".local").focus(function() {
					$(this).addClass("local3");
				});
				$(".local").blur(function() {
					$(this).removeClass("local3");
				});
			})
		</script>
		<!--
	作者：zq
	时间：2017-05-05
	描述：显示和隐藏
-->
		<script type="text/javascript">
			$(document).ready(function() {
				$("#phide").hide();
				$("#clickme").click(function() {
					$("#phide").toggle();
				});
			});
		</script>
		<!-- END JAVASCRIPTS -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h4 class="modal-title" id="exampleModalLabel">收藏夹管理</h4>
					</div>
					<div class="modal-body">
						<form>
							<table id="table1">

							</table>

						</form>
					</div>

					<div class="modal-footer" style="float: left;">
						收藏夹名:<input type="text" id="test" name="收藏夹名" />
						<button type="button" class="btn green" style="height: 30px; margin-top: -8px;" onclick="createFavorites()">新增收藏夹</button>
					</div>

				</div>
			</div>
		</div>
		</div>
		<!--
	作者：zq
	时间：2017-05-11
	描述：收藏夹保存
-->
		<div class="modal fade" id="modify" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>

			</div>
			<form>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>序号</th>
							<th>名称</th>
							<th>类型</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><input type="text" name="" id="" value="111" /></td>
							<td>客源</td>
							<td>
								<a href="#">保存</a>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<!--
	作者：zq
	时间：2017-05-11
	描述：归属转移
-->

		<div class="modal fade" id="move" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h4 class="modal-title" id="exampleModalLabel">归属转移</h4>
					</div>
					<div class="modal-body">
						<div>
							经济人1:
							<select>
								<option value="" selected>无</option>
								<option value="">总部</option>
								<optgroup label="张瑛区域">
									<option value="">中新路店</option>
									<option value="">共和新路店</option>
								</optgroup>
								<option value="">财务</option>
								<option value="">软件开发</option>
								<option value="">系统管理组</option>
							</select>
							<select>
								<option value="" selected>保留</option>
							</select>
						</div>
						经济人2:
						<select>
							<option value="" selected>无</option>
							<option value="">总部</option>
							<optgroup label="张瑛区域">
								<option value="">中新路店</option>
								<option value="">共和新路店</option>
							</optgroup>
							<option value="">财务</option>
							<option value="">软件开发</option>
							<option value="">系统管理组</option>
						</select>
						<select>
							<option value="" selected>保留</option>
						</select>
						</br>
						经济人3:
						<select>
							<option value="" selected>无</option>
							<option value="">总部</option>
							<optgroup label="张瑛区域">
								<option value="">中新路店</option>
								<option value="">共和新路店</option>
							</optgroup>
							<option value="">财务</option>
							<option value="">软件开发</option>
							<option value="">系统管理组</option>
						</select>
						<select>
							<option value="" selected>保留</option>
						</select>

					</div>

					<div class="modal-footer" style="float: ;">
						<button type="button" class="btn green">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">关闭</button>
					</div>

				</div>
			</div>
		</div>		
		
		
		<script type="text/javascript">
			$(function() {
				$('#table1').bootstrapTable({
					method: 'POST',
					url: '',
					cache: false,
					showRefresh: true,
					columns: [{
						field: "custom_id",
						title: "序号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_name",
						title: "名称",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_eamil",
						title: "类型",
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
							var e = '<a href="#"  data-toggle="modal" data-target="#modify">修改</a> ';
							var d = '<a href="#" >删除</a> ';
							return e + d;
						}

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
						},
						{
							"user_email": "20140416@xxxxddffg.com",
							"user_company": "NULL",
							"user_dates": "2014-10-13 13:35:51",
							"user_lastlogintime": "0",
							"user_version": "1",
							"user_isv2": "0",
							"userstatus_usertype": "0",
							"userstatus_package_id": "100001",
							"userstatus_end_time": "NULL"
						},
						{
							"user_email": "20083matsumoto-hs@polus.co.jp",
							"user_company": "",
							"user_dates": "2014-10-31 13:02:47",
							"user_lastlogintime": "1414726074",
							"user_version": "0",
							"user_isv2": "1",
							"userstatus_usertype": "0",
							"userstatus_package_id": "100014",
							"userstatus_end_time": "0"
						}
					],
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
					$('#table1').bootstrapTable('resetView');
				});
			});
		</script>
		<script type="text/javascript">
			function Favorites(id, FavoritesName, source) {
				var o = {};
				o.id = id;
				o.FavoritesName = FavoritesName;
				o.source = source;
				return o;
			}

			function createFavorites() {
				var source = "客源";
				var favorites = new Favorites(0,
					$("#test").val(),
					source
				);
				request(favorites, "POST", "url ");
			}

			function request(object, method, methodURL) {
				$.ajax({
					cache: true,
					type: method,
					datatype: "json",
					contentType: "application/json",
					url: methodURL,
					data: JSON.stringify(object),
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						alert(XMLHttpRequest.status + "\r\n" + XMLHttpRequest.readyState + "\r\n" + textStatus);
					},
					success: function() {
						//      	alert(success);
					}
				});
			}
		</script>
		<script>
			jQuery(document).ready(function() {
				$("#move").css("display", "none");
				$("#modify").css("display", "none");

			});
		</script>
    <script>
        function removeClient(clientId) {

            $.ajax({
                type: "GET",
                url: 'back/client/delete/'+clientId+'',
                dataType: "json",
                success: function(data){
                    if(data>0)
                    {alert("成功!");}
                    if(data==0){alert("已经修改，或者您没有相关权限");}
                    $('#reportTable').bootstrapTable('refresh');
                }
            });


        }

    </script>

	</body>

</html>
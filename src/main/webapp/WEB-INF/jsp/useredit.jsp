<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />

		<link href="media/css/zq3.css" rel="stylesheet" type="text/css" />

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
									<a href="#">添加用户</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>
					<form action="userselect.html" method="post" class="definewidth m20">
						<div>
							<div style="width: 780px;">
								<table class="table  table-hover definewidth m10">
									<tr class="size">
										<td>客源编号</td>
										<td><input style="width: 100px; height: 30px;" type="text" name="" /></td>
									</tr>
									<tr class="size2">
										<td>交易</td>
										<td>
											<select style="width: 100px;" id="point" />
											<option selected>求购</option>
											<option>求租</option>
											<option>租购</option>
											</select>
										</td>
										<td id="td1">用途</td>
										<td>
											<select style="width: 100px;" id="point">
												<option selected>住宅</option>
												<option>商住</option>
												<option>商铺</option>
												<option>网店</option>
												<option>写字楼</option>
												<option>厂房</option>
												<option>写厂</option>
												<option>铺厂</option>
												<option>仓库</option>
												<option>地皮</option>
												<option>车位</option>
												<option>其他</option>
											</select>
										</td>
									</tr>
									<tr class="size2">
										<td>意向地址</td>
										<td>
											<select style="width: 75px;" id="point">
												<option selected>请选择</option>
												<option>宝山区</option>
												<option>常宁区</option>
												<option>崇明县</option>
												<option>奉贤区</option>
												<option>虹口区</option>
												<option>黄浦区</option>
												<option>嘉定区</option>
												<option>金山区</option>
												<option>静安区</option>
												<option>闵行区</option>
												<option>浦东新区</option>
												<option>普陀区</option>
												<option>青浦区</option>
												<option>松江区</option>
												<option>徐汇区</option>
												<option>杨浦区</option>
											</select>
											<select style="width: 75px;" id="point">
												<option selected>请选择</option>
												<option>鞍山</option>
											</select>
											<input type="text" name="username" id="point" style="width: 70px; height: 30px;" />
										</td>
									</tr>
									<tr>
										<td class="size">状态</td>
										<td>
											<select style="width: 100px;">
												<option selected>有效</option>
												<option>预定</option>
												<option>已购</option>
												<option>已租</option>
												<option>我购</option>
												<option>我租</option>
												<option>暂缓</option>
												<option>未知</option>
												<option>无效</option>
											</select>
										</td>
										<td class="size2">面积</td>
										<td>
											<input id="point" class="size1" type="text" name="" style="width: 70px; height: 30px;" />-
											<input id="point" class="size1" type="text" name="" style="width: 70px; height: 30px;" />m^2
										</td>
									</tr>
									<tr>
										<td class="size">属性</td>
										<td>
											<select style="width: 100px;">
												<optionselected>公客</option>
													<option>私客</option>
											</select>
											<input type="checkbox" name="checkbox1" value=""> 优质客
										</td>
										<td class="size2">价格</td>
										<td>
											<input id="point" class="size1" type="text" name="" style="width: 70px; height: 30px;" />-
											<input id="point" class="size1" type="text" name="" style="width: 70px; height: 30px;" />-
											<select style="width: 50px;" id="point">
												<option selected>万</option>
												<option>元</option>
											</select>

										</td>
									</tr>
									<tr class="size">
										<td>委托日期</td>
										<td>
											<div class="input-append date form_datetime">
												<input style="height: 30px;" size="16" type="text" value="" readonly>
												<span class="add-on"><i class="icon-th"></i></span>
											</div>
										</td>
										<td>单价</td>
										<td>
											<input class="size1" id="point1" type="text" name="" />-
											<input class="size1" id="point1" type="text" name="" />-
											<select style="width: 100px;">
												<option selected>元/平米/天</option>
												<option>元/月</option>
												<option>元/平米/月</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="size">委托方式</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>A-独家</option>
												<option>B-签约</option>
												<option>C-未签</option>
											</select>
										</td>
										<td class="size2">客户等级</td>
										<td>
											<select style="width: 100px;" id="point">
												<option selected>请选择</option>
												<option>A</option>
												<option>B</option>
												<option>C</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="size2">来源</td>
										<td>
											<select style="width: 100px;" id="point">
												<option selected>请选择</option>
												<option>来电</option>
												<option>来访</option>
												<option>中介</option>
												<option>朋友</option>
												<option>广告</option>
												<option>扫街</option>
												<option>网络</option>
												<option>搜房</option>
												<option>口碑</option>
											</select>
										</td>
										<td class="size">客户类别</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>老板</option>
												<option>高管</option>
												<option>白领</option>
												<option>打工</option>
												<option>个体户</option>
												<option>公务员</option>
												<option>工程师</option>
												<option>自由职业</option>
												<option>教师</option>
												<option>医生</option>
												<option>律师</option>
												<option>农民</option>
												<option>无业</option>
												<option>其他</option>
											</select>
										</td>
									</tr>
									<tr>
										<td class="size">
											客户期限
										</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>2天内</option>
												<option>3天内</option>
												<option>5天内</option>
												<option>1周内</option>
												<option>2周内</option>
												<option>3周内</option>
												<option>1月内</option>
												<option>2月内</option>
												<option>3月内</option>
											</select>
										</td>
										<td class="size">
											客户意向
										</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>急迫</option>
												<option>随意</option>
												<option>改善</option>
												<option>投资</option>
											</select>
										</td>
									</tr>
									<tr class="size">
										<td>到期日</td>
										<td><input id="point2" type="text" name="" /></td>
									</tr>
									<tr class="size">
										<td>备注</td>
										<td>
											<textarea rows="5" cols="100" style="width:350px ;"></textarea>
										</td>
									</tr>
									<tr class="size">
										<td>房型</td>
										<td>
											<select style="width: 70px;">
												<option selected>房</option>
												<option>0房</option>
												<option>1房</option>
												<option>2房</option>
												<option>3房</option>
												<option>4房</option>
												<option>5房</option>
												<option>6房</option>
												<option>7房</option>
												<option>8房</option>
												<option>9房</option>
												<option>*</option>
												<option>1-2房</option>
												<option>2-3房</option>
												<option>3-4房</option>
												<option>4-5房</option>
												<option>6-9房</option>
											</select>
											<select style="width: 70px;">
												<option selected>厅</option>
												<option>0厅</option>
												<option>1厅</option>
												<option>2厅</option>
												<option>3厅</option>
												<option>4厅</option>
												<option>5厅</option>
												<option>6厅</option>
											</select>
											<select style="width: 70px;">
												<option selected>卫</option>
												<option>0卫</option>
												<option>1卫</option>
												<option>2卫</option>
												<option>3卫</option>
												<option>4卫</option>
												<option>5卫</option>
												<option>6卫</option>
											</select>
											<select style="width: 70px;">
												<option selected>阳</option>
												<option>0阳台</option>
												<option>1阳台</option>
												<option>2阳台</option>
												<option>3阳台</option>
												<option>4阳台</option>
												<option>5阳台</option>
												<option>6阳台</option>
											</select>
										</td>
										<td>装修</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>毛坯</option>
												<option>清水</option>
												<option>简装</option>
												<option>中装</option>
												<option>精装</option>
												<option>豪装</option>
											</select>
										</td>
									</tr>
									<tr class="size">
										<td>类型</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>多层</option>
												<option>高层</option>
												<option>小高层</option>
												<option>多层复式</option>
												<option>高层复式</option>
												<option>多层越式</option>
												<option>裙楼</option>
												<option>高层越式</option>
												<option>独立别墅</option>
												<option>联体别墅</option>
												<option>双拼别墅</option>
												<option>四合院</option>
											</select>
										</td>
										<td>配套</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>地砖</option>
												<option>木地砖</option>
												<option>地毯</option>
												<option>地胶</option>
												<option>水泥地</option>
											</select>
										</td>
									</tr>
									<tr class="size">
										<td>朝向</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>南北</option>
												<option>东西</option>
												<option>南</option>
												<option>北</option>
												<option>东</option>
												<option>西</option>
												<option>东南</option>
												<option>西南</option>
												<option>东北</option>
												<option>西北</option>
											</select>
										</td>
										<td>楼层</td>
										<td>
											<input style="width: 100px; height: 30px;" type="text" name="" />
										</td>
									</tr>
									<tr class="size">
										<td>付款</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>年租</option>
												<option>半年租</option>
												<option>季租</option>
												<option>月租</option>
												<option>一次付清</option>
												<option>按揭方式</option>
												<option>垫资解按</option>
											</select>
										</td>
										<td>客户现住</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>自租</option>
												<option>合租</option>
												<option>借住</option>
												<option>临时</option>
												<option>自购</option>
												<option>其他</option>
											</select>
										</td>
									</tr>
									<tr class="size">
										<td>付佣</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>商议</option>
												<option>给全佣</option>
												<option>九折佣</option>
												<option>八折佣</option>
												<option>七折佣</option>
												<option>六折佣</option>
												<option>五折佣</option>
												<option>四折佣</option>
												<option>三折佣</option>
												<option>不给佣</option>
											</select>
										</td>
										<td>入住年龄</td>
										<td>
											<select style="width: 100px;">
												<option selected>请选择</option>
												<option>23岁以下</option>
												<option>23-29岁</option>
												<option>30-35岁</option>
												<option>36-45岁</option>
												<option>46-55岁</option>
												<option>56-65岁</option>
												<option>65岁以上</option>
											</select>
										</td>
									</tr>
									<tr class="size">
										<td>现住址</td>
										<td>
											<input type="text" name="" id="point2" />
										</td>
									</tr>
								</table>
							</div>
							<!--
	作者：zq
	时间：2017-05-01
	描述：右边框
-->
							<div class="taright">
								<button type="button" class="btn" id="clickme" style="width: 150px;">看业主</button>
								<button type="button" class="btn" style="width: 130px;" data-toggle="modal" data-target="#follow">写跟进</button>
								<div id="hide">
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

								<div style="margin-top: 20px;">
									<h4>相关员工</h4>
									<a href="#" style=" float: right; margin-top: -30px;" data-toggle="modal" data-target="#editfollow1"><strong>编辑</strong></a>
									<table class="taright4">
										<tr class="size">
											<td>
												归属人1:
											</td>
											<td><span id="sp15">0</span></td>
										</tr>
									</table>
									<div class="taright4">
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

		<script type="text/javascript">
			$(document).ready(function() {
				$("#hide").hide();
				$("#clickme").click(function() {
					$("#hide").toggle();
				});
			});
		</script>

		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();
			});
		</script>
		<!-- END JAVASCRIPTS -->

		<!--
	作者：zq
	时间：2017-05-25
	描述：写跟进
-->
		<div class="modal fade" id="follow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
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
								<td>跟进时间</td>
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
										<option>请选择</option>
										<option>去电</option>
										<option>来电</option>
										<option>看房</option>
										<option>勘察</option>
										<option>来访</option>
										<option>拜访</option>
										<option>派单</option>
										<option>短信</option>
										<option>邮件</option>
										<option>信函</option>
										<option>申请</option>
										<option>修改</option>
										<option>保留</option>
										<option>其他</option>
										<option>转房客</option>
										<option>未接通</option>
										<option>去电</option>
										<option>带看</option>
										<option>激活</option>
									</select>
								</td>
							</tr>
							<tr style="margin-top: 100px;">
								<td>跟进内容</td>
								<td>
									<textarea rows="3" cols="50" style="width:300px ;">
										
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
										<input type="date" name=" " id=" " value=" " style="width: 120px; height: 30px;" />
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
											<option selected="selected">zlysb</option>
											<option>zq</option>
											<option>zq</option>
											<option>yf</option>
											<option>xzw</option>
											<option>zlysb</option>
											<option>zlysb</option>
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
	时间：2017-05-31
	描述：编辑业主
-->

		<div class="modal fade" id="editfollow" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">编辑业主或联系人 </h3>
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
								<td><input type="text" name=" " id=" " value=" " style="height: 30px;" /></td>
							</tr>
							<tr>
								<td>电话1</td>
								<td><input type="text" name=" " id=" " value=" " style="height: 30px;" /></td>

							</tr>
							<tr>
								<td>电话2</td>
								<td>
									<input type="text" name=" " id=" " value=" " style="height: 30px;" />
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
									<textarea rows="3" cols="50" style="width:300px ; height: 30px;">	
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

		<!--
	作者：zq
	时间：2017-05-31
	描述：编辑员工
-->

		<div class="modal fade" id="editfollow1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">编辑员工 </h3>
					</div>
					<div class="modal-body">
						<table class="table table-bordered  definewidth m10">
							<tr>
								<td>
									归属人1:
									<select style="width: 100px;" id="point">
										<option selected>系统管理组</option>
									</select>

									<select style="width: 100px;" id="point">
										<option selected>manager</option>
										<option>guest</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									归属人2:
									<select style="width: 100px;">
										<option>无</option>
										<option selected>系统管理组</option>
									</select>

									<select style="width: 100px;">
										<option>manager</option>
										<option selected>guest</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>
									归属人3:
									<select style="width: 100px;">
										<option selected>无</option>
									</select>

									<select style="width: 100px;">
										<option selected>无</option>
									</select>
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
				$("#editfollow1").css("display", "none");
				$("#editfollow").css("display", "none");
				$("#follow").css("display", "none");
			});
		</script>

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

</html>
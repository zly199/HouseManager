<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
							<a href="addHouse.html">添加房源</a>
						</li>
					</ul>

					<!-- END PAGE TITLE & BREADCRUMB-->

				</div>

			</div>
			<form id = "houseEditForm" class="definewidth m20">
				<div>
					<table class="table  table-hover definewidth m10" style="width: 780px;">
						<tr class="size">
							<td>房源编号</td>
							<td><input id="houseId" style="width: 150px;height: 28px" readonly="readonly" value="${houseAvailable.id}" type="text" name="id" /></td>
						</tr>
						<tr class="size2">
							<td>交易</td>
							<td>
								<select name="transaction" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option selected>${houseAvailable.transaction}</option>
									<option>出售</option>
									<option>出租</option>
									<option>租售</option>
								</select>
							</td>
							<td>用途</td>
							<td>
								<select name="application" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option selected> ${houseAvailable.application}</option>
									<option>住宅</option>
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
							<td>房源地址</td>
							<td>
								<select name="address[0]" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option selected>${houseAvailable.address[0]}</option>
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
									<option >松江区</option>
									<option>徐汇区</option>
									<option>杨浦区</option>
								</select>
								<select name="address[1]" style="width: 100px;" id="point">
									<option selected>${houseAvailable.address[1]}</option>
									<option>商圈</option>
								</select>
								<input type="text" name="address[2]" value="${houseAvailable.address[2]}" style="width: 88px;height: 28px" placeholder="楼盘字典" data-toggle="tooltip"  title="此空不能为空" id="point">
								<input type="text" name="address[3]" value="${houseAvailable.address[3]}" style="width: 88px;height: 28px" placeholder="栋座" data-toggle="tooltip"  title="此空不能为空" id="point">
								<input type="text" name="address[4]" value="${houseAvailable.address[4]}" style="width: 88px;height: 28px" placeholder="单元" data-toggle="tooltip"  title="此空不能为空" id="point">
								<input type="text" name="address[5]" value="${houseAvailable.address[5]}" style="width: 88px;height: 28px" placeholder="房号" data-toggle="tooltip"  title="此空不能为空" id="point">
								<input type="text" name="address[6]" value="${houseAvailable.address[6]}" style="width: 88px;height: 28px" placeholder="楼层" data-toggle="tooltip"  title="此空不能为空" id="point">
								<input type="text" name="address[7]" value="${houseAvailable.address[7]}" style="width: 88px;height: 28px" placeholder="总层" data-toggle="tooltip"  title="此空不能为空" id="point">

							</td>
						</tr>
						<tr class="size2">
							<td>面积</td>
							<td>
								<input value="${houseAvailable.area[0]}" id="point" style="width: 88px;height: 28px" type="text" name="area[0]"  data-toggle="tooltip"  title="此空不能为空 ，最多保留两位小数">平米
								(套内 <input value="${houseAvailable.area[1]}" id="point" style="width: 38px;" type="text" name="area[1]"  data-toggle="tooltip"  title="此空不能为空，最多保留两位小数">平米)
							</td>
							<td>类型</td>
							<td>
								<select name="type" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option selected>${houseAvailable.type}</option>
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

						</tr>
						<tr class="size2">
							<td>房型</td>
							<td>
								<select name="houseType[0]" style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.houseType[0]}</option>
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
									<option>7</option>
									<option>8</option>
									<option>9</option>
								</select>房
								<select name="houseType[1]" style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.houseType[1]}</option>
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>厅
								<select name="houseType[2]" style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.houseType[2]}</option>
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>卫
								<select name="houseType[3]" style="width: 70px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.houseType[3]}</option>
									<option>0</option>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>阳
							</td>
							<td>装修</td>
							<td>
								<select name="decoration" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option  selected>${houseAvailable.decoration}</option>
									<option>毛坯</option>
									<option>清水</option>
									<option>简装</option>
									<option>中装</option>
									<option>精装</option>
									<option>豪装</option>
								</select>
							</td>
						</tr>
						<tr class="size2">
							<td>朝向</td>
							<td>
								<select name="orientation" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
									<option  selected>${houseAvailable.orientation}</option>
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
						</tr>
						<tr class="size2">
							<td>状态</td>
							<td>
								<select name="status" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.status}</option>
									<option>有效</option>
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
							<td>售价</td>
							<td>
								<input name="sellPrice" type="text" value="${houseAvailable.sellPrice}" id="point" style="width: 38px;" data-toggle="tooltip"  title="此空不能为空"/>万元

								<input type="text" id="point" value="<fmt:formatNumber pattern="#######.###" value="${houseAvailable.sellPrice*10000/houseAvailable.area[0]}"/>" style="width: 38px;" data-toggle="tooltip"  title="此空不能为空">元/m^2
							</td>
						</tr>
						<tr>
							<td class="size2">属性</td>
							<td>
								<select name="attribute" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.attribute}</option>
									<c:forEach items="${houseAddActionList.atrributes}" var="item">
										<option>${item}</option>
									</c:forEach>
								</select>
							</td>
							<td class="size">售底价</td>
							<td>
								<input type="text" name="sellLowprice" value="${houseAvailable.sellLowprice}"  placeholder="0" style="width:88px ;"/>
							</td>
						</tr>
						<tr class="size">
							<td >
								购买时间
							</td>
							<td>
								<input  type="date" name="purchasingDate"  style="width: 120px;height: 30px" value="${houseAvailable.purchasingDate}"/>
							</td>
							<td>
								租价
							</td>
							<td>
								<input type="" name="rentPrice"  value="${houseAvailable.rentPrice}"  style="width:38px ;"/>
								<select style="width: 50px;" disabled="disabled">
									<option selected>元/月</option>
								</select>
								<input type="text" name=""  value="<fmt:formatNumber pattern="#######.###" value="${houseAvailable.rentPrice/houseAvailable.area[0]}"/>" style="width:38px ;"/>元/m^2/月
							</td>
						</tr>
						<tr class="size">
							<td>唯一住房</td>
							<td>
								<select name="uniquehouse" style="width: 100px;">
                                    <option selected>${houseAvailable.uniquehouse}</option>
									<option>true</option>
									<option>false</option>
								</select>
							</td>
							<td>租底价</td>
							<td>
								<input type="text" name="rentLowprice"  value="${houseAvailable.rentLowprice}" placeholder="0" style="width: 38px;"/>
							</td>
						</tr>
						<tr class="size">
							<td>委托日期</td>
							<td>
								<input type="date" name="precatoryDate"  value="${houseAvailable.precatoryDate}" style="width: 120px;height: 30px" id="point" data-toggle="tooltip"  title="此空不能为空"/>
							</td>
							<td>贷款金额</td>
							<td>
								<input type="text" name="loan"  value="${houseAvailable.loan}" style="width:48px ;"/>万元
							</td>
						</tr>
						<tr class="size2">
							<td>委托方式</td>
							<td>
								<select name="precatoryMethod" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.precatoryMethod}</option>
									<option>独家</option>
									<option>A-独家</option>
									<option>B-签约</option>
									<option>C-未签</option>
									<option>X-限时</option>
									<option>X-托管</option>
									<option>X-收购</option>
								</select>
							</td>
							<td>来源</td>
							<td>
								<select name="resource" style="width: 100px;" id="point" data-toggle="tooltip"  title="此空不能为空">
                                    <option selected>${houseAvailable.resource}</option>
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
						</tr>
						<tr class="size">
							<td>委托编号</td>
							<td>
								<input type="text" name="precatoryNumber"  value="${houseAvailable.precatoryNumber}" style="width: 88px;height: 28px"/>
							</td>
							<td>交房日期</td>
							<td>
								<%--<input type="date" name="lunchTime"  value="${houseAvailable.lunchTime}" style="width: 120px;height: 30px"/>--%>
							</td>
						</tr>
						<tr class="size">
							<td>备案号</td>
							<td>
								<input type="text" name="recordNumber"  value="${houseAvailable.recordNumber}" style="width: 88px;height: 28px"/>
							</td>
						</tr>
						<tr class="size">
							<td>标签</td>
							<td>
                                <input type="checkbox" name="tag[0]" <c:if test="${houseAvailable.tag[0].equals('优质房')}" > checked="checked"</c:if> value="优质房" />优质房
								<input type="checkbox" name="tag[1]" <c:if test="${houseAvailable.tag[0].equals('聚焦房')}" > checked="checked"</c:if> value="聚焦房"/>聚焦房
								<input type="checkbox" name="tag[2]" <c:if test="${houseAvailable.tag[0].equals('速销房')}" > checked="checked"</c:if> value="速销房"/>速销房
							</td>
						</tr>
						<tr class="size">
							<td>备注</td>
							<td>
								<textarea name="remark" rows="5" cols="100" style="width:350px ;">${houseAvailable.remark}</textarea>
							</td>
						</tr>
						<tr class="size">
							<td>建房年代</td>
							<td>
								<select style="width: 100px;">
									<option  selected>2017</option>
									<option>2016</option>
									<option>2015</option>
									<option>2014</option>
									<option>2013</option>
									<option>2012</option>
									<option>2011</option>
									<option>2010</option>
									<option>2009</option>
									<option>2008</option>
								</select>
							</td>
							<td>现状</td>
							<td>
								<select style="width: 100px;">
									<option  selected>空房</option>
									<option>业主住</option>
									<option>租客住</option>
								</select>
							</td>
						</tr>
						<tr class="size">
							<td>产权</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>商品房</option>
									<option>房改房</option>
									<option>经济适用房</option>
									<option>集体房</option>
									<option>军产房</option>
								</select>
							</td>
							<td>配套</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>地砖</option>
									<option>木地砖</option>
									<option>地毯</option>
									<option>地胶</option>
									<option>水泥地</option>
								</select>
							</td>
						</tr>
						<tr class="size">
							<td>包税费</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>各付</option>
									<option>实得</option>
									<option>净得</option>
									<option>包税</option>
								</select>
							</td>
							<td>家具</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>无</option>
									<option>少量</option>
									<option>部分</option>
									<option>配套</option>
									<option>全新</option>
									<option>全齐</option>
									<option>可配</option>
								</select>
							</td>
						</tr>
						<tr class="size">
							<td>原购价</td>
							<td>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>
							</td>
							<td>家电</td>
							<td>
								<select style="width: 100px;">
									<option selected>请选择</option>
									<option>无</option>
									<option>少量</option>
									<option>部分</option>
									<option>配套</option>
									<option>全新</option>
									<option>全齐</option>
									<option>可配</option>
								</select>
							</td>
						</tr>
						<tr class="size">
							<td>管理费</td>
							<td>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>
							</td>
							<td>付佣</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
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
						</tr>
						<tr class="size">
							<td>车位</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>自行车</option>
									<option>汽车</option>
									<option>面积</option>
								</select>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>平米
							</td>
							<td>付款</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>年租</option>
									<option>半年租</option>
									<option>季租</option>
									<option>月租</option>
									<option>一次付清</option>
									<option>按揭方式</option>
									<option>垫资解按</option>
								</select>
							</td>
						</tr>
						<tr class="size">
							<td>看房</td>
							<td>
								<select style="width: 100px;">
									<option  selected>请选择</option>
									<option>预约</option>
									<option>有匙</option>
									<option>借匙</option>
									<option>直接</option>
								</select>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>
							</td>
						</tr>
						<tr class="size">
							<td>产证号</td>
							<td>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>
							</td>
							<td>产证年限</td>
							<td>
								<input type="text" name=""  value="" style="width: 88px;height: 28px"/>
							</td>
						</tr>
					</table>


				</div>
			</form>
			<div class="submit-btn" style="text-align: center;">
				<button type="button" class="btn green" onclick="saveFunc()">保存</button>
				<button type="button" class="btn green" href="back/user/index">保存</button>
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

<script>
    function saveFunc() {
        $.ajax({
            cache: true,
            type: "POST",
            url:"back/house/editAction",
            data:$('#houseEditForm').serialize(),// 你的formid
            async: false,
            error: function(request) {
                alert("保存错误，请检查必填字段");
            },
            success: function(data) {
                if(data!="error")
                {
                    alert("成功!");
                    document.getElementById("houseId").value = data;
                }
                else{
                    alert("未保存任何数据");
                }
            }
        });
    }

</script>
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
</body>
</html>
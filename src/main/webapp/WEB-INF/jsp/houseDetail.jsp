<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
									<a href="profile.html"><i class="icon-user"></i> 个人信息</a>
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
									<a href="#">房源详情</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->
					<div class="span12">
                        <div class="detail1">
                            <p class="detail2"><span class="detail4">${houseDetail.transaction}</span> ${houseDetail.address[0]} ${houseDetail.address[1]}
                                <a href="#" style="color: green;">${houseDetail.address[2]}</a> ${houseDetail.address[3]} ${houseDetail.address[5]} ${houseDetail.address[6]}/${houseDetail.address[7]}层 </p>
                            <p class="detail3">${houseDetail.id}</p>
                            <p class="detail5">
                                <span>*</span><span id="detail6">${houseDetail.tag[0]}</span><span id="detail7">${houseDetail.tag[1]}</span><span id="detail8">${houseDetail.tag[2]}</span> ${houseDetail.sellPrice}万元 ${houseDetail.area[0]}m²(套内${houseDetail.area[1]}m²) ${houseDetail.houseType[0]}房${houseDetail.houseType[1]}厅${houseDetail.houseType[2]}卫${houseDetail.houseType[3]}阳台 ${houseDetail.orientation} ${houseDetail.application} ${houseDetail.type} ${houseDetail.decoration}</p>
                        </div>

						<div>
							<div style="margin-top: 10px;">
								<img src="media/image/zlysbb.jpeg" style="width: 100px; height: 100px; float: left;" />
								<table class="detail9" >
									<tr>
										<td>状态</td>
										<td><span id="sp13">${houseDetail.status}</span> </td>
										<td><span id="sp14">售价</span></td>
										<td> <span id="sp13">
                                            ${houseDetail.sellPrice} 万元
												</span> </td>
										<td><span id="sp14">售单价</span></td>
										<td><span id="sp13"><fmt:formatNumber pattern="#######.###" value="${houseDetail.sellPrice*10000/houseDetail.area[0]}"/>元/m²</span> </td>
										<td><span id="sp14">售底价</span></td>
										<td> <span id="sp13">
													${houseDetail.sellLowprice} 万元
												</span> </td>
									</tr>

									<tr>
										<td>属性</td>
										<td><span id="sp13">${houseDetail.attribute}</span> </td>
										<td><span id="sp14">租价</span></td>
										<td> <span id="sp13">
                                            ${houseDetail.rentPrice} 元/月
												</span> </td>
										<td><span id="sp14">租单价</span></td>
										<td><span id="sp13"><fmt:formatNumber pattern="#######.###" value="${houseDetail.rentPrice/houseDetail.area[0]}"/>  元/月/m²</span> </td>
										<td><span id="sp14">租底价</span></td>
										<td> <span id="sp13">
													${houseDetail.rentLowprice} 元/月
												</span> </td>
									</tr>
									<tr>
										<td>委托编号</td>
										<td><span id="sp13">${houseDetail.precatoryNumber}</span> </td>
										<td><span id="sp14">备案号</span></td>
										<td> <span id="sp13">
                                            ${houseDetail.recordNumber}
												</span> </td>
										<td><span id="sp14">交房日期</span></td>
										<td><span id="sp13"><fmt:formatDate value="${houseDetail.lunchTime}" pattern="yyyy-mm-dd"/></span> </td>
										<td><span id="sp14">唯一住房</span></td>
										<td> <span id="sp13">
                                            ${houseDetail.uniquehouse}
												</span> </td>
									</tr>
									<tr>
										<td>看房</td>
										<td><span id="sp13">${houseDetail.seeTheHouse}</span> </td>
										<td><span id="sp14">购买时间</span></td>
										<td> <span id="sp13">
                                            <fmt:formatDate value="${houseDetail.purchasingDate}" pattern="yyyy-mm-dd"/>
												</span> </td>
										<td><span id="sp14">有贷款</span></td>
										<td><span id="sp13">${houseDetail.loan}</span> </td>
                                        <td><span id="sp14">来源</span></td>
                                        <td> <span id="sp13">
                                            ${houseDetail.resource}
												</span> </td>
									</tr>
									<tr>
										<td>备注</td>
										<td><span id="sp13">${houseDetail.remark}</span> </td>
                                        <td><span id="sp14">委托方式</span></td>
                                        <td><span id="sp13">${houseDetail.precatoryMethod}</span> </td>
                                        <td><span id="sp14">委托日期</span></td>
                                        <td> <span id="sp13">
                                            <fmt:formatDate value="${houseDetail.precatoryDate}" pattern="yyyy-mm-dd"/>
												</span> </td>
									</tr>
                                    <tr><td>&nbsp </td> </tr>
										<tr>
											<td>建房年代</td>
											<td><span id="sp13">${houseDetail.buildYear}</span> </td>
											<td><span id="sp14">配套</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.development}
												</span> </td>
											<td><span id="sp14">家具</span></td>
											<td><span id="sp13">${houseDetail.furniture}</span> </td>
											<td><span id="sp14">家电</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.householdApplicances}
												</span> </td>
										</tr>

										<tr>
											<td>产权</td>
											<td><span id="sp13">${houseDetail.propertyright}</span> </td>
											<td><span id="sp14">包税费</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.including}
												</span> </td>
											<td><span id="sp14">原购价</span></td>
											<td><span id="sp13">${houseDetail.originalyPurchasingPrice}</span> </td>
											<td><span id="sp14">管理费</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.managementCost}
												</span> </td>
										</tr>
										<tr>
											<td>付佣</td>
											<td><span id="sp13">${houseDetail.paymentHas}</span> </td>
											<td><span id="sp14">付款</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.precatoryMethod}
												</span> </td>
											<td><span id="sp14">现状</span></td>
											<td><span id="sp13">${houseDetail.statusQuo}</span> </td>
											<td><span id="sp14">车位</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.parkingPlot}
												</span> </td>
										</tr>
										<tr>
											<td>产证号</td>
											<td><span id="sp13">${houseDetail.productionLicenseNumber}</span> </td>
											<td><span id="sp14">产权年限</span></td>
											<td> <span id="sp13">
                                                ${houseDetail.yearOfPropertyRight}
											</span> </td>
										</tr>
									</table>
								<div class="button11">
									<button type="button" class="btn green" id="clickme1">看业主</button>
									<button type="button" class="btn green" data-toggle="modal" data-target="#follow">写跟进</button>
									<div id="hide1">
										<table>
											<tr>
												<td>联系人</td>
												<td><span id="sp13">${houseOwner.name}</span></td>
											</tr>
											<tr>
												<td>电话1</td>
												<td><span id="sp13">${houseOwner.firstPhone}</span></td>
											</tr>
											<tr>
												<td>电话2</td>
												<td><span id="sp13">${houseOwner.secondPhone}</span></td>
											</tr>
											<tr>
												<td>证件</td>
												<td><span id="sp13">${houseOwner.idCard}</span></td>
											</tr>
											<tr>
												<td>备注</td>
												<td><span id="sp13">${houseOwner.comment}</span></td>
											</tr>

										</table>
										<a data-toggle="modal" data-target="#editfollow">编辑</a>&nbsp;&nbsp;

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
										<h5 style="font-size: 15px;">相关员工 <span style="float: right;"><shiro:hasPermission name="house:edi:userMove"><a data-toggle="modal" data-target="#editHouseUser">编辑</a></shiro:hasPermission></span></h5>
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
											<a href="#tab2" data-toggle="tab">照片(1) </a>
										</li>
										<li>
											<a href="#tab3" data-toggle="tab">协议附件(0) </a>
										</li>
										<li>
											<a href="#tab4" data-toggle="tab">全景看房 </a>
										</li>
										<li>
											<a href="#tab5" data-toggle="tab">房源描述 </a>
										</li>
										<li>
											<a href="#tab6" data-toggle="tab">钥匙(0) </a>
										</li>
										<li>
											<a href="#tab7" data-toggle="tab">地铁 (0)</a>
										</li>

									</ul>

									<div class="tab-content">
										<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab1">
											<div>
												<input type="date" name="" id="" value="" style="width: 120px; height: 30px;"/>-<input type="date" name="" id="" value="" style="width: 120px; height: 30px;" />
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
													<option selected="selected">zlysb</option>
													<option>zq</option>
													<option>zq</option>
													<option>yf</option>
													<option>xzw</option>
													<option>zlysb</option>
													<option>zlysb</option>
												</select>
												<input type="text" name="" id="" value="" placeholder="关键词" style="width: 45px;" />
												<input type="checkbox" name="" id="" value="" />有录音
												<input type="checkbox" name="" id="" value="" />有短信
												<span style="float: right;"><a href="#" data-toggle="modal" data-target="#follow">写跟进</a></span>
											</div>
											<div>
												<div class="htmleaf-container">
													<div class="container">
														<div id="timeline">
															<c:forEach items="${followUpList}" var="followUp">
															<div class="timeline-item">
																<div class="timeline-icon">
																	<img src="media/image/star.svg" alt="">
																</div>
																<div class="timeline-content">
																	<h5><fmt:formatDate value="${followUp.time}" pattern="yyyy-mm-dd"/></h5>
																	<p>
																		【${followUp.method}】${followUp.content}
																	</p>
																	<p><fmt:formatDate value="${followUp.time}" pattern="yyyy-mm-dd HH:mm:ss"/> 　${followUp.userDepartment} ${followUp.userName}（${followUp.userDuties}）
																		<a href="#">删除</a>
																	</p>
																</div>

															</div>
															</c:forEach>

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
											<a href="houseUpload.html" style="float: right; margin-top: 20px;">上传图片</a>

											<ul class="nav nav-tabs">
												<li>
													<a href="#tab21" data-toggle="tab">全部(1)</a>
												</li>

												<li>
													<a href="#tab22" data-toggle="tab">室内图(1) </a>
												</li>
												<li>
													<a href="#tab23" data-toggle="tab">其他(0) </a>
												</li>
												<li>
													<a href="#tab24" data-toggle="tab">房型图(1) </a>
												</li>
												<li>
													<a href="#tab25" data-toggle="tab">外景图(0) </a>
												</li>
											</ul>

											<div class="tab-content ">

												<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid " id="tab21">

													22222
												</div>
												<div class="tab-pane row-fluid profile-account" id="tab22">
													<ul class="nav nav-tabs">
														<li>
															<a href="#tab221" data-toggle="tab">客厅(1)</a>
														</li>

														<li>
															<a href="#tab222" data-toggle="tab">卧室(1) </a>
														</li>
														<li>
															<a href="#tab223" data-toggle="tab">卫生间(0) </a>
														</li>
														<li>
															<a href="#tab224" data-toggle="tab">厨房(1) </a>
														</li>
														<li>
															<a href="#tab225" data-toggle="tab">餐厅(0) </a>
														</li>
														<li>
															<a href="#tab226" data-toggle="tab">阳台(0) </a>
														</li>
														<li>
															<a href="#tab227" data-toggle="tab">窗景(0) </a>
														</li>
														<li>
															<a href="#tab228" data-toggle="tab">书房(0) </a>
														</li>
													</ul>
													<div class="tab-content">

														<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid" id="tab221">
															1
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab222">
															13
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab223">
															33322
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab224">
															333222
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab225">
															333222
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab226">
															33322
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab227">
															3332
														</div>
														<div class="tab-pane row-fluid profile-account" id="tab228">
															32
														</div>
													</div>

												</div>

												<div class="tab-pane row-fluid profile-account" id="tab23">
													333
												</div>
												<div class="tab-pane row-fluid profile-account" id="tab24">
													333
												</div>

												<div class="tab-pane row-fluid profile-account" id="tab25">
													333
												</div>

											</div>

										</div>
										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab2结束
                            -->
										<div class="tab-pane row-fluid profile-account" id="tab3">
											<button type="button" class="btn" style="float: right; margin-top: 20px;" data-toggle="modal" data-target="#upload">上传</button>
											<ul class="nav nav-tabs">
												<li>
													<a href="#tab31" data-toggle="tab">全部(1)</a>
												</li>

												<li>
													<a href="#tab32" data-toggle="tab">独家委托(1) </a>
												</li>
												<li>
													<a href="#tab33" data-toggle="tab">房产证(0) </a>
												</li>
												<li>
													<a href="#tab34" data-toggle="tab">委托书(1) </a>
												</li>
												<li>
													<a href="#tab35" data-toggle="tab">其他(0) </a>
												</li>
											</ul>

											<div class="tab-content">

												<div class="tab-pane row-fluid active tab-pane profile-classic row-fluid " id="tab31">

													22222
												</div>
												<div class="tab-pane row-fluid profile-account" id="tab32">
													33311
												</div>
												<div class="tab-pane row-fluid profile-account" id="tab33">
													333
												</div>

												<div class="tab-pane row-fluid profile-account" id="tab34">
													3331
												</div>
												<div class="tab-pane row-fluid profile-account" id="tab35">
													3331111
												</div>
											</div>
										</div>
										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab3结束
                            -->

										<div class="tab-pane row-fluid profile-account" id="tab4">
											<button type="button" class="btn green">添加关联</button>
										</div>
										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab5
                            -->
										<div class="tab-pane row-fluid profile-account" id="tab5">
											<table>
												<a href="#" style="float: right;" data-toggle="modal" data-target="#modifyHouse">修改</a>
												<tr>
													<td>描述标题:</td>
													<td>Data</td>
												</tr>
												<tr>
													<td>房源描述:</td>
													<td>Data</td>
												</tr>
												<tr>
													<td>最后修改:</td>
													<td>2017-05-24 13:16软件开发软件开发</td>
												</tr>
											</table>
										</div>

										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab6开始
                            -->

										<div class="tab-pane row-fluid profile-account" id="tab6">

											<a href="#" data-toggle="modal" data-target="#addkey">新增钥匙</a>
											<a href="#" style="float: right;" data-toggle="modal" data-target="#recoder">操作记录</a>
											<table id="keytable">

											</table>

										</div>
										<!--
                            	作者：zq
                            	时间：2017-05-24
                            	描述：tab7开始
                            -->

										<div class="tab-pane row-fluid profile-account" id="tab7">

										</div>
									</div>
								</div>
								<!-- 详情页包含详情页信息和tab切换-->

								<!--<div class="button11">
									<button type="button " class="btn green " id="clickme1 ">看业主</button>
									<button type="button " class="btn green " data-toggle="modal " data-target="#follow ">写跟进</button>
									<div id="hide1 ">
										<table>
											<tr>
												<td>联系人</td>
												<td><span id="sp13 ">0</span></td>
											</tr>
											<tr>
												<td>电话1</td>
												<td><span id="sp13 ">0</span></td>
											</tr>
											<tr>
												<td>电话2</td>
												<td><span id="sp13 ">0</span></td>
											</tr>
											<tr>
												<td>证件</td>
												<td><span id="sp13 ">0</span></td>
											</tr>
											<tr>
												<td>备注</td>
												<td><span id="sp13 ">0</span></td>
											</tr>

										</table>
										<a href="# ">新增业主和联系人</a> &nbsp;&nbsp;
										<a href="# " data-toggle="modal " data-target="#editfollow ">编辑</a>&nbsp;&nbsp;
										<a href="# ">禁止查看业主</a>&nbsp;&nbsp;
									</div>
									<div style="margin-top: 15px; ">
										<button type="button " class="btn ">发送请报</button>
										<button type="button " class="btn ">发布到微门店</button>
										<div style="margin-top: 10px; ">
											<button type="button " class="btn ">收藏</button>
											<button type="button " class="btn btn-large ">禁止发布到门店</button>
										</div>
									</div>
									<div>
										<h5 style="font-size: 15px; ">相关员工 <span style="float: right; "><a href="# ">编辑</a></span></h5>
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
						</div>-->
								<!--
                        	作者：zq
                        	时间：2017-05-24
                        	描述：右边栏
                        -->
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
				$('#keytable').bootstrapTable({
					method: 'POST',
					url: '',
					cache: false,
					striped: true,
					pagination: true,
					pageSize: 5,
					pageNumber: 1,
					pageList: [10, 20, 50, 100, 200, 500],
					columns: [{
						field: "custom_id",
						title: "钥匙编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_name",
						title: "钥匙名称",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_eamil",
						title: "钥匙类别",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_phone",
						title: "保管门店",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_state",
						title: "收取人",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_date",
						title: "状态",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_min_acreage",
						title: "备注",
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
							var e = '<a href="#" data-toggle="modal" data-target="#editkey">修改</a> ';
							var i = '<a href="#" >删除</a> ';
							var g = '<a href="#" data-toggle="modal" data-target="#detailKey">查询详情</a> ';
							return e + i + g;
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
					$('#keytable').bootstrapTable('resetView');
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

		<script>
            $(document).on('ready', function() {
                $("#input-4").fileinput({ showCaption: false });
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

		<script type="text/javascript">
			bkLib.onDomLoaded(function() { new nicEditor({ fullPanel: true }).panelInstance('area2'); });
		</script>

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
	时间：2017-05-25
	描述：上传附件
-->
		<div class="modal fade" id="upload" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">上传附加文件 </h3>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td>
									<input id="input-4" name="input4[]" type="file" multiple class="file-loading" style="margin-top: 10px;">
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
	时间：2017-05-25
	描述：修改
-->

		<div class="modal fade" id="modifyHouse" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">修改房源描述 </h3>
					</div>
					<div class="modal-body">
						描述标题:<input type="text" name=" " id=" " value="111" />
						</br>
						房源描述:<textarea name="area3" id="area2" style="width: 400px; height: 150px;">
	                             zlysbbbbbbbbbbbbbbb
                                   </textarea>
						</br>
						最后修改:zlysb
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
	时间：2017-05-25
	描述：新增钥匙
-->
		<div class="modal fade" id="addkey" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">新增钥匙 </h3>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td>钥匙类型</td>
								<td>
									<select>
										<option>请选择</option>
										<option>机械锁</option>
										<option>密码锁</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>钥匙编号</td>
								<td><input type="text" name=" " id=" " value=" " /></td>
							</tr>
							<tr>
								<td>钥匙名称</td>
								<td><input type="text" name=" " id=" " value=" " /></td>

							</tr>
							<tr>
								<td>保管门店</td>
								<td>
									<select>
										<option selected="selected">总部</option>
										<option>张瑛区域</option>
										<option>中兴路店</option>
										<option>共和新路店</option>
										<option>财务</option>
										<option>软件开发</option>
										<option>系统管理组</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>收取人</td>
								<td>
									<select style="width: 110px;">
										<option selected="selected">总部</option>
										<option>张瑛区域</option>
										<option>中兴路店</option>
										<option>共和新路店</option>
										<option>财务</option>
										<option>软件开发</option>
										<option>系统管理组</option>
									</select>
									<select style="width: 110px;">
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
							<tr style="margin-top: 100px; ">
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
	时间：2017-05-25
	描述：操作记录
-->
		<div class="modal fade" id="recoder" tabindex="-1 " role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true"></span></button>
						<h3 class="modal-title" id="exampleModalLabel">操作记录 </h3>
					</div>
					<div class="modal-body">
						<table id="recodertable">
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
	时间：2017-05-25
	描述：编辑钥匙
-->
		<div class="modal fade" id="editkey" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true "></span></button>
						<h3 class="modal-title" id="exampleModalLabel">编辑钥匙 </h3>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td>钥匙类型</td>
								<td>
									<select>
										<option>请选择</option>
										<option>机械锁</option>
										<option>密码锁</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>钥匙编号</td>
								<td><input type="text" name=" " id=" " value=" " /></td>
							</tr>
							<tr>
								<td>钥匙名称</td>
								<td><input type="text" name=" " id=" " value=" " /></td>

							</tr>
							<tr>
								<td>保管门店</td>
								<td>
									<select>
										<option selected="selected">总部</option>
										<option>张瑛区域</option>
										<option>中兴路店</option>
										<option>共和新路店</option>
										<option>财务</option>
										<option>软件开发</option>
										<option>系统管理组</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>收取人</td>
								<td>
									<select style="width: 110px;">
										<option selected="selected">总部</option>
										<option>张瑛区域</option>
										<option>中兴路店</option>
										<option>共和新路店</option>
										<option>财务</option>
										<option>软件开发</option>
										<option>系统管理组</option>
									</select>
									<select style="width: 110px;">
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

		<div class="modal fade" id="editHouseUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
								aria-hidden="true "></span></button>
						<h3 class="modal-title" id="exampleModalLabel ">编辑归属员工</h3>
					</div>
					<div class="modal-body">
                        <form id="houseUser">
                        <tr>
                            <td>
                                归属人1:
                                <select  style="width: 100px;" id="point">
                                    <c:forEach items="${houseAddActionList.departments}" var="item">
                                        <option>${item}</option>
                                    </c:forEach>
                                </select>

                                <select name="houseUserName1" style="width: 100px;" id="point">
                                    <c:forEach items="${houseAddActionList.users}" var="item">
                                        <option>${item}</option>
                                    </c:forEach>


                                </select>
                            </td>
                            <td>&nbsp;</td>
                        </tr>

                        <tr>
                            <td>
                                归属人2:
                                <select  style="width: 100px;">
                                    <option selected>无</option>
                                    <option>系统管理组</option>
                                </select>

                                <select name="houseUserName2" style="width: 100px;">
                                    <option  selected>manager</option>
                                    <option>guest</option>
                                </select>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td>
                                归属人3:
                                <select  style="width: 100px;">
                                    <option  selected>无</option>
                                </select>

                                <select name="houseUserName3" style="width: 100px;">
                                    <option  selected>无</option>
                                </select>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        </form>
					</div>

					<div class="modal-footer">
                        <button type="button" class="btn green" onclick="saveHouseUser()">保存</button>
						<button type="button" class="btn green" data-dismiss="modal" aria-hidder="true">取消</button>

					</div>
				</div>
			</div>
		</div>
        <script>
            /*隐藏时刷新modal，便于下次加载*/
            $("#editHouseUser").on("hidden", function() {
                $(this).removeData("modal");

            }
            );
            function saveHouseUser() {
                $.ajax({
                    cache: true,
                    type: "POST",
                    url:"back/house/ediHouseUser/${houseDetail.id}",
                    data:$('#houseUser').serialize(),// 你的formid
                    async: false,
                    error: function(request) {
                        alert("连接错误");
                    },
                    success: function(data) {
                        if(data>0)
                        {alert("成功!");}
                        if(data==0){alert("未保存任何数据，请确认您有相关权限");}
                    }
                });
            }

        </script>
		<script>
			jQuery(document).ready(function() {
				$("#follow").css("display", "none");
				$("#editfollow").css("display", "none");
				$("#addkey").css("display", "none");
				$("#editkey").css("display", "none");
				$("#recoder").css("display", "none");
				$("#modifyHouse").css("display", "none");
			});
		</script>

		<script type="text/javascript ">
			$(function() {
				$('#recodertable').bootstrapTable({
					method: 'POST',
					url: '',
					cache: false,
					striped: true,
					pagination: true,
					pageSize: 5,
					pageNumber: 1,
					pageList: [10, 20, 50, 100, 200, 500],
					columns: [{
						field: "custom_id",
						title: "操作日期",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_name",
						title: "部门",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_eamil",
						title: "员工",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_phone ",
						title: "操作类型",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_state",
						title: "钥匙编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					}, {
						field: "custom_date",
						title: "操作内容",
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
					$('#recodertable').bootstrapTable('resetView');
				});
			});
		</script>
	</body>

	<!-- END BODY -->

</html>
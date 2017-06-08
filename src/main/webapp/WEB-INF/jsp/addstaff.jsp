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
		<link href="media/css/bootstrap.css" rel="stylesheet" type="text/css" />
		<link href="media/css/zq.css" rel="stylesheet" type="text/css" />

		<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style.css" rel="stylesheet" type="text/css" />

		<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />

		<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />

		<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />

		<link href="media/css/fileinput.min.css" rel="stylesheet" type="text/css" />

		<!-- END GLOBAL MANDATORY STYLES -->
	
		<link href="media/css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />

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
									<a href="#">添加员工</a>
								</li>
							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>
					<form id="userForm" class="definewidth m20">
						<div style="width: 100%;">
							<table class="table  table-hover definewidth m10">
								<h4 style="color: green;">职务信息</h4>
								<p style="width: 2px; height: 15px; background-color: red;margin-top: -30px;margin-left: 85px;"></p>
								<p style="margin-top: -25px;margin-left: 90px;font-size: 12px;">必填</p>
                                <tr class="size">
                                    <td>员工姓名:<p style="width: 2px; height: 15px; background-color: red;margin-top: -15px;margin-left: 75px;"></p></td>
                                    <td><input style="width: 88px;" type="text" name="userName" /></td>
                                    <td>上传图片</td>
                                    <td>
                                        <input type="file" name="file" id="uploadfile" multiple class="file-loading" style="margin-top: -10px; "/>
                                        <input hidden id="photoId" name="photoId" value="1">
									</td>

								</tr>


								<tr class="size" >

									<td>所属部门:<p style="width: 2px; height: 15px; background-color: red;margin-top: -15px;margin-left: 75px;"></p></td>
									<td>
										<select style="width: 100px;" name="organizationId"/>
										<c:forEach items="${houseAddActionList.departments}" var="item">
											<option>${item}</option>
										</c:forEach>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>员工编号:<p style="width: 2px; height: 15px; background-color: red;margin-top: -15px;margin-left: 75px;"></p></td>
									<td>
										<input id="userId" type="text" value="系统自增" readonly="readonly" />

									</td>
								</tr>
								<tr class="size">
									<td>职务:<p style="width: 2px; height: 15px; background-color: red;margin-top: -15px;margin-left: 75px;"></p></td>
									<td>
										<select name="dutiesId" style="width: 100px;">
											<option>试用业务员</option>
											<option>物业顾问</option>
											<option>区域经理</option>
											<option>分行经理</option>
											<option>总经理</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td >状态</td>
									<td>
										<select name="state" style="width: 100px;">
											<option>正式</option>
											<option>试用</option>
											<option>实习</option>
											<option>请假</option>
											<option>离职</option>
											<option>共享</option>
											<option>调动</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td >座席:</td>
									<td>
										<input type="text" name="omni" />
									</td>
								</tr>
								<tr class="size">
									<td >上级:</td>
									<td>
										<select style="width: 100px;">
											<c:forEach items="${houseAddActionList.departments}" var="item">
												<option>${item}</option>
											</c:forEach>
										</select>
										<select name="chiefId" style="width: 100px;">
											<c:forEach items="${houseAddActionList.users}" var="item">
												<option>${item}</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td >来源:</td>
									<td>
										<select name="source" style="width: 100px;">

											<option>市场招聘</option>
											<option>网络招聘</option>
											<option>员工介绍</option>
										</select>
									</td>
									<td>入职日期:</td>
									<td>

										<div class="input-append date form_datetime">
											<input name="entryTime" style="height: 24px;" size="16" type="text" value="Thu Jan 01 CST 1970" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
									</td>
								</tr>
								<tr class="size">
									<td>职称</td>
									<td>
										<input type="text" name="technicalTitle" />
									</td>
									<td>离职日期:</td>
									<td>
										<div class="input-append date form_datetime">
											<input name="dimissionTime" style="height: 24px;" size="16" type="text"  value="Thu Jan 01 CST 1970" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
									</td>
								</tr>
						
								<tr class="size">
									<td >档案：</td>
									<td>
										<input type="text" name="record" />
									</td>
								</tr>
							</table>
						<table class="table  table-hover definewidth m10">
								<h4 style="color: green;">联系电话</h4>
								<tr class="size">
									<td >电话1:</td>
									<td>
										<input type="text" name="connecttionWay" />
									</td>
								</tr>
						</table>
						<table class="table  table-hover definewidth m10">
								<h4 style="color: green;">个人信息</h4>
								<tr class="size">
									<td >身份证:</td>
									<td>
										<input type="text" name="username" />
									</td>
								    <td >性别:</td>
									<td>
										<select style="width: 100px;">
											<option value="男">男</option>
											<option value="女">女</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>
										民族:
									</td>
									<td>
										<select style="width: 100px;">
											<option  selected>汉</option>
											<option >蒙</option>
											<option >维</option>
											<option >藏</option>
											<option >回</option>
											<option >满</option>
											<option >朝鲜</option>
											<option >壮</option>
											<option >回</option>
											<option >其他</option>
										</select>
									</td>
									<td>
										籍贯:
									</td>
									<td>
										<input type="text" name="username" />
									</td>
								</tr>
								<tr class="size">
									<td>电子邮件:</td>
									<td><input type="text" name="" /></td>
									<td>出生日期:</td>
									<td>
										<div class="input-append date form_datetime">
											<input style="height: 24px;" size="16" type="text" value="" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
									</td>
								</tr>
								<tr class="size">
									<td>联系地址:</td>
									<td><input type="text" name="" /></td>
									<td>面貌:</td>
									<td>
										<select style="width: 100px;">
											<option  selected>请选择</option>
											<option >党员</option>
											<option >团员</option>
											<option >群众</option>
											<option >其他</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>银行账号:</td>
									<td><input type="text" name="" /></td>
									<td>学历:</td>
									<td>
										<select style="width: 100px;">
											<option  selected>请选择</option>
											<option >小学</option>
											<option >初中</option>
											<option >高中</option>
											<option >本科</option>
											<option >硕士</option>
											<option >博士</option>
											<option >专科</option>
										</select>
									</td>
								</tr>
								<tr class="size">
									<td>个人签名:</td>
									<td><input type="text" name="" /></td>
									<td>毕业院校:</td>
									<td><input type="text" name="" /></td>
								</tr>
								<tr class="size">
									<td>个人简介:</td>
									<td><input type="text" name="" /></td>
									<td>专业:</td>
									<td><input type="text" name="" /></td>
								</tr>
								<tr class="size">
									<td>主营楼盘:</td>
									<td><input type="text" name="" /></td>
								</tr>
								<tr class="size">
									<td>备注</td>
									<td>
										<textarea rows="5" cols="100" style="width:350px ;"></textarea>
									</td>
								</tr>
						</table>
								
							<table class="table  table-hover definewidth m10">
								<h4 style="color: green;">设置</h4>
								<tr class="size">
									<td >规定上班:</td>
									<td>
										<div class="input-append date form_datetime">
											<input style="height: 24px;" size="16" type="text" value="" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
									</td>
								    <td>规定下班:</td>
									<td>
										<div class="input-append date form_datetime">
											<input style="height: 24px;" size="16" type="text" value="" readonly>
											<span class="add-on"><i class="icon-th"></i></span>
										</div>
									</td>
								</tr>
								<tr class="size">
									<td >密码:</td>
									<td>
										<input type="text" name="password" />
									</td>
								    <td>确认密码:</td>
									<td>
										<input type="text"/>
									</td>
								</tr>
						</table>

						</div>
					</form>
					<div class="submit-btn" style="text-align: center;">
						<a class="btn green" onclick="saveUser()">Save </a>
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

		<script src="media/js/fileinput.min.js" type="text/javascript"></script>
		
		<script src="media/js/fileinput_locale_zh.js" type="text/javascript"></script>

		<!-- END PAGE LEVEL SCRIPTS -->

		<script>
			jQuery(document).ready(function() {

				App.init(); // initlayout and core plugins

				Index.init();
			});
		</script>
		<!-- END JAVASCRIPTS -->
		<script>
			$(document).on('ready', function() {
				$("#input-4").fileinput({
					showCaption: false
				});
			});
		</script>
        <script type="text/javascript">
        //图片上传
            $("#uploadfile").fileinput({
                language: 'zh', //设置语言
                uploadUrl: "back/personnelMinistry/user/uploadFile", //上传的地址
                allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
                //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
                uploadAsync: true, //默认异步上传
                showUpload: true, //是否显示上传按钮
                showRemove : true, //显示移除按钮
                showPreview : true, //是否显示预览
                showCaption: false,//是否显示标题
                browseClass: "btn btn-primary", //按钮样式
                dropZoneEnabled: false,//是否显示拖拽区域
                //minImageWidth: 50, //图片的最小宽度
                //minImageHeight: 50,//图片的最小高度
                //maxImageWidth: 1000,//图片的最大宽度
                //maxImageHeight: 1000,//图片的最大高度
                //maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
                //minFileCount: 0,
                maxFileCount: 10, //表示允许同时上传的最大文件个数
                enctype: 'multipart/form-data',
                validateInitialCount:true,
                previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
                msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
            });
            //上传成功回调函数
            $("#uploadfile").on("fileuploaded", function (event, data, previewId, index) {
                document.getElementById("photoId").value=data.response;
                if(data.response<=0){
                    alert("连接数据库失败，请检查网络连接");
                }


            });
        </script>
		<script>
            function saveUser() {
                $.ajax(
                    {
                        cache:true,
                        type:"POST",
                        url:"back/personnelMinistry/user/addAction",
                        data:$('#userForm').serialize(),

                        async:false,
                        error: function(request) {
                            alert("保存错误，请检查必填字段");
                        },
                        success: function(data) {
                            if(data!="error")
                            {
                                alert("成功!");
                                document.getElementById("userId").value = data;
                            }
                            else{
                                alert("未保存任何数据");
                            }
                        }

                    }
                );
            }

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

				<!--
	作者：zq
	时间：2017-04-21
	描述：日历的js
-->

		<!--<script type="text/javascript">
			$(".date1").datetimepicker({
				format: "dd MM yyyy - hh:ii",
				startView: 0,
				minView: 0,
				autoclose: true,
				todayBtn: true,
				pickerPosition: "bottom-left"
			});
		</script>-->
    </body>

</html>
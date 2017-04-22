<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->

<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->

<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- BEGIN HEAD -->

<head>

    <meta charset="utf-8" />

    <title>Metronic | Login Page</title>

    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <meta content="" name="description" />

    <meta content="" name="author" />

    <!-- BEGIN GLOBAL MANDATORY STYLES -->

    <link href="<%=path%>/media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/style-metro.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/style.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    <link href="<%=path%>/media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

    <link href="<%=path%>/media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

    <link href="<%=path%>/media/css/login-soft.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

    <%--<link rel="shortcut icon" href="<%=path%>/media/image/favicon.ico" />--%>

</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body class="login">
	<!-- BEGIN LOGO -->
<div class="logo">

    <%--<img src="<%=path%>/media/image/logo-big.png" alt="" />--%>

</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->

	<div class="content">


		<!-- BEGIN LOGIN FORM -->

    <form class="form-vertical login-form" method="POST" action="doLogin">


			<h3 class="form-title">Login to your account</h3>


			<div class="alert alert-error hide">

				<button class="close" data-dismiss="alert"></button>

				<span>Enter any username and password.</span>

			</div>
		<c:if test="${loginResult.success==false}">
			<div class="alert alert-error">

				<button class="close" data-dismiss="alert"></button>

				<span>${loginResult.error}</span>

			</div>
		</c:if>


			<div class="control-group">


				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->

				<label class="control-label visible-ie8 visible-ie9">Username</label>


				<div class="controls">


					<div class="input-icon left">


						<i class="icon-user"></i>


                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="E-mail" name="username" value="${loginResult.data.username}"/>


					</div>

				</div>


			</div>


			<div class="control-group">


				<label class="control-label visible-ie8 visible-ie9">Password</label>


				<div class="controls">


					<div class="input-icon left">


						<i class="icon-lock"></i>


						<input class="m-wrap placeholder-no-fix" type="password" placeholder="Password" name="password" value="${loginResult.data.password}"/>

					</div>


				</div>


			</div>


			<div class="form-actions">


				<label class="checkbox">


				<input type="checkbox" name="remember" value="1"/> Remember me


				</label>


				<button type="submit" class="btn blue pull-right">


				Login <i class="m-icon-swapright m-icon-white"></i>


				</button>            


			</div>


			<div class="forget-password">


				<h4>Forgot your password ?</h4>


				<p>


					no worries, click <a href="javascript:;" class="" id="forget-password">here</a>


					to reset your password.


				</p>


			</div>


			<div class="create-account">


				<p>


					Don't have an account yet ?&nbsp; 


					<a href="javascript:;" id="register-btn" class="">Create an account</a>


				</p>


			</div>


		</form>


		<!-- END LOGIN FORM -->        


		<!-- BEGIN FORGOT PASSWORD FORM -->



    <form class="form-vertical forget-form" action="#">


			<h3 class="">Forget Password ?</h3>


			<p>Enter your e-mail address below to reset your password.</p>


			<div class="control-group">


				<div class="controls">


					<div class="input-icon left">


						<i class="icon-envelope"></i>


						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email" />


					</div>


				</div>


			</div>


			<div class="form-actions">


				<button type="button" id="back-btn" class="btn">


				<i class="m-icon-swapleft"></i> Back


				</button>


				<button type="submit" class="btn blue pull-right">

				Submit <i class="m-icon-swapright m-icon-white"></i>


				</button>            


			</div>


		</form>


		<!-- END FORGOT PASSWORD FORM -->


		<!-- BEGIN REGISTRATION FORM -->


    <form class="form-vertical register-form" method="POST" action="Register">


			<h3 class="">Sign Up</h3>


			<p>Enter your account details below:</p>


			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Username</label>


				<div class="controls">

					<div class="input-icon left">


						<i class="icon-user"></i>


						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username"/>


					</div>


				</div>


			</div>


			<div class="control-group">



            <label class="control-label visible-ie8 visible-ie9">userAge</label>



            <div class="controls">



                <div class="input-icon left">



                    <i class="icon-time"></i>


                    <input class="m-wrap placeholder-no-fix" type="text" placeholder="userAge" name="userAge"/>



                </div>



            </div>



        </div>



        <div class="control-group">

            <label class="control-label visible-ie8 visible-ie9">userPhone</label>



            <div class="controls">

                <div class="input-icon left">



                    <i class="icon-home"></i>



                    <input class="m-wrap placeholder-no-fix" type="text" placeholder="userPhone" name="userPhone"/>



                </div>



            </div>



        </div>



        <div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>


				<div class="controls">

					<div class="input-icon left">


						<i class="icon-lock"></i>


						<input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="Password" name="password"/>


					</div>


				</div>


			</div>


			<div class="control-group">

				<label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>


				<div class="controls">

					<div class="input-icon left">


						<i class="icon-ok"></i>


						<input class="m-wrap placeholder-no-fix" type="password" placeholder="Re-type Your Password" name="rpassword"/>


					</div>


				</div>


			</div>


			<div class="control-group">


				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->


				<label class="control-label visible-ie8 visible-ie9">Email</label>


				<div class="controls">

					<div class="input-icon left">


						<i class="icon-envelope"></i>



						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email"/>


					</div>


				</div>


			</div>


			<div class="control-group">

				<div class="controls">


					<label class="checkbox">


					<input type="checkbox" name="tnc"/> I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>


					</label>  


					<div id="register_tnc_error"></div>


				</div>


			</div>


			<div class="form-actions">


				<button id="register-back-btn" type="button" class="btn">


				<i class="m-icon-swapleft"></i>  Back


				</button>


				<button type="submit" id="register-submit-btn" class="btn blue pull-right">


				Sign Up <i class="m-icon-swapright m-icon-white"></i>


				</button>            


			</div>


		</form>


		<!-- END REGISTRATION FORM -->


	</div>


	<!-- END LOGIN -->

	<!-- BEGIN COPYRIGHT -->


	<div class="copyright">


		2017 &copy; jxufe - Admin Dashboard Template.


	</div>


	<!-- END COPYRIGHT -->


	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->


	<!-- BEGIN CORE PLUGINS -->



<script src="<%=path%>/media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

<script src="<%=path%>/media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>


	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->



<script src="<%=path%>/media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

<script src="<%=path%>/media/js/bootstrap.min.js" type="text/javascript"></script>


	<!--[if lt IE 9]>


	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  


	<![endif]-->   



<script src="<%=path%>/media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

<script src="<%=path%>/media/js/jquery.blockui.min.js" type="text/javascript"></script>

<script src="<%=path%>/media/js/jquery.cookie.min.js" type="text/javascript"></script>

<script src="<%=path%>/media/js/jquery.uniform.min.js" type="text/javascript" ></script>


	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->


	<script src="<%=path%>/media/js/jquery.validate.min.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/jquery.backstretch.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

<script src="<%=path%>/media/js/app.js" type="text/javascript"></script>

	<script src="<%=path%>/media/js/login-soft.js" type="text/javascript"></script>      

	<!-- END PAGE LEVEL SCRIPTS --> 

	<script>

		jQuery(document).ready(function() {     

		  App.init();

		  Login.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

</body>

<!-- END BODY -->

</html>
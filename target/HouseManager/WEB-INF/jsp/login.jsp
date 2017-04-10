<!--
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>SportingHouse</title>

    <!--                       CSS                       -->
    <!-- Reset Stylesheet -->
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen" />
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
    <!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
    <link rel="stylesheet" href="css/invalid.css" type="text/css" media="screen" />

    <!--                       Javascripts                       -->
    <!-- jQuery -->
    <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
    <!-- jQuery Configuration -->
    <!-- <script type="text/javascript"
        src="js/back/simpla.jquery.configuration.js"></script>-->
    <script type="text/javascript" src="js/scripts/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="js/jquery.wysiwyg.js"></script>
    <script type="text/javascript" src="js/validateloginjsp.js"></script>
    <!--<script type="text/javascript" src="js/back/simpla.jquery.configuration.js"></script>
    -->

</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
    <div id="login-top">
        <h1>SportingHouse</h1>
        <!-- Logo (221px width) -->
        <a href="#"><img id="logo" src="images/logo.png"
                         alt="Simpla Admin logo" /></a>
    </div>
    <!-- End #logn-top -->
    <div id="login-content">
        <form action="/HouseMgr/doLogin" method="post">
            <div class="notification information png_bg">
                <div>

                    <s:if test="hasFieldErrors()">
                        <s:fielderror name="loginerror"
                                      cssStyle="list-style-type:none;color:red;" />
                    </s:if>
                    <s:else>
                        欢迎您登录！<br /><!--操作过程中跳到该页面是由于密码失效了！-->
                    </s:else>
                </div>
            </div>
            <p>
                <label>用户名:</label> <input class="text-input" type="text"
                                           name="user.userName" id="userName" onblur="clearUserNameMsg()" />
            </p>
            <div class="clear"></div>
            <p>
                <label>密&nbsp;&nbsp;码:</label> <input class="text-input"
                                                      type="password" name="user.passWord" id="passWord"
                                                      onblur="clearPassWordMsg()" />
            </p>

            <div class="clear"></div>



            <div class="clear"></div>
            <div class="clear"></div>
            <p>
                <input class="button" type="submit" value="登录"
                       style="width:120px;height:35px;" onclick="return validateAll();" />
            </p>
            <p>
					<span id="pleaseInputUserName"
                          style="background:url(images/error.png) no-repeat left center;color:red;display:none;
	padding-left:20px;font-size:12px;">请您输入用户名！</span><span
                    id="pleaseInputPassWord"
                    style="background:url(images/error.png) no-repeat left center;color:red; display:none;
	padding-left:20px;font-size:12px;">请您输入密码！</span><span
                    </span>
            </p>
        </form>
    </div>
    <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>

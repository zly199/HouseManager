<%--
  Created by IntelliJ IDEA.
  User: ZLY
  Date: 2017-04-13
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>




<link href="https://cdn.bootcss.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/select2-bootstrap-theme/0.1.0-beta.10/select2-bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.bootcss.com/bootstrap-fileinput/4.4.1/css/fileinput.css" rel="stylesheet">
<div>
    <input type="file" name="file" id="uploadfile" multiple class="file-loading"/>

</div>
<a href="back/user/login">登录页面</a>
<a href="http://localhost:8080/HouseManagerV2/back/user/index">主页</a>
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.1/js/fileinput.js"></script>

<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.4.1/js/locales/zh.js"></script>
<script type="text/javascript">

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
    $("#uploadfile").on("fileuploaded", function (event, data, previewId, index) {
        alert(data);
    });
</script>
</body>


</html>

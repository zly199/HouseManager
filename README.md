#房产中介管理系统<br>


*房产中介管理系统是一个用于房产中介公司内部业务工作的系统，系统功能包括房源管理，客源管理，人事管理，以及权限管理。<br>
*项目使用了`Spring`+`SpringMvc`+`mybatis`+`MySQL`的架构，前端主要使用了`jQuery`，`bootstrap`。整合了`shiro`框架。<br>

##version 0.0.1<br>

>>项目骨架搭建完成。<br>
>>增加了基本的登录表sql。<br>
>>delete file of idea。<br>
>>对做个项目的目录重构，采用更加简洁优雅的目录结构。<br>
>>完成前端登录和主页面的整合。<br>
>>完成dao层的基本开发整合。<br>
<br>
##开发版 1.0<br>
---
>>整合数据库和前端登录界面。<br>
>>修改登录传值方式，采用session存储用户登录信息。<br>
>>修复了用户名可以为空的bug。<br>
>>采用了邮箱作为登录账号。<br>
>>修改了user表的phone属性，删除了sex属性，并重写了uesr的dao层。<br>
<br>
version 3.0<br>
---
>>增加了注册功能，采用了邮箱发送验证邮件，点击链接激活的方式。<br>
>>替换了新的登录页面。<br>
>>修复发送邮件乱码问题。<br>
>>使用枚举封装了文字。<br>
>>优化数据源，配置相关参数解决mysql的“8小时问题”。<br>
>>优化注册页面错误提示，采用js验证注册信息的可用性，采用ajax异步验证邮箱的可用性。<br>
>>修复数据库关闭时的closed异常。<br>
<br>
version 4.0<br>
---
>>整合用户添加，用户查询，用户信息管理。<br>
>>房源添加，房源查询。<br>
>>综合统计-出售统计，综合统计-出租统计。<br>
<br>
version 5.0<br>
---
>>用新需求重新设计了数据库。<br>
>>修复了数据库注释引起的xiaobug。<br>
>>项目目录重构rebuild。<br>
>>数据库权限系统重新设计。<br>
>>整合了shiro框架。<br>
>>实现登录功能。<br>
>>数据库的小改动，增加了一些测试数据。<br>
>>增加了房源查询列表功能。<br>
>>完善了权限系统。<br>
>>公盘 跨部重构前版本 ，新增了权限管理页面。<br>
<br>
version 6.0<br>
---
>>权限系统重构完毕。<br>
>>实现了房源权限1前端的增删查改功能。<br>
>>实现了根据权限查看列表的房源功能。<br>
>>实现了房源列表字段查看的权限。<br>
>>增加业主信息表。<br>
>>整合房源详情页。<br>
>>实现业主查看权限。<br>
>>实现跟进查看权限。<br>
>>房源详情字段的控制权限的实现。<br>
>>完成房源1页的权限实现。<br>
<br>
version 7.0<br>
---
>>房源权限页2整合。<br>
>>房源新增页面整合。<br>
>>房源新增权限实现。<br>
>>修复了登录界面背景不显示问题和错误logo 问题。<br>
>>修复了房源详情页面字体现实问题。<br>
>>房源归属转移权限实现。<br>
>>增加了房源详情页相关员工的显示
>>房源详情页房源用途查看权限的实现。<br>
>>修复了钥匙dao层的数据库访问bug。<br>
>>增加了按照名字查找组织的功能。<br>
>>钥匙的增删查改功能以及权限系统的实现。<br>
>>新增根据坐标座位房源的api。<br>
>>增加了业主信息表。<br>
>>增加了用户详情页。<br>
>>修复了一些bug。<br>
>>增加了统一的权限认证失败页面和404页面。<br>
>>增加员工功能。<br>
>>修复了员工信息表增加出错的bug。<br>
>>增加了员工照片上传功能。<br>
>>员工照片展示功能。<br>
>>增加根据房源查找位置以及周边房源信息的功能。<br>
>>带看单查看功能。<br>
>>带看单增加。<br>
>>其他bug修复。<br>
>>修复左边链接栏的指向性问题。<br>
>>主页直接跳转。<br>

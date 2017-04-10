<%--
  Created by IntelliJ IDEA.
  User: ZLY
  Date: 2017-04-10
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <form method="post" action="doLogin">
        <table>
            <tr>
                <td>用户ID</td>
                <td><input type="text" name="userId"/></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="提交"/></td>
            </tr>
        </table>
    </form>
</body>
</html>

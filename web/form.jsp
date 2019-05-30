<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/5/30 0030
  Time: 下午 2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center">
    <form action="index.jsp" method="post">
        登录信息采集
        <table cellpadding="5">
            <hr/>
            <tr>
                <td><label for="name">姓名：</label></td>
                <td><input type="text" name="username" size="15" maxlength="6"/></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password" size="15" maxlength="6"></td>
            </tr>
            <tr>
                <td>"性别："
                </td>
                <td>
                    <input type="radio" name="sex" checked="checked" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女
                </td>
            </tr>
            <tr>
                <td>兴趣：</td>
                <td>
                    <input type="checkbox" name="inst" value="听音乐"/>听音乐
                    <input type="checkbox" name="inst" value="玩游戏"/>玩游戏
                    <input type="checkbox" name="inst" value="看书"/>看书
                </td>
            </tr>
            <tr>
                <td>地区：</td>
                <td>
                    <select name="province">
                        <option value="山东" selected="seleected">山东省</option>
                        <option value="山西省">山西省</option>
                        <option value="安徽省">安徽省</option>
                    </select>
                    <select name="city">
                        <option value="青岛" selected="seleected">青岛市</option>
                        <option value="济南市">济南市</option>
                        <option value="泰安市">泰安市</option>
                    </select>
                    <select name="area">
                        <option value="西海岸新区" selected="seleected">西海岸新区</option>
                        <option value="市南区">市南区</option>
                        <option value="市北区">市北区</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>出生年月：</td>
                <td><input type="date" name="date"></td>
            </tr>
            <tr>
                <td>电子邮箱</td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td>请选择上传的文件</td>
                <td><input type="file" name="file" accept="image/gif,png"></td>
            </tr>
            <tr>
                <td>个人简介</td>
                <td><textarea name="textarea" rows="5" cols="30"></textarea></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="提交"/>
                    <input type="reset" value="重置"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

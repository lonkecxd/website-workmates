<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>注册</title>
    <script src="bootstrap-3.3.5-dist/js/less.js"></script>
    <script src="bootstrap-3.3.5-dist/js/less.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/jquery-2.0.0.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/jquery-ui.js"></script>
    <script src="bootstrap-3.3.5-dist/js/jquery.ui.touch-punch.min.js"></script>
    <script src="bootstrap-3.3.5-dist/js/jquery.htmlClean.js"></script>
    <script src="bootstrap-3.3.5-dist/js/ckeditor.js"></script>
    <script src="bootstrap-3.3.5-dist/js/config.js"></script>
    <script src="bootstrap-3.3.5-dist/js/scripts.js"></script>
    <link href="bootstrap-3.3.5-dist/css/bootstrap-combined.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.5-dist/css/layoutit.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span6">
            <div class="page-header">
                <h1>
                    WorkMates（伙伴网） <small>您的私人社区</small>
                </h1>
            </div>
            <div class="row-fluid">
                <div class="span6">
                    <img alt="140x140" src="img/2.jpg" />
                </div>
                <div class="span6">
                    <dl>
                        <dt>
                            现在登录
                        </dt>
                        <dd>
                            开启全新体验。
                        </dd>
                        <dt>
                            FIRST
                        </dt>

                        <dd>
                            匹配兴趣相投的伙伴。
                        </dd>
                        <dt>
                            THEN
                        </dt>
                        <dd>
                            组建强有力的团队。
                        </dd>
                        <dt>
                            FINALLY
                        </dt>
                        <dd>
                            完成一次惊人之举。
                        </dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="span6">
            <form class="form-horizontal" action="RegisterAction" method="post">
                <table width="100%" height="100%" cellpadding="4" cellspacing="2" align="center" border="0">
                    <tbody>
                    <tr>
                        <td>
                            用户名    <br />
                        </td>
                        <td>
                            <input id="inputName" type="text" name="username"/>    <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            密码   <br />
                        </td>
                        <td>
                            <input id="inputPassword" type="password" name="password"/>    <br />
                        </td>
                    </tr>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--性别    <br />--%>
                        <%--</td>--%>
                        <%--<td>--%>
                        <%--<input name="sex" type="radio" value="男" />男--%>
                        <%--<input name="sex" type="radio" value="女" />女<br/>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--年龄    <br />--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<input id="age" type="text" name="age"/>    <br />   <br />--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--国别    <br />--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<input id="nation" type="text" name="nation"/>    <br />    <br />--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--邮箱    <br />--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<input id="email" type="text" name="email"/>    <br />    <br />--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td>--%>
                            <%--手机号码    <br />--%>
                        <%--</td>--%>
                        <%--<td>--%>
                            <%--<input id="mobilePhone" type="text" name="mobilePhone"/>    <br />   <br />--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    <tr>
                        <td colspan="2">
                            <button type="submit" class="btn big">注册</button>    <br />
                        </td>

                    </tr>
                    </tbody>
                </table>
                <br />
            </form>
        </div>
    </div>
</div>

</body>
</html>

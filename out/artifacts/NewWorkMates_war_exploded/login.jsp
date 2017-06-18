<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>


<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
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
<body >

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span6">
            <div class="page-header">
                <h1>
                    WorkMates <small>科学管理平台</small>
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
        <p></p>
        <br>

        <div class="span6">
            <form class="form-horizontal" action="LoginAction" method="post">
                <div class="control-group">
                    <label class="control-label" for="input">用户名</label>
                    <div class="controls">
                        <input id="input" type="text" name="username"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="inputPassword">密码</label>
                    <div class="controls">
                        <input id="inputPassword" type="password" name="password"/>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox"><input type="checkbox" /> Remember me</label>
                        <button type="submit" class="btn">登陆</button>
                        <a href="register.jsp">注册</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

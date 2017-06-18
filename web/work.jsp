<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.UserInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="IDAO.IUserDAO" %>
<%@ page import="DAO.UserDAO" %>
<%@ page import="Model.Project" %>
<%@ page import="Helper.HibernateSessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="IDAO.IProjectDAO" %>
<%@ page import="DAO.ProjectDAO" %>
<!DOCTYPE html>
<html>
<head>
    <%--<link rel="stylesheet" href="css/element-ui.css">--%>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">

    <link href="bootstrap-3.3.5-dist/css/bootstrap-combined.min.css" rel="stylesheet">
    <script src="bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>

    <link href="css/mainstyle.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#message").hide();
            $(".send").click(function () {
                $("#message ").show();
            });
            $(submit).click(function () {
                $("#message ").show();
            });
        });
    </script>
</head>

<body>
<div id="app">
    <div id=container>
        <div id=header>
            <div id=logo>WORKMATES</div>
            <div id=job>工作</div>
            <div id=hornor>荣誉室</div>
            <div id=nt></div>
            <div id=search>
                搜索
            </div>
            <div id=feedback>反馈</div>
        </div>

        <div id=bodyer>
            <div id=body_left_work>
                <div id="body_left_in">
                    <el-col :span="8">
                        <el-menu default-active="2" class="el-menu-vertical-demo" @open="handleOpen"
                                 @close="handleClose">
                            <el-submenu index="1">
                                <template slot="title"><i class="el-icon-message"></i>导航一</template>
                                <el-menu-item-group>
                                    <template slot="title">分组一</template>
                                    <el-menu-item index="1-1">选项1</el-menu-item>
                                    <el-menu-item index="1-2">选项2</el-menu-item>
                                </el-menu-item-group>
                                <el-menu-item-group title="分组2">
                                    <el-menu-item index="1-3">选项3</el-menu-item>
                                </el-menu-item-group>
                                <el-submenu index="1-4">
                                    <template slot="title">选项4</template>
                                    <el-menu-item index="1-4-1">选项1</el-menu-item>
                                </el-submenu>
                            </el-submenu>
                            <el-menu-item index="2"><i class="el-icon-menu"></i>导航二</el-menu-item>
                            <el-menu-item index="3"><i class="el-icon-setting"></i>导航三</el-menu-item>
                        </el-menu>
                    </el-col>
                </div>
            </div>

            <div id=body_right_work>
                <div id="body_right_work_in">
                    <section id="main-body" class="content content--border">
                        <div class="portlet">
                            <form method="post" class="using-password-strength" action="/register.php" role="form">

                                <div class="col-md-6">
                                    <div class="form-group" style="display: none;">
                                        <label for="lastname" class="control-label">姓氏</label>
                                        <input type="text" name="lastname" id="lastname" value=" " class="form-control"
                                               tabindex="1">
                                    </div>

                                    <div class="form-group ">
                                        <label for="firstname" class="control-label">名字</label>
                                        <input type="text" name="firstname" id="firstname" value="" class="form-control"
                                               required="" tabindex="2">
                                    </div>


                                    <div class="form-group">
                                        <label for="email" class="control-label">电子邮箱</label>
                                        <input type="email" name="email" id="email" value="" class="form-control"
                                               tabindex="3">
                                    </div>

                                    <div id="newPassword1" class="form-group has-feedback">
                                        <label for="inputNewPassword1" class="control-label">密码</label>
                                        <input type="password" class="form-control" id="inputNewPassword1"
                                               name="password" autocomplete="off" tabindex="12">
                                        <span class="form-control-feedback glyphicon glyphicon-password"></span>
                                        <br>

                                        <div class="alert alert-info">
                                            <strong>请不要使用过于简单的密码</strong>
                                        </div>
                                    </div>

                                    <div id="newPassword2" class="form-group has-feedback">
                                        <label for="inputNewPassword2" class="control-label">确认密码</label>
                                        <input type="password" class="form-control" id="inputNewPassword2"
                                               name="password2" autocomplete="off" tabindex="13">
                                        <span class="form-control-feedback glyphicon glyphicon-password"></span>
                                        <div id="inputNewPassword2Msg">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="companyname" class="control-label">您的职位</label>
                                        <input type="text" name="companyname" id="companyname" value="BcoderSS客户"
                                               class="form-control" tabindex="7">
                                    </div>

                                    <div class="form-group" style="display: none;">
                                        <label for="address1" class="control-label">地址(第一个)</label>
                                        <input type="text" name="address1" id="address1" value="china"
                                               class="form-control" tabindex="8">
                                    </div>

                                    <div class="form-group" style="display: none;">
                                        <label for="address2" class="control-label">地址(第二个，可不填)</label>
                                        <input type="text" name="address2" id="address2" value="china"
                                               class="form-control" tabindex="9">
                                    </div>

                                    <div class="form-group" style="display: none;">
                                        <label for="city" class="control-label">城市</label>
                                        <input type="text" name="city" id="city" value="china" class="form-control"
                                               tabindex="10">
                                    </div>

                                    <div class="form-group" style="display: none;">
                                        <label for="postcode" class="control-label">邮政编码</label>
                                        <input type="text" name="postcode" id="postcode" value="-" class="form-control"
                                               tabindex="11">
                                    </div>
                                </div>
                                <div class="form-group text-center">
                                    <input class="btn btn-large btn-primary btn-block" type="submit" value="注册"
                                           disabled="disabled">
                                </div>

                            </form>
                        </div>
                    </section>
                </div>
            </div>

        </div>
    </div>
</div>


</body>

<!-- 先引入 Vue -->
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<!-- 引入组件库 -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script>
    new Vue({
        el: '#app',
        data: function() {
            return { visible: false }
        }
    })
</script>

</html>

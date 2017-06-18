<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.UserInfo" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="IDAO.IUserDAO" %>
<%@ page import="DAO.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- 引入样式 -->
    <%--<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">--%>
    <link href="../css/mainstyle.css" rel="stylesheet" type="text/css"/>

    <link href="../bootstrap-3.3.5-dist/css/bootstrap-combined.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
    <script src="//unpkg.com/vue/dist/vue.js"></script>
    <script src="//unpkg.com/element-ui@1.3.3/lib/index.js"></script>

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
    <el-button @click="visible = true">按钮</el-button>
    <el-dialog v-model="visible" title="Hello world">
        <p>欢迎使用 Element</p>
    </el-dialog>

    <el-input
            placeholder="请选择日期"
            icon="search">
    </el-input>


    <el-col :span="8">
        <h5>带 icon</h5>
        <el-menu default-active="2" class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose">
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

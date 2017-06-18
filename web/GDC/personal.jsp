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
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
    <link href="../css/mainstyle.css" rel="stylesheet" type="text/css"/>

    <link href="../bootstrap-3.3.5-dist/css/bootstrap-combined.min.css" rel="stylesheet"/>
    <script src="../bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>
    <script src="../bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>

    <script src="http://unpkg.com/vue/dist/vue.js"></script>
    <script src="http://unpkg.com/element-ui@1.3.3/lib/index.js"></script>

    <%--<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>--%>

    <style>
        .avatar-uploader .el-upload {
            border: 1px dashed #d9d9d9;
            border-radius: 6px;
            cursor: pointer;
            position: relative;
            overflow: hidden;
        }
        .avatar-uploader .el-upload:hover {
            border-color: #20a0ff;
        }
        .avatar-uploader-icon {
            font-size: 28px;
            color: #8c939d;
            width: 178px;
            height: 178px;
            line-height: 178px;
            text-align: center;
        }
        .avatar {
            width: 178px;
            height: 178px;
            display: block;
        }
    </style>


</head>

<body>
<div id="app">
<div id=container>
    <div id=header>
        <div id=logo><a href="../GDC/personal.jsp" style="color: white">WORKMATES</a></div>
        <div id=job><a href="../program.jsp" style="color: white">工作</a> </div>
        <div id=hornor><a href="../chatwithfriends.jsp" style="color: white">好友</a></div>
        <div id=nt></div>
        <div id=search>
            搜索
        </div>
        <div id=feedback>反馈</div>
    </div>

    <div id=bodyer>
        <div id=body_left>
            <div id="body_left_in">
            <div id=middle>
                <button type="button" class="btn-link" data-toggle="modal" data-target="#dialog-image">
            <div id=cycle>
                <img src="../img/b.jpg " width="50" height="50">
            </div>
                </button>
            <div id=middle_name></div>
            <p> 张三</p>

            <div id=middle_body>
                <div id=middle_body1>
                    <p>任务</p>
                    <p>2</p>
                </div>
                <div id=middle_body2>
                    <p>奖励</p>
                    <p>1</p>
                </div>
                <div id=middle_body3>
                    <p>好友</p>
                    <p>4</p>
                </div>
            </div>
            </div>

            <div id=body_left_foot>


                <div id="message">

                </div>
                <p style="font-size:24px;"><b>好友列表</b></p>
                <p onclick="window.location.href='addfriends'">添加好友</p>
                <p onclick="window.location.href='deletefriends'">删除好友</p>
                <%
                    UserInfo user = (UserInfo) session.getAttribute("user");
                    IUserDAO userDAO = new UserDAO();
                    List<UserInfo> friendsList = userDAO.queryFriends(user);
                %>

            <ul class="nav nav-pills nav-stacked">
                <%
                    for (UserInfo u :
                            friendsList) {
                        out.println("<li role=\"presentation\"><a href=\"#\">"+u.getUsername()+"</a></li>");
                    }
                %>
            </ul>
        </div>
        </div>
    </div>

    <div id=body_right>

        <div id=body_right_top1>
            <p>最新的文档</p>
        </div>
        <div id=body_right_top2>
            <p>任务管理</p>
            <%
                UserInfo user1 = (UserInfo) session.getAttribute("user");
                IProjectDAO projectDAO = new ProjectDAO();
                List projectList = projectDAO.queryCreatedProjects(user1);
                for (int i = 0; i < projectList.size(); i++) {
                    Project project = (Project) projectList.get(i);
                    %>
            <div menuitemname="Unpaid Invoices" class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <div class="pull-right">
                            <a href="../program.jsp" class="btn bg-color-red btn-xs">
                                <i class="fa fa-arrow-right"></i>
                                查看全部
                            </a>
                        </div>
                        <i class="fa fa-calculator"></i>&nbsp;
                        <%=project.getTitle()%>
                    </h3>
                </div>
                <div class="panel-body">
                    <p>
                        <%=project.getDescription()%>
                    </p>
                </div>
                <div class="panel-footer">
                </div>
            </div>
            <%
                }

            %>

        </div>

    </div>


</div>
</div>

<div class="modal fade" id="dialog-image" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                上传头像
            </div>
            <form action="leaveMessage" method="post">
                <div class="modal-body">

                    <el-upload
                            class="avatar-uploader"
                            action="https://jsonplaceholder.typicode.com/posts/"
                            :show-file-list="false"
                            :on-success="handleAvatarSuccess"
                            :before-upload="beforeAvatarUpload">
                        <img v-if="imageUrl" :src="imageUrl" class="avatar">
                        <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                    </el-upload>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary">确认</button>
                </div>
            </form>
        </div>
    </div>
</div>


</div>
</body>
<script type="text/javascript">
    new Vue({
        data(){
            return {
                imageUrl: ''
            };
        },
        methods: {
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpeg';
                const isLt2M = file.size / 1024 / 1024 < 2;

                if (!isJPG) {
                    this.$message.error('上传头像图片只能是 JPG 格式!');
                }
                if (!isLt2M) {
                    this.$message.error('上传头像图片大小不能超过 2MB!');
                }
                return isJPG && isLt2M;
            }
        }
    });
</script>
</html>

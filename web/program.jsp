<%@page import="Model.Project"%>
<%@page import="java.util.List"%>
<%@page import="Model.UserInfo"%>
<%@page import="DAO.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
	<link href="css/program.css" rel="stylesheet" type="text/css"/>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="container">
	  <div id=header>
		  <div id=logo><a href="GDC/personal.jsp" style="color: white">WORKMATES</a></div>
		  <div id=job><a href="program.jsp" style="color: white">工作</a> </div>
		  <div id=hornor><a href="chatwithfriends.jsp" style="color: white">好友</a></div>
        <div id=nt></div>
        <div id=search data-toggle="modal" data-target="#confirm-search"> 搜索</div>
        <div id=feedback data-toggle="modal" data-target="#confirm-fankui">反馈</div>
   	  </div>
   	  
   	  <div id=boyder>
 		    <div id="body_left">
		    <div id="body_left_in">
		    <el-menu default-active="2" class="el-menu-vertical-demo"><!-- @open="handleOpen" @close="handleClose" -->
		      
		      <el-menu-item index="new"><i class="el-icon-message"></i>
				  <button type="button" class="btn btn-link "  style="border: none;text-decoration:none;
    		padding-left: 0px;outline: none;" data-toggle="modal" data-target="#confirm-submit" >
				  新建项目
				  </button>
			  </el-menu-item>
		      
		      <el-submenu index="open">
		        <template slot="title"><i class="el-icon-message"></i>我的开设项目</template>
		        <%
		        	ProjectDAO pDao=new ProjectDAO();
	   	  			UserInfo uInfo=(UserInfo)session.getAttribute("user");
	   	  			List<Project> list=pDao.queryCreatedProjects(uInfo);
		        	for(Project project:list){
		        		String myProject=project.getId()+"";
		        		String basic=project.getId()+"basic";
		        		String role=project.getId()+"role";
		        		String step=project.getId()+"step";
		        %>
		        
		        <el-submenu index=<%=myProject %>>
		          <template slot="title"><%=project.getTitle()%></template>
		          <el-menu-item index=<%=basic%> v-on:click="show1(<%=myProject%>)">项目基本信息</el-menu-item>
		          <el-menu-item index=<%=role%> v-on:click="show2(<%=myProject%>)">角色分配</el-menu-item>
		          <el-menu-item index=<%=step%> v-on:click="show3(<%=myProject%>)">查看进度</el-menu-item>
		        </el-submenu>
		        <%} %>
		      </el-submenu>
		      
 		      <el-submenu index="join">
		        <template slot="title"><i class="el-icon-message"></i>我的参加项目</template>
		        <%
		        	List<Project> list2=pDao.queryJoinProjects(uInfo); 
		        	for(Project project2:list2){
		        		String joinProject=project2.getId()+"join";
		        		String joinBasic=project2.getId()+"joinbasic";
		        		String joinStep=project2.getId()+"joinstep";
		        		
		        	
		        %>
		        <el-submenu index=<%=joinProject %>>
		          <template slot="title"><%=project2.getTitle()%></template>
		          <el-menu-item index=<%=joinBasic%> v-on:click="show1(<%=project2.getId()%>)">项目基本信息</el-menu-item>
		          <el-menu-item index=<%=joinStep%> v-on:click="show4(<%=project2.getId()%>)">上传进度</el-menu-item>
 		        </el-submenu>
				<%}%>
		      </el-submenu>    
		    </el-menu>
		</div>
		</div>
		
		<div id="body_right">
		
			 <div id="body_right_in">
    			 <iframe  width="100%" height=1000px; id="frame1" name="frame1" frameborder="0"></iframe> 
    		</div>
		</div> 
		
	</div>
   </div>

	<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					修改项目信息
				</div>
				<form action="projctAction.UpdateProject.action" method="post">
					<table id="tableinfo1" class="table table-hover table-bordered">
						<tr>
							<td class="tdinfo1">项目名称</td>
							<td class="tdinfo3">
								<input type="text" name="title" >
							</td>
						</tr>
						<tr>
							<td class="tdinfo1">
								项目领域
							</td>
							<td class="tdinfo3"><input disabled value="master"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">开创者</td>
							<td class="tdinfo3"><input disabled value="cxd" /></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								截止时间
							</td>
							<td class="tdinfo3"><input disabled value="24h" /></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								是否有偿
							</td>
							<td class="tdinfo3"><input disabled  /></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								有偿工资
							</td>
							<td class="tdinfo3"><input name="rewardedCoin"></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								项目描述
							</td>
							<td class="tdinfo4">
								<textarea rows="2" cols="50" name="description"> </textarea>

						</tr>
						<tr>
							<td class="tdinfo1">
								项目阶段分配
							</td>
							<td class="tdinfo5">
									<textarea rows="2" cols="50"></textarea>
							</td>
						</tr>
					</table>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						<button type="submit" class="btn btn-primary">确认</button>
					</div>
				</form>

			</div>
		</div>
	</div>

    <div class="modal fade" id="confirm-search" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">

                </div>
                <div class="modal-body">
                    <form action="addfriendAction">
                        <input  class="btn-link" type="text" placeholder="输入内容:" required="required" name="friendname"/>
                        <input class="btn btn-default" type="submit" value="搜索" onclick="addfriend()"/>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="confirm-fankui" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <form action="addfriendAction">
                        <input class="btn-link" type="text" placeholder="请输入:" required="required" name="friendname"/>
                        <input class="btn btn-default" type="submit" value="提交" onclick="addfriend()"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
  	new Vue({
		el:'#container',
 		data:{
			message:'helloword'
		},
    	methods:{
    		show1(p){
    			frame1.location.href="base_info.action?programId="+p;
    		},
    		show2(p){
    			frame1.location.href="role_allocation.action?programId="+p;
    		},
    		show3(p){
    			frame1.location.href="check_schedule.action?programId="+p; 
    		},
    		show4(p){
    			frame1.location.href="submit_schedule.action?programId="+p; 
    		},
    	} ,
	}); 

</script>

</html>
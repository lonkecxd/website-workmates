<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="bean.friendrelationship"%>
<%@page import="bean.friendmessage"%>
<%@page import="DB.DB"%>
<%@ page import="org.hibernate.Session" %>
<%@ page import="Model.UserInfo" %>
<%@ page import="DAO.UserDAO" %>
<%@ page import="IDAO.IUserDAO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
	<link href="css/program2.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <script
  src="http://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
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
		    <el-menu default-active="2" class="el-menu-vertical-demo">
		      <el-menu-item index="new"><i class="el-icon-message"></i>
		  <button type="button" class="btn btn-link "  style="border: none;text-decoration:none;
    		padding-left: 0px;outline: none;" data-toggle="modal" data-target="#confirm-submit" >  
		      添加好友
		   </button>
		      </el-menu-item>
		      
		      <el-submenu index="open">
		        <template slot="title"><i class="el-icon-message"></i>好友列表</template>
				<%
					DB db=new DB();
					int i=0;
					UserInfo user = (UserInfo) session.getAttribute("user");
					int masterid = user.getId();
					//user u=(user) ActionContext.getContext().getSession().get("user");
					ArrayList friendlist=db.myfriend(masterid);
					Iterator iter=friendlist.iterator();
  					while(iter.hasNext()){
						i++;
						String index="join"+i;
						friendrelationship fdrs=(friendrelationship)iter.next();
						UserDAO userDAO = new UserDAO();
						String username = userDAO.queryUserInfo(fdrs.getfriendId()).getUsername();
				 %>
				      <el-submenu index=<%=index %>>
				        <template slot="title"><i class="el-icon-message"></i><%=username%></template>
				        <el-menu-item index="" v-on:click="show1(<%=fdrs.getfriendId()%>)">发起对话</el-menu-item>
		          		<el-menu-item index="" onclick="window.location.href='deletefriendAction?fId=<%=fdrs.getfriendId()%>'">删除好友</el-menu-item>
				      </el-submenu> 
				<%
					}
				 %>
 
		    </el-menu>
		</div>
		</div>
		
		<div id="body_right">
				<iframe  width="100%" height="580px" id="frame1" name="frame1" frameborder="0"></iframe> 
		</div> 
		
	</div>
   </div>
   
   
   
   <div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">

				</div>
				<div class="modal-body">
					<form action="addfriendAction">
						<input id="friendname" class="btn-link" type="text" placeholder="好友昵称:" required="required" name="friendname"/>
						<input id="addfriend" class="btn btn-default" type="submit" value="添加" onclick="addfriend()"/>
					</form>
				</div>

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
			message:'helloword',
		},
    	methods:{
    		show1(p){		
    			frame1.location.href="chatAction.action?fId="+p;
    		}
    	} ,
	}); 

</script>

</html>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
	<link href="css/program2.css" rel="stylesheet" type="text/css"/>
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
</head>
<body>
	<div id="container">
	  <div id=header>
        <div id=logo>WORKMATES</div>
        <div id=job onclick="window.open('program.jsp','_self')">工作</div>
        <div id=hornor>荣誉室</div>
        <div id=nt></div>
        <div id=search> 搜索</div>
        <div id=feedback>反馈</div>
   	  </div>
   	  
   	  <div id=boyder>
 		    <div id="body_left">
		    <div id="body_left_in">
		    <el-menu default-active="2" class="el-menu-vertical-demo">
		      <el-menu-item index="new"><i class="el-icon-message"></i>添加好友</el-menu-item>
		      
		      <el-submenu index="open">
		        <template slot="title"><i class="el-icon-message"></i>好友列表</template>

				      <el-submenu>
				        <template slot="title"><i class="el-icon-message"></i>好友1</template>
				        <el-menu-item index="">发起对话</el-menu-item>
		          		<el-menu-item index="">删除好友</el-menu-item>		  
				      </el-submenu> 
				      
				      <el-submenu>
				        <template slot="title"><i class="el-icon-message"></i>好友2</template>
				        <el-menu-item index="">发起对话</el-menu-item>
		          		<el-menu-item index="">删除好友</el-menu-item>		  		  
				      </el-submenu> 
				      
				      <el-submenu>
				        <template slot="title"><i class="el-icon-message"></i>好友3</template>	
				        <el-menu-item index="">发起对话</el-menu-item>
		          		<el-menu-item index="">删除好友</el-menu-item>		  	  
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
</body>
<script>
  	new Vue({
		el:'#container',
 		data:{
			message:'helloword',
		},
    	methods:{
    		
    	} ,
	}); 

</script>

</html>
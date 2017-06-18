<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
		#container{
			margin-top:0px;
			margin-left:10%;
			width:80%;
			height:600px;
		}
		#header{
			width:100%;
			height:60px;
			text-align:center;
		}
		#logo{
			float:left;
			background-color:black;
			width:30%;
			height:60px;
			line-height:60px;
			font-size:25px;
			color:white;	
			text-align:right;
			
		}
		#job{
			float:left;
			background-color:black;
			width:10%;
			height:60px;
			line-height:60px;
			font-size:25px;
			color:white;	
			cursor:pointer;	
		}
		#hornor{
			float:left;
			background-color:black;
			width:12%;
			height:60px;
			line-height:60px;
			font-size:25px;
			color:white;		
			cursor:pointer;	
		}
		#nt{
			float:left;
			background-color:black;
			width:18%;
			height:60px;
		}
		#search{
			float:left;
			background-color:black;
			width:15%;
			height:60px;
			line-height:60px;
			font-size:25px;
			color:white;	
			text-align:right;
			cursor:pointer;		
		}
		#feedback{
			float:left;
			background-color:black;
			width:15%;
			height:60px;
			line-height:60px;
			font-size:25px;
			color:white;	
			cursor:pointer;		
		}
		#bodyer{
			width:100%;
			height:540px;
			background-color:white;
		}
		#body_left{
			float:left;
			width:27.5%;
			height:540px;
			background-color:#cccccc;
		}
		#body_left_top{
			width:100%;
			height:70px;
			background-color:#00cccc;
			text-align:center;
			font-size:30px;
			line-height:70px;
		}
		#body_left_foot{
			width:90%;
			height:455px;
			margin-top:15px;
			margin-left:5%;
			background-color:#00cccc;
		}
		#body_center{
			float:left;
			width:0.5%;
			height:540px;
			background-color:#000;
		}
		#body_right{
			float:left;
			width:72%;
			height:540px;
			
		}
		#body_right_top{
			width:100%;
			height:70px;
		}
		.body_right_top1{
			width:33%;
			height:70px;
			float:left;
			background-color:#00cccc;
		}
		.body_right_top2{
			width:100%;
			height:60px;
			background-color:#00cccc;
			font-size:30px;
			line-height:60px;
			text-align:center;
			cursor:pointer;
		}
		.body_right_top3{
			width:100%;
			height:10px;
			background-color:#00cccc;
		}
		.body_right_top4{
			float:left;
			width:0.5%;
			height:70px;
			background-color:#000;			
		}
		#base1{
			position:absolute;
			width:56.9%;
			height:470;
			background-color:#d9e4e2;
			margin-top:0px;
			margin-left:0px;
		}
		#base2{
			position:absolute;
			width:56.9%;
			height:470;
			background-color:#f4dfd6;
			margin-top:0px;
			margin-left:0px;
			display:none;
		}
		#base3{
			position:absolute;
			width:56.9%;
			height:470;
			background-color:#f3b8a1;
			margin-top:0px;
			margin-left:0px;
			display:none;
		}
	</style>
	<script type="text/javascript">
		function change1(){
			document.getElementById('base1').style.display="block";
			document.getElementById('base2').style.display="none";
			document.getElementById('base3').style.display="none";
			document.getElementById('div1').style.backgroundColor="#00cc33";
			document.getElementById('div2').style.backgroundColor="#00cccc";
			document.getElementById('div3').style.backgroundColor="#00cccc";
		}	
		function change2(){
			document.getElementById('base2').style.display="block";
			document.getElementById('base1').style.display="none";
			document.getElementById('base3').style.display="none";
			document.getElementById('div2').style.backgroundColor="#00cc33";
			document.getElementById('div1').style.backgroundColor="#00cccc";
			document.getElementById('div3').style.backgroundColor="#00cccc";
		}		
		function change3(){
			document.getElementById('base3').style.display="block";
			document.getElementById('base2').style.display="none";
			document.getElementById('base1').style.display="none";
			document.getElementById('div3').style.backgroundColor="#00cc33";
			document.getElementById('div2').style.backgroundColor="#00cccc";
			document.getElementById('div1').style.backgroundColor="#00cccc";
		}	
	</script>
	
  </head>
  
  <body>
    <div id=container>
    	<div id=header>
    		<div id=logo>WORKMATES</div>
    		<div id=job>工作</div>
    		<div id=hornor>荣誉室</div>
    		<div id=nt></div>
    		<div id=search>搜索</div>
    		<div id=feedback>反馈</div>
    	</div>
    	<div id=bodyer>
    		<div id=body_left>
    			<div id=body_left_top>
    				NEW
    			</div>
    			<div id=body_left_foot>
    			
    			</div>
    		</div>
    		<div id=body_center></div>
    		<div id=body_right>
    			<div id=body_right_top>
    				<div class=body_right_top1>
    					<div class=body_right_top2 onclick="change1()">基本信息</div>
    					<div id=div1 class=body_right_top3 style="background-color:#00cc33"></div>
    				</div>
    				<div class=body_right_top4></div>
    				<div class=body_right_top1>
    					<div class=body_right_top2 onclick="change2()">角色分配</div>
    					<div id=div2 class=body_right_top3></div>
    				</div>
    				<div class=body_right_top4></div>
    				<div class=body_right_top1>
    					<div class=body_right_top2 onclick="change3()">统计信息</div>
    					<div id=div3 class=body_right_top3></div>
    				</div>
    			</div> 
    			<div id=base1>哈哈哈</div>	
    			<div id=base2>呵呵呵</div>
    			<div id=base3>嘻嘻嘻</div>	
    		</div>
    	</div>
    
    </div>
  </body>
</html>

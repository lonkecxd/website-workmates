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

	<link rel="stylesheet" type="text/css" href="../css/mainstyle.css">



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

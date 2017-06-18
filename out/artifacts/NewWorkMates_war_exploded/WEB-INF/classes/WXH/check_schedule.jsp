<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-default/index.css">
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
<style type="text/css">
	body{
		width:auto;
		height:auto;
	}
	#container{
		width:100%;
		height:900px;
		margin:0px;
		padding:0px;
	}
	#tableinfo{
		width:100%;
		text-align: center;
		margin:0 auto;
		border-right: 1px solid black;
		border-bottom:1px solid black;
		line-height: 40px;
	}
	.tdinfo{
		font-size: 25px;
		background-color: RGB(238,241,236);
		border-left:1px solid black; 
		border-top:1px solid black;

	}
	.tdinfo1{
		width:30%;
		font-size: 20px;
		background-color: RGB(238,241,236);
		border-left:1px solid black; 
		border-top:1px solid black;

	}
	.tdinfo2{
		width:30%;
		border-left:1px solid black; 
		border-top:1px solid black;
	}
	.tdinfo3{
		width:40%;
		border-left:1px solid black; 
		border-top:1px solid black;		
	}
</style>
</head>
<body>
	<div id="container">
		<table id="tableinfo">
			<tr>
				<td class="tdinfo">阶段标题</td>
				<td class="tdinfo">参与者</td>
				<td class="tdinfo">完成进度</td>
			</tr>
			<s:iterator value="list" var="projectStepCompleteness">
			<tr>
				<td class="tdinfo1"><s:property value="#projectStepCompleteness.stepTitle"/></td>
				<td class="tdinfo2"><s:property value="#projectStepCompleteness.username"/></td>
				<td class="tdinfo3"><el-progress :percentage=${projectStepCompleteness.completeness} ></el-progress></td>
			</tr>
			</s:iterator>
		</table>
	</div>
</body>
<script>
  	new Vue({
		el:'#container',
 		data:{
			message:'helloword',
		},
	}); 

</script>
</html>
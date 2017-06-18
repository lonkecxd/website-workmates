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
    <script type="text/javascript" src="GJN/jquery/jquery-3.2.1.min.js"></script>
    <style type="text/css">
/*     	#button1 {
		    width: 100px;
		    height: 28px;
		    font-size: 15px;
		    font-family: 微软雅黑;
		    letter-spacing: 8px;
		    padding-left: 12px;
		    border-radius: 5px;
		}
		#button1:hover {
		    cursor:pointer;
		} */
    	#input1{
/* 		    padding: 4px;
		    border: solid 1px #E5E5E5;
		    outline: 0;
		    font: normal 13px/100% Verdana, Tahoma, sans-serif; */
		    width: 80%;

		}
    </style>
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
		width:50%;
		font-size: 25px;
		background-color: RGB(238,241,236);
		border-left:1px solid black;
		border-top:1px solid black;

	}
	.tdinfo1{
		width:50%;
		border-left:1px solid black;
		border-top:1px solid black;
	}
	.tdinfo2{
		width:25%;
		border-left:1px solid black;
		border-top:1px solid black;
	}
</style>
<script type="text/javascript">
/* $(function(){
    $("#input1").blur(function () {
        var reg = new RegExp("^([0-9])|([1-9][0-9])|(100)$");
        if (reg.test($(this).val())) {
        	alert(reg.test($(this).val()));
        	$("#button1").attr("disabled", false);
        } else{
        	alert(reg.test($(this).val()));
        	$("#button1").attr("disabled", true);
        }
    })
}) */


</script>
</head>
<body>
<div id="container">
		<s:iterator value="list" var="ppsc">
		
		<form action="test.action?projectId=${ppsc.projectId}&stepId=${ppsc.stepId}" method="post">
		<table id="tableinfo">

		<tr>
			<td class="tdinfo">阶段标题</td>
			<td class="tdinfo2" colspan="2"><s:property value="#ppsc.stepTitle"/></td>
		</tr>
		<tr>
			<td class="tdinfo">完成度</td>
			<td class="tdinfo2" colspan="2"><el-progress :percentage=${ppsc.completeness} ></el-progress></td>
		</tr>
		<tr>
			<td class="tdinfo">更新进度</td>
			<td class="tdinfo2">
				<input name="completeness" id="input1" placeholder="请输入d；完成度（0-100）">		
			</td>
			<td class="tdinfo2">
				<input type="submit" value="确定"  />
			</td>
			<!-- 如果两个阶段，表单的id会重复 -->
		</tr>
		</table>
		</form>
		<br/>
		</s:iterator>
	
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
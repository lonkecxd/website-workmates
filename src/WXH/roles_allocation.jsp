<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		width:40%;
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
		width:30%;
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
			<td class="tdinfo">承担角色</td>
		</tr>
		
		<s:iterator value="list" var="psi">
		<tr>
			<td class="tdinfo1"><s:property value="#psi.stepTitle"/></td>
			<td class="tdinfo2"><s:property value="#psi.username"/></td>
			<td class="tdinfo3"><s:property value="#psi.role"/></td>
		</tr>
		</s:iterator>
	</table>
	</div>
</body>
</html>
<%@page import="Model.Project"%>
<%@page import="DAO.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

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
	.tdinfo1{
		width:30%;
		font-size: 25px;
		background-color: RGB(238,241,236);
		border-left:1px solid black; 
		border-top:1px solid black;

	}
	.tdinfo2{
		width:70%;
		border-left:1px solid black; 
		border-top:1px solid black;
	}
</style>
</head>
<body>
	<div id="container">

    	<table id="tableinfo">
    		<tr>
    			<td class="tdinfo1">项目名称</td>
    			<td class="tdinfo2"><s:property value="project.title"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				项目领域
    			</td>
    			<td class="tdinfo2"><s:property value="area.areaName"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">开创者</td>
    			<td class="tdinfo2"><s:property value="userInfo.username"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				开创时间
    			</td>
    			<td class="tdinfo2"><s:property value="project.createdTime"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				截止时间
    			</td>
    			<td class="tdinfo2"><s:property value="project.totalHours"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				是否有偿
    			</td>
    			<td class="tdinfo2"><s:property value="project.isRewarded"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				有偿工资
    			</td>
    			<td class="tdinfo2"><s:property value="project.rewardedCoin"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				项目描述
    			</td>
    			<td class="tdinfo2"><s:property value="project.description"/></td>
    		</tr>
    		<tr>
    			<td class="tdinfo1">
    				项目阶段分配
    			</td>
    			<td class="tdinfo2">
    				<%int i=1; %>
    				<s:iterator value="listSteps" var="step">
    					阶段<%=i++ %>:
    					<s:property value="#step.stepTitle"/>
    					<br/>
    				</s:iterator>
    			</td>
    		</tr>
    	</table>
    	
    </div>
</body>
</html>
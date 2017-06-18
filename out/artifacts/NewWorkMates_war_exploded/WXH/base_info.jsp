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
<link rel="stylesheet" href="../bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <script src="../bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script src="../bootstrap-3.3.5-dist/js/jquery-1.12.3.min.js"></script>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
	//获取class为caname的元素
	$(".tdinfo3").click(function () {
	    if (this.$(input).isDisabled)
	        return ;
	var td = $(this);
	var txt = $.trim(td.text());
	var input = $("<input value='" + txt + "'/>");
	td.html(input);
	input.click(function () { return false; });
	//获取焦点
	input.trigger("focus");
	//文本框失去焦点后提交内容，重新变为文本
	input.blur(function () {
	var newtxt = $(this).val();
	//判断文本有没有修改
	if (newtxt != txt) {
	td.html(newtxt);}})});
            $(".tdinfo4").click(function () {
                var td = $(this);
                var txt = $.trim(td.text());
                var input = $("<textarea rows='2' cols='50'>"+txt+"</textarea>");
                td.html(input);
                input.click(function () { return false; });
                //获取焦点
                input.trigger("focus");
                //文本框失去焦点后提交内容，重新变为文本
                input.blur(function () {
                    var newtxt = $(this).val();
                    //判断文本有没有修改
                    if (newtxt != txt) {
                        td.html(newtxt);}})})


		});


	</script>
<%--<style type="text/css">--%>
	<%--body{--%>
		<%--width:auto;--%>
		<%--height:auto;--%>
	<%--}--%>
	<%--#container{--%>
		<%--width:100%;--%>
		<%--height:900px;--%>
		<%--margin:0px;--%>
		<%--padding:0px;--%>
	<%--}--%>
	<%--#tableinfo{--%>
		<%--width:100%;--%>
		<%--text-align: center;--%>
		<%--margin:0 auto;--%>
		<%--border-right: 1px solid black;--%>
		<%--border-bottom:1px solid black;--%>
		<%--line-height: 40px;--%>
	<%--}--%>
	<%--.tdinfo1{--%>
		<%--width:30%;--%>
		<%--font-size: 25px;--%>
		<%--background-color: RGB(238,241,236);--%>
		<%--border-left:1px solid black; --%>
		<%--border-top:1px solid black;--%>

	<%--}--%>
	<%--.tdinfo2{--%>
		<%--width:70%;--%>
		<%--border-left:1px solid black; --%>
		<%--border-top:1px solid black;--%>
	<%--}--%>
<%--</style>--%>
</head>
<body>
	<div id="container">
<button type="button" CLASS="btn btn-primary" data-toggle="modal" data-target="#confirm-submit">修改</button>
    	<table id="tableinfo" class="table table-hover table-bordered">
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
								<input type="text" name="title" value="<s:property value='project.title'/>">
							</td>
						</tr>
						<tr>
							<td class="tdinfo1">
								项目领域
							</td>
							<td class="tdinfo3"><input disabled value="<s:property value='area.areaName'/>"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">开创者</td>
							<td class="tdinfo3"><input disabled value="<s:property value='userInfo.username'/>"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								开创时间
							</td>
							<td class="tdinfo3"><input disabled value="<s:property value='project.createdTime'/>"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								截止时间
							</td>
							<td class="tdinfo3"><input disabled value="<s:property value='project.totalHours'/>"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								是否有偿
							</td>
							<td class="tdinfo3"><input disabled value="<s:property value='project.isRewarded'/>"/></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								有偿工资
							</td>
							<td class="tdinfo3"><input name="rewardedCoin" value="<s:property value='project.rewardedCoin'/>"></td>
						</tr>
						<tr>
							<td class="tdinfo1">
								项目描述
							</td>
							<td class="tdinfo4">
								<textarea rows="2" cols="50"><s:property value="project.description"/> </textarea>

						</tr>
						<tr>
							<td class="tdinfo1">
								项目阶段分配
							</td>
							<td class="tdinfo5">
								<%int j=1; %>
								<s:iterator value="listSteps" var="step">
									阶段<%=j++ %>:

									<textarea rows="2" cols="50"><s:property value="#step.stepTitle"/> </textarea>
									<br/>
								</s:iterator>
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
</body>
</html>
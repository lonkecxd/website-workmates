<%@ page import="java.util.List" %>
<%@ page import="Model.Role" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Helper.HibernateSessionFactory" %>
<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="Model.UserInfo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#confirm-submit"></button>
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

	<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					角色分配
				</div>
				<form action="RoleAlloAction.action" method="post">
					<table>
						<tr>
							<td class="tdinfo">阶段标题</td>
							<td class="tdinfo">参与者</td>
							<td class="tdinfo">承担角色</td>
						</tr>

						<s:iterator value="list" var="psi">
							<tr>
								<td class="tdinfo1">
								<td class="tdinfo1"><s:property value="#psi.stepTitle"/></td>
								</td>
								<td class="tdinfo2">
									<select>
										<s:iterator value="membersList" var="member">
											<option value ="#member.username"><s:property value="#member.username"/></option>
										</s:iterator>
									</select>
								</td>
								<td class="tdinfo3">
									<select>
										<s:iterator value="roleList" var="role">
											<option value ="#role.roleName"><s:property value="#role.roleName"/></option>
										</s:iterator>
									</select>
								</td>
							</tr>
						</s:iterator>
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
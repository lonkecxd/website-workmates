<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="bean.friendrelationship"%>
<%@page import="bean.friendmessage"%>
<%@page import="DB.DB"%>
<%@ page import="Model.UserInfo" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chatroom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

  </head>
  
  <body>
      		 
			 <div id="convo" data-from="Sonu Joshi">  
				<ul class="chat-thread" id="chatroom">
				<%
					DB db=new DB();
					int j=0;
					UserInfo user = (UserInfo) session.getAttribute("user");
					int sendid=user.getId();
					int recieverid= (int) session.getAttribute("fId");
					session.setAttribute("uid", sendid);
					session.setAttribute("fId",recieverid);
					//user u=(user) ActionContext.getContext().getSession().get("user");
					ArrayList messagelist=db.findfriends_message(sendid,recieverid);
					Iterator iter2=messagelist.iterator();
  					while(iter2.hasNext()){
						friendmessage fdms=(friendmessage)iter2.next();
				 %>
				      <li><%=fdms.getmessage()%></li>
				<%
					}
				 %>					
				</ul>
				<div id="inputbox">
				<form id="sendMessgae" name="sendMessgae" action="sendmessageAction">
				
					<input id="message" type="text" required="required" placeholder="输入内容:" name="message"/>
					<input id="send" type="submit" value="发送" onclick=""/>
				</form>
				</div> 
				<script type="text/javascript">
/* 				  $("#sendMessgae").submit(function(){  
					  var message=document.getElementById("message").valueOf();
			            $(this).ajaxSubmit({  
			                type:"post",  //提交方式  
			               
			                url:"sendmessageAction?message=" + message,//请求url  
			                success:function(data){ //提交成功的回调函数  
			                    alert(data.result);  
			                }  
			            });  
			            return false; //不刷新页面  
			        });   */
				
				
				
				function sendmessage() {
		            var message=document.getElementById("message").value;
					var pass;
		            var xmlhttp;
		            if (window.XMLHttpRequest) {
		            	xmlhttp = new XMLHttpRequest();
		            }
		            else {
		            	xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		            }
		            xmlhttp.onreadystatechange = function () {
		                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		                    pass = xmlhttp.responseText;
		                    
		                }
		            }                 
		            xmlhttp.open("GET", "sendmessageAction?message=" + message, true);
		            xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		            xmlhttp.send(null);
            	}
				</script>
				
			</div>

	
  </body>
</html>

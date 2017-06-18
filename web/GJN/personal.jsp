<%--
  Created by IntelliJ IDEA.
  User: pro3
  Date: 2017/4/30
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style type="text/css">
    ul li{  list-style: none;  }

    #container{
        margin-top:0;
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
    #middle{
        width:100%;
        height: 130px;
        padding-top: 30px;
        background-color:#00cccc;
    }

    #cycle{
        width:50px;
        height:50px;
        border-radius:75px ;
        margin-left:3%;
        background-color:black;
        float:left;
    }
    #cycle img{
        border-radius:75px ;
        background-size:cover;
    }
    #middle_name{
        float:left;
        margin-top:15px;
        width:1%;
        height:35px;
        text-align:center;

    }
    #middle_body{
        width:25%;
        height:80px;
    }
   #middle_body1{
     float :left;
       width:30%;
       height:20px;
       text-align:center;
       margin-left:10%;
   }
    #middle_body2{
        float:left;
        width:30%;
        height:20px;
        text-align:center;
    }
    #middle_body3{
        float:left;
        width:30%;
        height:20px;
        text-align:center;
    }
    #bodyer{
        width:100%;
        height:380px;
        background-color:white;
    }
    #body_left{
        float:left;
        width:28%;
        height:380px;
        background-color:#cccccc;
    }

    #body_left_foot{
        width:80%;
        height:335px;
        margin-top:30px;
        margin-left:10%;
        margin-right:10%;
        text-align:center;
        padding-top: 15px;
        background-color:#00cccc;
        border-radius:10px 10px 0 0;
    }

    #body_right{
        float:left;
        width:72%;
        height:380px;
    }

    #body_right_top1{
        width:100%;
        height:100px;
        border:1px solid black;
    }
    #body_right_top2{
        width:100%;
        height:274px;
        margin-top:2px;
        border:1px solid black;
    }

</style>
    <script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#message").hide ();
            $(".send").click(function() {
                $("#message ").show();
            });
            $(submit).click(function() {
                $("#message ").show();
            });
        });
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
    <div id=middle>

        <div id=cycle >
            <img src="img/1.png " width="50" height="50">
        </div>
            <div id=middle_name></div>
            <p> 王大</p>

        <div id=middle_body >
        <div id=middle_body1 >
            <p>任务</p>
            <p>1</p>
        </div>
        <div id=middle_body2 >
            <p>奖励</p>
            <p>1</p>
        </div>
        <div id=middle_body3 >
            <p>好友</p>
            <p>1</p>
        </div>
        </div>
    </div>
<div id=bodyer>
    <div id=body_left>
        <div id=body_left_foot>
            <div id="message" >
                <form >
                    发送消息: <input type="text" name="fname" />
                    <input type="submit" value="Submit" />
                </form>
            </div>
            <p style="font-size:24px;"> <b>好友列表</b> </p>

                <p class="send">TOM</p>
                <p class="send">PETER</p>
                <p class="send">jopl</p>

        </div>
    </div>

    <div id=body_right>

        <div id=body_right_top1>
            <p>最新的文档</p>
        </div>
        <div id=body_right_top2>
            <p>任务管理</p>
        </div>
    </div>
</div>

</div>
</body>
</html>

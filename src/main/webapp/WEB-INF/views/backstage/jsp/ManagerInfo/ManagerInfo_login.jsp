<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html  >
  <head>
    <base href="<%=basePath%>">
    
    <title>孝和集团老年服务系统后台</title>
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
    <link rel="stylesheet" type="text/css" href="resources/ManagerInfo_login/css/style.css" tppabs="resources/ManagerInfo_login/css/style.css">
    <style>
    body{height:100%;background:#16a085;overflow:hidden;}
    canvas{z-index:-1;position:absolute;}
    </style> 
   <script type="text/javascript" src="/resources/ManagerInfo_login/js/jquery.js"></script>
    <script src="/resources/ManagerInfo_login/js/verificationNumbers.js" ></script>
    <script src="/resources/ManagerInfo_login/js/Particleground.js" tppabs="js/Particleground.js"></script>
   <script>     
   $(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="javascrpt:;"/*tpa=http://***index.html*/;
	  });
});
</script>
  </head>
  <body>
   <div class="admin_login"> 
      <div class="admin_top">
       <strong>系统后台管理员登录</strong>
       <em>welcome!</em>
       </div>
      <div class="admin_main">
        <form action="/user/login.action" method="post" class="fitfrom">
        <div class="input_outer">
        <span class="u_user"></span>
        <input type="text" name="name" class="name" placeholder="账号" autocomplete="off"> 
        </div>
        <div class="input_outer">
        <span class="us_user"></span>
        <input type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false">
        </div>
        <input type="radio" name="type" value="0" class="input_radio">商城管理 
        <input type="radio" name="type" value="1" class="input_radio">信息发布
        <input type="radio" name="type" value="2" class="input_radio">教育平台
        <input type="submit" id="submit" value="登录" class="input_submit"> 
         </form> 
         <p>© 2017-2018 jq22 版权所有</p>
         <P>贵州大学FBI</P>
    </div>
 
   
   
 
  </body>
</html>

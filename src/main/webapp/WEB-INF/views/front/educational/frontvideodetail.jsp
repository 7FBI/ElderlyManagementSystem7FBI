<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'frontvideodetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="/resources/css/frontedu.css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

</head>

<body>
	<div class="videodetail">
		
		 <div >
		 <div style="float: left;">
			<font size="12px" color="orange"><strong>VIDEO</strong>视频</font></div>
			<div style="float: left; margin-top: 30px;padding-left: 10px;"><font color="#8cdcea" size="1px;">我们的作品,他们的故事<br/> Our &nbsp;work,&nbsp;&nbsp;their stories</font></div>
			
		 </div>
	
		<div class="myvideos">
		  <video height="500" width="100%" controls autoplay>
		     <source src="/files${oneVideoById.vurl}" type="video/mp4"> 				
			 <source
				src="/files${oneVideoById.vurl}" type="video/ogg">
				<!-- 如果浏览器不支持video标签，则使用flash --> 
			  <embed
				src="/files${oneVideoById.vurl}"
				type="application/x-shockwave-flash" width="240"
				height="160" allowscriptaccess="always"
				allowfullscreen="true">
			 </embed> 您的浏览器不支持视频播放
			 
	   </video>  
	</div>

	<div class="videocontment">
		<ul>
			<li>标题：${oneVideoById.vtitle}</li>
			<li>主讲人：${oneVideoById.vteacher}</li>
			<li>价格：${oneVideoById.vprice}</li>
			<li>内容简介</li>
           
		</ul>
         <div class="contentstyle">${oneVideoById.vcontent}</div>	
	</div>
</div>

</body>
</html>

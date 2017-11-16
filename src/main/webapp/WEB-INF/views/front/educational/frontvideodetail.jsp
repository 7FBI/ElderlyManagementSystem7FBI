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
		<!--标题  -->
		 <div style="padding-left: 50px;">
		 <div style="float: left;">
			<font size="12px" color="orange"><strong>VIDEO</strong>视频</font></div>
			<div style="float: left; margin-top: 30px;padding-left: 10px;"><font color="#8cdcea" size="1px;">我们的作品,他们的故事<br/> Our &nbsp;work,&nbsp;&nbsp;their stories</font></div>
			
		 </div>
	<!--视频播放  -->
		<div class="myvideos">
		  <video height="680" width="100%" controls autoplay>
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
	   
	    <!--内容简介部分  -->
    <div class="contentdetail">
        <ul>
           <li> <font size="5px">标题：${oneVideoById.vtitle}</font></li>
           <li>主讲者：${oneVideoById.vteacher}</li>
           <li>价&nbsp;&nbsp;&nbsp;格：<font color="red">￥:${oneVideoById.vprice}</font></li>
            <li>内容简介：<br> <p class="contentstyle">${oneVideoById.vcontent}</p></li>
         </ul>
      
     </div>  
	</div> 

    <!--右边同类视频  -->
	<div class="videocontment">
		<%-- <ul>
			<li>标题：${oneVideoById.vtitle}</li>
			<li>主讲人：${oneVideoById.vteacher}</li>
			<li>价格：${oneVideoById.vprice}</li>
			<li>内容简介</li>
           
		</ul> --%>	
		<ul>
		 <c:if test="${!empty sameVideo}"> 
			<c:forEach items="${sameVideo }" var="sameVideo">					
						<li style="width:200px;">
							<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
							<a
							  href="${pageContext.request.contextPath }/front/videos/selectvideobyid.action?id=${sameVideo.id}">
								<!-- <video width="210" height="170" controls> --> <video
									width="200" height="138" preload="metadata"> <source
									src="/files${sameVideo.vurl}"
									type="video/mp4"></video>
						</a> <br>
					
					     <strong>  
							<a href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${sameVideo.id}">
									<font color="white" size="4px">${sameVideo.vtitle }</font>
							</a>&nbsp;&nbsp; <font color="red">￥:${sameVideo.vprice }</font>
						</strong> <!--鼠标移上去显示  --> <br>主讲人:${sameVideo.vteacher}<br>
							内容:${sameVideo.vcontent}....

						</li>
					</c:forEach>
            </c:if> 
		</ul>
        <%--  <div class="contentstyle">${oneVideoById.vcontent}</div>	 --%>
	</div>	 
</div>
 <%-- <div style="text-align: left;">
    <font>${oneVideoById.vtitle}</font><br>
         ${oneVideoById.vteacher}<br>
         ${oneVideoById.vprice}<br>
    <p >${oneVideoById.vcontent}</p>
    </div> --%>
</body>
</html>

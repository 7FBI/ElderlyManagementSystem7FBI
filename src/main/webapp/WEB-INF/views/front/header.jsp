<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />

</head>
<body >
	<header>
	<div id="navbg"></div>
	<div class="wrapper" style="height:140px;">
		<h1 class="logo">
			<a href="#" title="宜嘉FBI老人管理系统"> <img
				src="/resources/front/images/self_img/yijia_bg_logo.png" style="width:380px;height:70px;"
				alt="宜嘉FBI老人管理系统" />
			</a>
		</h1>
		<nav>
		<ul>
			<li class="home"><a href="${pageContext.request.contextPath}/">首页</a></li>
			<li class="about"><a href="${pageContext.request.contextPath}/front/activity/allActive">活动中心</a></li>
			<li class="service"><a href="${pageContext.request.contextPath}/front/videos/allvideo">教育系统</a></li>
			<li class="cases"><a href="/front/products/selectAllProducts">电子商务</a></li>
			<li class="client"><c:if test="${oldUsers==null }">
					<a href="#" id="sumbit">个人中心</a>
				</c:if> <c:if test="${oldUsers!=null }">
					<a href="/front/oldUsers/selectByUid">${oldUsers.username}</a>
				</c:if></li>				
		</ul>
		</nav>
		</div>

	</header>
</body>
</html>
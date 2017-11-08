<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css" />
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />

</head>
<body id="ruifoxHome">
	<header>
	<div id="navbg"></div>
	<div class="wrapper">
		<h1 class="logo">
			<a href="#" title="宜嘉FBI老人管理系统"> <img
				src="/resources/front/images/logo.png" width="213" height="36"
				alt="宜嘉FBI老人管理系统" />
			</a>
		</h1>
		<nav>
		<ul>
			<li class="home"><a href="/gotoFront/index">首页<span>网站首页！</span></a></li>
			<li class="about"><a href="/gotoFront/HealthSystem">健康系统<span>关于健康？</span></a></li>
			<li class="service"><a href="/gotoFront/EducationSystem">教育系统<span>学习使人快乐
						？</span></a></li>
			<li class="cases"><a href="/front/products/selectAllProducts">电子商务<span>我们能卖什么？</span></a></li>
			<li class="client"><c:if test="${oldUsers==null }">
					<a href="/front/oldUsers/selectByUid">个人中心<span>我的资料？</span></a>

				</c:if> <c:if test="${oldUsers!=null }">
					<a href="/gotoFront/ElectronicCommerce">${oldUsers.username}<span>我的首页！</span></a>
				</c:if></li>
		</ul>

		</nav>
		<button id="sumbit">提交</button>
	</div>

	</header>
</body>
</html>
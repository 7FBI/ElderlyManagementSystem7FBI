<%@page import="com.bean.OldUsers"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<!-- <link href="/resources/front/css/self_exchange/admin.css"
	rel="stylesheet" type="text/css"> -->
<link href="/resources/front/css/self_exchange/admin.css"
	rel="stylesheet" type="text/css">
<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="/resources/front/css/self_exchange/personal.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="/resources/front/js/self_exchange/jquery-1.7.2.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>
</head>
<body>
	<%-- <%
		OldUsers oldUsers = (OldUsers) session.getAttribute("oldUsers");
		String username = oldUsers.getUsername();
	%> --%>
	<header> 
	<article>
	<div class="mt-logo">
		<!--顶部导航条 -->
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
					<c:if test="${!empty oldUsers.username}">
						<a href="#" target="_top" class="h">${oldUsers.username}，欢迎登录</a>
					</c:if>
					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd">
						<a href="/gotoFront/ElectronicCommerce_secondary" target="_top"
							class="h"><i class="am-icon-home am-icon-fw"></i>商城首页</a>
					</div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng">
						<a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
					</div>
				</div>
				<div class="topMessage mini-cart">
					<div class="menu-hd">
						<a id="mc-menu-hd" href="#" target="_top"><i
							class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong
							id="J_MiniCartNum" class="h">0</strong></a>
					</div>
				</div>
				<div class="topMessage favorite">
					<div class="menu-hd">
						<a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹
						</span><i class="am-icon-down am-icon-fw"></i> </a>
						<!-- <div class="secondary">
							<a>收藏的宝贝</a>
							<a>收藏的店铺</a>
						</div> -->
					</div>
				</div>

				<div class="topMessage customer">
					<div class="menu-hd">
						<a href="#" target="_top"><i class="am-icon-phone am-icon-fw"></i><span>客服
						</span> </a>
						<!-- <div class="secondary">
							<a>收藏的宝贝</a>
							<a>收藏的店铺</a>
						</div> -->
					</div>
				</div>

				<div class="topMessage loginout">
					<div class="menu-hd">
					  <a href="/gotoFront/login" target="_top"><i class="am-icon-upon am-icon-fw"></i><span>登陆 &nbsp;
						</span> </a>
						<a href="#" target="_top"><i class="am-icon-off am-icon-fw"></i><span>退出
						</span> </a>
						<!-- <div class="secondary">
							<a>收藏的宝贝</a>
							<a>收藏的店铺</a>
						</div> -->
					</div>
				</div>
			</ul>
		</div>
		<div class="clear"></div>
	</div>

	</article> </header>
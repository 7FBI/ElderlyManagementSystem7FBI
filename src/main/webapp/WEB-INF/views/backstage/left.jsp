<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="/resources/backstage/Js/prototype.lite.js"
	type="text/javascript"></script>
<script src="/resources/backstage/Js/moo.fx.js" type="text/javascript"></script>
<script src="/resources/backstage/Js/moo.fx.pack.js"
	type="text/javascript"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/backstage/Style/skin.css" />
<script type="text/javascript">
	window.onload = function() {
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');

		var myAccordion = new fx.Accordion(toggles, contents, {
			opacity : true,
			duration : 400
		});
		myAccordion.showThisHideOpen(contents[0]);
		for (var i = 0; i < document.getElementsByTagName("a").length; i++) {
			var dl_a = document.getElementsByTagName("a")[i];
			dl_a.onfocus = function() {
				this.blur();
			}
		}
	}
</script>
</head>

<body>
	<!-- <table width="100%" height="280" border="0" cellpadding="0"
		cellspacing="0" bgcolor="#EEF2FB"> -->
		<table width="100%" height="280" border="0" cellpadding="0"
		cellspacing="0" bgcolor="#E0EEEE">
		<tr>
			<td width="182" valign="top">
				<div id="container">
				<h1 class="type">
						<a href="javascript:void(0)">客户管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu-top-line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
						
							<li><a href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action" target="main">客户列表</a></li>
							<li><a href="${pageContext.request.contextPath}/gotoBackstage/register" target="main">添加客户</a></li>
							<li><a href="${pageContext.request.contextPath}/gotoBackstage/register" target="main">添加回访记录</a></li>
						</ul>
					</div>
					<!-----------  ------------>
					<h1 class="type">
						<a href="javascript:void(0)">地域管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu-top-line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
						
							<li><a href="${pageContext.request.contextPath}/area/findAllArea.action" target="main">地域列表</a></li>
							<li><a href="${pageContext.request.contextPath}/gotoBackstage/addarea" target="main">添加地域</a></li>
						</ul>
					</div>
					<!-------------------  -->
					<h1 class="type">
						<a href="javascript:void(0)">病例管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu-top-line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
						
							<li><a href="${pageContext.request.contextPath}/.action" target="main">添加病例</a></li>
							<li><a href="#" target="main">活动管理</a></li>
						</ul>
					</div>
					<!-------------------  -->
					<h1 class="type">
						<a href="javascript:void(0)">教育模块</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu-top-line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
						
							<li><a href="${pageContext.request.contextPath}/.action" target="main">添加活动</a></li>
							<li><a href="#" target="main">活动管理</a></li>
						</ul>
					</div>
		
				<!------------  ----------------->
					<h1 class="type">
						<a href="javascript:void(0)">分店系统</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu-top-line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
						
							<li><a href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action" target="main">老人管理</a></li>
							<li><a href="#" target="main">活动管理</a></li>
						</ul>
					</div>
					<!-- ------------------- -->
					<h1 class="type">
						<a href="javascript:void(0)">产品管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu_top_line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
							<li><a href="#" target="main">产品分类</a></li>
							<li><a href="#" target="main">添加产品</a></li>
							<li><a href="#" target="main">产品列表</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">订单管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu_top_line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
							<li><a href="#" target="main">待处理订单</a></li>
							<li><a href="#" target="main">处理中订单</a></li>
							<li><a href="#" target="main">已发货订单</a></li>
							<li><a href="#" target="main">已完成订单</a></li>
						</ul>
					</div>

					<h1 class="type">
						<a href="javascript:void(0)">订单管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu_top_line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
							<li><a href="#" target="main">待处理订单</a></li>
							<li><a href="#" target="main">处理中订单</a></li>
							<li><a href="#" target="main">已发货订单</a></li>
							<li><a href="#" target="main">已完成订单</a></li>
						</ul>
					</div>

					<!-- *********** -->
					<h1 class="type">
						<a href="javascript:void(0)">会员管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img
									src="/resources/backstage/Images/menu_top_line.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="RM">
							<li><a href="#" target="main">注册设置</a></li>
							<li><a href="#" target="main">审核设置</a></li>
							<li><a href="#" target="main">添加会员</a></li>
							<li><a href="#" target="main">会员管理</a></li>
						</ul>
					</div>
					<!-- *********** -->
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
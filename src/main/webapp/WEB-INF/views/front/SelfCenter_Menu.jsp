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
<title>个人资料</title>

		<link href="/resources/front/css/self_exchange/admin.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/amazeui.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/personal.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/infstyle.css" rel="stylesheet" type="text/css">
		
<script src="/resources/front/js/self_exchange/jquery.min.js" type="text/javascript"></script>
		<script src="/resources/front/js/self_exchange/amazeui.js" type="text/javascript"></script>

</head>
<body>
<aside class="menu">
				<ul>
					<li class="person">
						<a href="index.html">个人中心</a>
					</li>
					<li class="person">
						<a href="#">个人资料</a>
						<ul>
							<li class="active"> <a href="/front/oldUsers/selectByUid">个人信息</a></li>
							<li> <a href="/front/matchdisease/diseasedetails">我的病历</a></li>
							<li> <a href="/gotoFront/SelfCenter_updatepassword">安全设置</a></li>
							<li> <a href="/front/oldUsers/selectProfileByUid">收货地址</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的交易</a>
						<ul>
						    <li> <a href="/front/joinActive/selectMyJoinActive.action?">我的活动</a></li>
							<li><a href="/front/orders/allOrdersList">订单管理</a></li>
							<li> <a href="/gotoFront/SelfCenter_RefundAndAfterSale">退款售后</a></li>
						</ul>
					</li>
					<li class="person">
						<a href="#">我的资产</a>
						<ul>
							<li> <a href="/gotoFront/SelfCenter_Coupon">优惠券 </a></li>
							<li> <a href="/gotoFront/SelfCenter_CreditDetail">积分</a></li>
							<li> <a href="bill.html">账单明细</a></li>
						</ul>
					</li>

					<li class="person">
						<a href="#">我的小窝</a>
						<ul>
							<li> <a href="/front/collection/select_list">收藏</a></li>
							<li> <a href="/gotoFront/SelfCenter_BrowserHistory">足迹</a></li>
							<li> <a href="/gotoFront/SelfCenter_Comment">评价</a></lSi>
							
						</ul>
					</li>
					<li class="person">
						<a href="#">我的健康</a>
						<ul>
							<li> <a href="/front/oldUsers/selectDiseaseAndDiseaseDetailsByUid">病例管理</a></li>
							<li> <a href="/gotoFront/SelfCenter_Heath">活动记录</a></li>
							<li> <a href="/gotoFront/SelfCenter_Comment">评价</a></li>
							
						</ul>
					</li>
					<li class="person">
						<a href="#">意见反馈</a>
						<ul>
							<li><a href="/gotoFront/Feedbackpage">反馈</a></li>
							<li><a href="/front/feedback/selecttofeedbackreply.action">我的反馈</a></li>
						</ul>
					</li>
				</ul>

			</aside>
</body>
</html>
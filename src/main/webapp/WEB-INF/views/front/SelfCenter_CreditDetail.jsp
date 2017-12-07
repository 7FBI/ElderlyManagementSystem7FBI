<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>我的积分</title>
<link href="/resources/front/css/self_exchange/point.css" rel="stylesheet" type="text/css">
<script src="/resources/front/js/self_exchange/jquery.min.js"
	type="text/javascript"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"
	type="text/javascript"></script>
</head>
<body style="background:#F8F8F8">
	<jsp:include page="Self_header.jsp"></jsp:include>
	<div class="nav-table">
			<div class="long-title"><span class="all-goods">全部分类</span></div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="/front/products/selectAllProducts">首页</a></li>
					<li class="qc"><a href="#">打折区</a></li>
					<li class="qc"><a href="/front/groupbuying/Lookto.action">团购</a></li>
					<li class="qc last"><a href="/front/creditshop/SelectAllCreditShop">积分兑换区</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>
		</div>
		<b class="line"></b>

		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="points">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的积分</strong> / <small>My&nbsp;Point</small></div>
						</div>
						<hr/>
						<div class="pointsTitle">
						   <div class="usable">可用积分<br><br><span style="font-size:20px;">${credit.rest_credit }</span></div>
						   <div class="pointshop" ><a href="/front/creditshop/SelectAllCreditShop">积分商城</a></div>
						   <div class="signIn" ></div>
						</div>
						<div class="pointlist am-tabs" data-am-tabs>
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">全部</a></li>
							</ul>
							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1" >
									<table style="width:770px;">
										
										<thead>
											<tr>												
												<th class="th1">消费积分</th>
												<th class="th2">剩余积分</th>
												<th class="th2">总的积分</th>
											</tr>
										</thead>										
										<tbody>
											<tr>
												<td class="pointType">${credit.major_credit-credit.rest_credit }</td>
												<td class="pointNum">${credit.rest_credit }</td>
												<td class="pointNum">${credit.major_credit }</td>
											</tr>
											
										
										</tbody>
									</table>
								</div>
								

							</div>

						</div>
					</div>
				</div>
				<!--底部-->
			</div>

		<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
		</div>
		

<jsp:include page="EC_footer.jsp"></jsp:include>
	
</body>
</html>
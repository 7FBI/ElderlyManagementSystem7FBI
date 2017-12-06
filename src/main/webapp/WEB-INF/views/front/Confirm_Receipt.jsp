<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>结算页面</title>

<link href="/resources/front/css/self_exchange/cartstyle.css"
	rel="stylesheet" type="text/css" />

<link href="/resources/front/css/self_exchange/jsstyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="/resources/front/js/self_exchange/address.js"></script>
</head>
<body>
	<!--顶部导航条 -->
	<jsp:include page="Self_header.jsp"></jsp:include>

	<div class="clear"></div>
	<div class="concent">
		<!--地址 -->
		<div class="paycont">
			<h3>您的位置：</h3>
			<!--订单 -->
			<br>
			<br>
			<br>
			<br>
			<br>
			<span style="font-size:25px;margin-top:100px;">我已收到货，同意付款</span>
			<div class="concent" style="border-top:1px solid black;">
				<div id="payTable">
					<h3>订单信息详情</h3>
					<div class="cart-table-th">
						<div class="wp">

							<div class="th th-item">
								<div class="td-inner">商品信息</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">单价</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">数量</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">优惠</div>
							</div>
							<div class="th th-oplist">
								<div class="td-inner">总价</div>
							</div>

						</div>
					</div>
					<div class="clear"></div>
				</div>
				<tr id="J_BundleList_s_1911116345_1" class="item-list"
					style="background: red;">
					<div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
						<div class="bundle-main">
							<div
								style="float: left; width: 500px; height: 50px; line-height: 50px;">
								<label class="lables_d">订单编号:${orders.id}</label> <label
									class="lables_v" id="oids"></label>
							</div>
						<c:forEach items="${orderdetails}" var="ord">
							<ul class="item-content clearfix">
								
									<div class="pay-phone">
										<li class="td td-item">
											<div class="item-pic">
												<a href="/front/products/selectProductDetailByPrimaryKey?id=${ord.pid}" class="J_MakePoint"> 
												<img src="/fbiImage${ord.products.producturl }"
													class="itempic J_ItemImg"></a>
											</div>
											<div class="item-info">
												<div class="item-basic-info">
													<a href="/front/products/selectProductDetailByPrimaryKey?id=${ord.pid}" target="_blank" title="${ord.products.pname}"
														class="item-title J_MakePoint" data-point="tbcart.8.11">${ord.products.pname}</a>
												</div>
											</div>
										</li>
										<li class="td td-info">
											<div class="item-props">
												<span class="sku-line">商品类型：${ord.products.classification.classname}</span>
												<!-- <span class="sku-line">包装：两支手袋装（送彩带）</span> -->
											</div>
										</li>
										<li class="td td-price">
											<div class="item-price price-promo-promo">
												<div class="price-content">
													<em class="J_Price price-now">${ord.products.price}</em>
												</div>
											</div>
										</li>
									</div>

									<li class="td td-amount">
										<div class="amount-wrapper ">
											<div class="item-amount ">
												<span class="phone-title">购买数量</span>
												<div class="sl" style="text-align: center;">
													<input
														class="text_box" disabled="disabled" name="" type="text"
														value="${ord.ordercount}"
														style="width: 40px; padding: 6px; line-heigt: 40px; border:white;" />
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<em tabindex="0" class="J_ItemSum number">
											<fmt:formatDate value="${orders.ordertime}" pattern="yyyy-MM-dd HH:mm:ss" /></em>
										</div>
									</li>
									<!-- <li class="td td-oplist">
										<div class="td-inner">
											<span class="phone-title">状态</span>
											<div class="pay-logis">待付款</div>
										</div>
									</li> -->
								
							</ul>
							</c:forEach>
							<div class="clear"></div>

						</div>
				</tr>
			</div>
			<div class="clear"></div>
			<div class="pay-total">
				<!--获得积分-->
				<div class="order-extra">
					<div class="order-user-info">
						<div id="holyshit257" class="memo">
							<label>获得积分：</label>
						</div>
					</div>

				</div>

				

				<!--信息 -->
				<div class="order-go clearfix">
					<div class="pay-confirm clearfix">
						<div class="box" style="border:none;">
							<div tabindex="0" id="holyshit267" class="realPay" >
								<em class="t">实付款：</em> <span class="price g_price "> <span style="font-size:15px;">¥</span>
									<em class="style-large-bold-red " id="J_ActualFee" style="font-size:18px;">244.00</em>
								</span><br>
								<em class="t">（可获返积分：）</em> 
									<em class="style-large-bold-red " id="J_ActualFee"><a href="####">点此查看详情</a></em>
								</span>
							</div>

						</div>

						
					</div>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>
	
	<jsp:include page="EC_footer.jsp"></jsp:include>
	

		

		

</body>
</html>
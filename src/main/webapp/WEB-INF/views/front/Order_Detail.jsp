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
			<div class="address" style="border: 1px solid black;">
				<div class="clear"></div>
				<ul>
					<c:forEach items="${profile}" var="pds">
						<div class="per-border"></div>
						<li class="user-addresslist defaultAddr">

							<div class="address-left">
								<div class="user DefaultAddr">

									<span class="buy-address-detail"> </span>
								</div>
								<div class="default-address DefaultAddr">
									<span class="buy-user">收货人：${oldUsers.username } </span> <br>
									<br> <span class="buy-phone">买家留言：${oldUsers.tell }</span>
									<br> <br> <span
										class="buy-line-title buy-line-title-type">收货地址：</span> <span
										class="buy--address-detail"> ${pds.signaddress} </span> </span>
								</div>

							</div>

						</li>
					</c:forEach>
					<li class="order_status"
						style="width: 400px; height: 150px; float: left; position: relative;">
						<div class="status"
							style="margin-top: 20px; width: 400px; height: 100px; float: left; position: absolute;">
							<span style="font-size: 25px; padding-left: 50px;">订单状态：</span> <span>${orders.orderstatus==0?"待付款":orders.orderstatus==1?"待收货":"已完成" }
							</span>
						</div>
						<div class="you_can"
							style="width: 400px; height: 50px; top: 100px; float: left; position: absolute;">
							<span style="padding-left: 50px;">您可以&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<c:choose>
									<c:when test="${orders.orderstatus==0}">
										<a href="#">立即付款</a>&nbsp;&nbsp;&nbsp;&nbsp; 
										<a href="#">放弃订单</a>
									</c:when>
									<c:when test="${orders.orderstatus==1}">
										<a href="/front/orders/ordersOverInfoByExchangeConfirmReceipt?id=${orders.id}">确认收货</a>
									</c:when>
									<c:otherwise>
										<a>再购一单</a>
									</c:otherwise>
								</c:choose>
							</span>
						</div>

					</li>
				</ul>

				<div class="clear"></div>
			</div>


			<!--订单 -->
			<div class="concent">
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
								<div class="td-inner">下单时间</div>
							</div>
							<div class="th th-oplist">
								<div class="td-inner">状态</div>
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

							<ul class="item-content clearfix">
								<c:forEach items="${orderdetails}" var="ord">
									<div class="pay-phone">
										<li class="td td-item">
											<div class="item-pic">
												<a href="#" class="J_MakePoint"> <img
													src="/files${ord.products.producturl }"
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
												<span class="sku-line">商品类型：${ord.products.tid}</span>
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
													<!-- <input class="min am-btn" name="" type="button" value="-" style="width: 40px; padding: 6px; line-heigt: 40px;" /> -->
														<input class="text_box" name="ordercount" disabled="disabled" type="text" value="${ord.ordercount}" style="width: 40px; padding: 6px; line-heigt: 40px;" />
													<!-- <input class="add am-btn" name="" type="button" value="+" style="width: 40px; padding: 6px; line-heigt: 40px;" /> -->
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
									<%-- <li class="td td-oplist">
										<div class="td-inner">
											<span class="phone-title">状态</span>
											<div class="pay-logis">${orders.orderstatus==0?"代付款":orders.orderstatus==1?"待收货":"已完成" }</div>
										</div>
									</li> --%>
								</c:forEach>
							</ul>
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
							<label>获得积分：${orders.money*0.1 }</label>
						</div>
					</div>

				</div>

				<!--含运费小计 -->
				<div class="buy-point-discharge ">
					<p class="price g_price ">
						合计: <span>¥</span><em class="pay-sum" id="allMonyes">${orders.money }</em>
					</p>
				</div>

			</div>

			<div class="clear"></div>
		</div>
	</div>
	
	<div class="theme-popover-mask"></div>
	
	<div class="clear"></div>
	<!-- <script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
		
		<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
	<script type="text/javascript">
		layui.use('layer', function() {
			var $ = layui.jquery, layer = layui.layer;
			$(document).on('change',"input[type='checkbox']",function(){
				var ckdoc=$(this);
				var allm=$("#allMonyes").text();
				var alm=$("#J_ActualFee");
				if (ckdoc.is(":checked")) {
					alm.text(parseFloat(allm)+parseFloat(ckdoc.attr("m"))+6);
				} else {
					alm.text(parseFloat(allm)+6);
				}
			})
		})
	</script> -->

</body>
</html>
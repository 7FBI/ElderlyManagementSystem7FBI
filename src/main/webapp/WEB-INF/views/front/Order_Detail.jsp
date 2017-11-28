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
										class="buy--address-detail"> <!-- <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">洪山</span>区
										<span class="street">雄楚大道666号(中南财经政法大学)</span> -->
										${pds.signaddress}
									</span> </span>
								</div>

							</div>

						</li>
					</c:forEach>
					<li class="order_status"
						style="width: 400px; height: 150px; float: left; position: relative;">
						<div class="status"
							style="margin-top: 20px; width: 400px; height: 100px; float: left; position: absolute;">
							<span style="font-size: 25px; padding-left: 50px;">订单状态：</span>

						</div>
						<div class="you_can"
							style="width: 400px; height: 50px; top: 100px; float: left; position: absolute;">
							<span style="padding-left: 50px;">您可以&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="/front/orders/ordersOverInfoByExchangeConfirmReceipt?id=${orders.id}">确认收货</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>申请退款</a>&nbsp;&nbsp;&nbsp;&nbsp;<a>延长收货时间</a>
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
													<a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色"
														class="item-title J_MakePoint" data-point="tbcart.8.11">${ord.products.pname}</a>
												</div>
											</div>
										</li>
										<li class="td td-info">
											<div class="item-props">
												<span class="sku-line">商品类型：${ord.products.tid}</span>
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
													<input class="min am-btn" name="" type="button" value="-"
														style="width: 40px; padding: 6px; line-heigt: 40px;" /><input
														class="text_box" name="" type="text"
														value="${ord.ordercount}"
														style="width: 40px; padding: 6px; line-heigt: 40px;" /><input
														class="add am-btn" name="" type="button" value="+"
														style="width: 40px; padding: 6px; line-heigt: 40px;" />
												</div>
											</div>
										</div>
									</li>
									<li class="td td-sum">
										<div class="td-inner">
											<em tabindex="0" class="J_ItemSum number"><fmt:formatDate
													value="${orders.ordertime}" pattern="yyyy-MM-dd HH:mm:ss" /></em>
										</div>
									</li>
									<li class="td td-oplist">
										<div class="td-inner">
											<span class="phone-title">状态</span>
											<div class="pay-logis">待付款</div>
										</div>
									</li>
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
							<label>获得积分：</label>
						</div>
					</div>

				</div>

				<!--含运费小计 -->
				<div class="buy-point-discharge ">
					<p class="price g_price ">
						合计（含运费） <span>¥</span><em class="pay-sum">244.00</em>
					</p>
				</div>

				<!--信息 -->
				<div class="order-go clearfix">
					<div class="pay-confirm clearfix">
						<div class="box">
							<span class="buy-user" style="float:left;">优惠券： </span> <span class="buy-phone">15871145629</span>
							</span> <br> <span class="buy-user" style="float:left;">红包： </span> <span
								class="buy-phone" >158gngchmgchmcbmbhmbm71145629</span> </span> <br>
							<span class="buy-user" style="float:left;">运费： </span> <span class="buy-phone">158bhmbmchmhm71145629</span>
							</span> <br> <span class="buy-user" style="float:left;">运费险： </span> <span
								class="buy-phone">15871145629</span> </span>
							<div tabindex="0" id="holyshit267" class="realPay">
								<em class="t">实付款：</em> <span class="price g_price "> <span>¥</span>
									<em class="style-large-bold-red " id="J_ActualFee">244.00</em>
								</span>
							</div>

						</div>

						
					</div>
				</div>
			</div>

			<div class="clear"></div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-hd">
			<p>
				<a href="#">恒望科技</a> <b>|</b> <a href="#">商城首页</a> <b>|</b> <a
					href="#">支付宝</a> <b>|</b> <a href="#">物流</a>
			</p>
		</div>
		<div class="footer-bd">
			<p>
				<a href="#">关于恒望</a> <a href="#">合作伙伴</a> <a href="#">联系我们</a> <a
					href="#">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a
					href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
					- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
					target="_blank">网页模板</a></em>
			</p>
		</div>
	</div>
	</div>
	<div class="theme-popover-mask"></div>
	<div class="theme-popover">

		<!--标题 -->
		<div class="am-cf am-padding">
			<div class="am-fl am-cf">
				<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add
					address</small>
			</div>
		</div>
		<hr />

		<div class="am-u-md-12">
			<form class="am-form am-form-horizontal">

				<div class="am-form-group">
					<label for="user-name" class="am-form-label">收货人</label>
					<div class="am-form-content">
						<input type="text" id="user-name" placeholder="收货人">
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-phone" class="am-form-label">手机号码</label>
					<div class="am-form-content">
						<input id="user-phone" placeholder="手机号必填" type="email">
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-phone" class="am-form-label">所在地</label>
					<div class="am-form-content address">
						<select data-am-selected>
							<option value="a">浙江省</option>
							<option value="b">湖北省</option>
						</select> <select data-am-selected>
							<option value="a">温州市</option>
							<option value="b">武汉市</option>
						</select> <select data-am-selected>
							<option value="a">瑞安区</option>
							<option value="b">洪山区</option>
						</select>
					</div>
				</div>

				<div class="am-form-group">
					<label for="user-intro" class="am-form-label">详细地址</label>
					<div class="am-form-content">
						<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
						<small>100字以内写出你的详细地址...</small>
					</div>
				</div>

				<div class="am-form-group theme-poptit">
					<div class="am-u-sm-9 am-u-sm-push-3">
						<div class="am-btn am-btn-danger">保存</div>
						<div class="am-btn am-btn-danger close">取消</div>
					</div>
				</div>
			</form>
		</div>

	</div>

	<div class="clear"></div>

</body>
</html>
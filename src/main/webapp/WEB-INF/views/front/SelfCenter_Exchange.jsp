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
<title>订单管理</title>
<link href="/resources/front/css/self_exchange/admin.css"
	rel="stylesheet" type="text/css">
<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="/resources/front/css/self_exchange/personal.css"
	rel="stylesheet" type="text/css">
<link href="/resources/front/css/self_exchange/orstyle.css"
	rel="stylesheet" type="text/css">

<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>
</head>
<body>
	<!--头 -->
	<jsp:include page="Self_header.jsp"></jsp:include>
	<div class="nav-table">
		<div class="long-title">
			<span class="all-goods">全部分类</span>
		</div>
		<div class="nav-cont">
			<ul>
				<li class="index"><a href="#">首页</a></li>
				<li class="qc"><a href="#">闪购</a></li>
				<li class="qc"><a href="#">限时抢</a></li>
				<li class="qc"><a href="#">团购</a></li>
				<li class="qc last"><a href="#">大包装</a></li>
			</ul>
			<div class="nav-extra">
				<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利 <i
					class="am-icon-angle-right" style="padding-left: 10px;"></i>
			</div>
		</div>
	</div>
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-order">

					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small>
						</div>
					</div>
					<hr />

					<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

						<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active"><a href="#tab1">所有订单</a></li>
							<li><a href="#tab2">待付款</a></li>
							<li><a href="#tab3">待发货</a></li>
							<li><a href="#tab4">待评价</a></li>
						</ul>

						<div class="am-tabs-bd">
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">
								<div class="order-top">
									<div class="th th-item">
										<td class="td-inner">商品</td>
									</div>
									<div class="th th-price">
										<td class="td-inner">单价</td>
									</div>
									<div class="th th-number">
										<td class="td-inner">数量</td>
									</div>
									<div class="th th-operation">
										<td class="td-inner">商品操作</td>
									</div>
									<div class="th th-amount">
										<td class="td-inner">合计</td>
									</div>
									<div class="th th-status">
										<td class="td-inner">交易状态</td>
									</div>
									<div class="th th-change">
										<td class="td-inner">交易操作</td>
									</div>
								</div>

								<div class="order-main">
									<div class="order-list">

										<!--交易成功-->
										<c:forEach items="${orders}" var="ord">
											<div class="order-status5">
												<div class="order-title">
													<div class="dd-num">
														订单编号:
														<c:if test="${ord.orderstatus==0 }">
																			<a href="/front/orders/ordersInfo?id=${ord.id }">${ord.id}</a>
																		</c:if>
																		<c:if test="${ord.orderstatus>=1 }">
																			<a href="/front/orders/ordersOverInfo?id=${ord.id }">${ord.id}</a>
																		</c:if>
													</div>
													<span>成交时间：${ord.ordertime}</span>
													<!--    <em>店铺：小桔灯</em>-->
												</div>
												<div class="order-content">
													<div class="order-left">
														<c:forEach items="${ord.orderdetails}" var="odt" begin="0"
															end="2">
															<ul class="item-list">
																<li class="td td-item">
																	<div class="item-pic">
																		<a href="#" class="J_MakePoint"> <img src="/files${odt.products.producturl}">
																		</a>
																	</div>
																	<div class="item-info">
																		<div class="item-basic-info">
																			<a
																				href="/front/products/selectAllProductsByType?tid=${odt.pid}">
																				<p>${odt.products.pname}</p>
																				<p class="info-little">
																					说明1：${odt.products.productstype1}<br />说明1：${odt.products.productstype2}
																				</p>
																			</a>
																		</div>
																	</div>
																</li>
																<li class="td td-price">
																	<div class="item-price">
																		<label style="color: red;">￥</label>${odt.products.price }
																	</div>
																</li>
																<li class="td td-number">
																	<div class="item-number">
																		<span>×</span>${odt.ordercount }
																	</div>
																</li>
																<li class="td td-operation">
																	<div class="item-operation"></div>
																</li>
															</ul>
														</c:forEach>
													</div>
													<div class="order-right">
														<li class="td td-amount">
															<div class="item-amount">
																合计：<label style="color: red;">￥</label>${ord.money}
																<!-- <p>含运费：<span>10.00</span></p> -->
															</div>
														</li>
														<div class="move-right">
															<li class="td td-status">
																<div class="item-status">
																	<p class="Mystatus">交易成功</p>
																	<p class="order-info">
																		<c:if test="${ord.orderstatus==0 }">
																			<a href="/front/orders/ordersInfo?id=${ord.id }">订单详情</a>
																		</c:if>
																		<c:if test="${ord.orderstatus>=1 }">
																			<a href="/front/orders/ordersOverInfo?id=${ord.id }">订单详情</a>
																		</c:if>
																	</p>

																</div>
															</li>
														</div>
													</div>
												</div>
											</div>
											</
										</c:forEach>

									</div>
								</div>

								<div class="am-tab-panel am-fade" id="tab2">

									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">
											<c:forEach items="${orders}" var="ord">
													<div class="order-status1">
														<div class="order-title">
															<div class="dd-num">
																订单编号：<a href="javascript:;">${ord.id }</a>
															</div>
															<span>成交时间：${ord.ordertime }</span>
															<!--    <em>店铺：小桔灯</em>-->
														</div>
														<div class="order-content">
															<div class="order-left">

																<c:forEach items="${ord.orderdetails}" var="odt"
																	begin="0" end="2">

																	<ul class="item-list">
																		<li class="td td-item">
																			<div class="item-pic">
																				<a href="#" class="J_MakePoint"> <img
																					src="/files${odt.products.productscolor}"
																					class="itempic J_ItemImg">
																				</a>
																			</div>
																			<div class="item-info">
																				<div class="item-basic-info">
																					<a
																						href="/front/products/selectProductDetailByPrimaryKey?id=${odt.pid}">
																						<p>${odt.products.pname}</p>
																						<p class="info-little">
																							说明1：${odt.products.productstype1}<br />说明1：${odt.products.productstype2}
																						</p>
																					</a>
																				</div>
																			</div>
																		</li>
																		<li class="td td-price">
																			<div class="item-price">
																				<label style="color: red;">￥</label>${odt.products.price }
																			</div>
																		</li>
																		<li class="td td-number">
																			<div class="item-number">
																				<span>×</span>${odt.ordercount }
																			</div>
																		</li>
																		<li class="td td-operation">
																			<div class="item-operation"></div>
																		</li>
																	</ul>

																</c:forEach>

															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：<label style="color: red;">￥</label>${ord.money}
																		<!-- <p>含运费：<span>10.00</span></p> -->
																	</div>
																</li>
																<div class="move-right">
																	<li class="td td-status">
																		<div class="item-status">
																			<p class="Mystatus">等待买家付款</p>
																			<p class="order-info">
																				<a href="/front/orders/deleteOrders?id=${ord.id }">取消订单</a>
																			</p>

																		</div>
																	</li>
																	<li class="td td-change">
																		<button class="am-btn am-btn-danger anniu"
																			name="overOrderBtn" value="${ord.id }">一键支付</button>
																	</li>
																</div>
															</div>

														</div>
													</div>

											</c:forEach>

										</div>

									</div>
								</div>



								<div class="am-tab-panel am-fade" id="tab3">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">


											<c:forEach items="${orders }" var="ord">
													<div class="order-status3">
														<div class="order-title">
															<div class="dd-num">
																订单编号：<a href="javascript:;">${ord.id }</a>
															</div>
															<span>成交时间：${ord.ordertime }</span>
															<!--    <em>店铺：小桔灯</em>-->
														</div>
														<div class="order-content">
															<div class="order-left">

																<c:forEach items="${ord.orderdetails}" var="odt"
																	begin="0" end="2">

																	<ul class="item-list">
																		<li class="td td-item">
																			<div class="item-pic">
																				<a href="#" class="J_MakePoint"> <img
																					src="/files${odt.products.productscolor}"
																					class="itempic J_ItemImg">
																				</a>
																			</div>
																			<div class="item-info">
																				<div class="item-basic-info">
																					<a
																						href="/front/products/selectProductDetailByPrimaryKey?id=${odt.pid}">
																						<p>${odt.products.pname}</p>
																						<p class="info-little">
																							说明1：${odt.products.productstype1}<br />说明1：${odt.products.productstype2}
																						</p>
																					</a>
																				</div>
																			</div>
																		</li>
																		<li class="td td-price">
																			<div class="item-price">
																				<label style="color: red;">￥</label>${odt.products.price }
																			</div>
																		</li>
																		<li class="td td-number">
																			<div class="item-number">
																				<span>×</span>${odt.ordercount }
																			</div>
																		</li>
																		<li class="td td-operation">
																			<div class="item-operation">
																				<a href="refund.html">退款/退货</a>
																			</div>
																		</li>
																	</ul>
																</c:forEach>
															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：<label style="color: red;">￥</label>${ord.money}
																		<!-- <p>含运费：<span>10.00</span></p> -->
																	</div>
																</li>
																<div class="move-right">
																	<li class="td td-status">
																		<div class="item-status">
																			<p class="Mystatus">买家已付款</p>
																			<p class="order-info">
																				<a href="/front/orders/ordersOverInfo?id=${ord.id }">订单详情</a>
																			</p>
																		</div>
																	</li>
																	<li class="td td-change">
																		<button value="${ord.id }"
																			class="am-btn am-btn-danger anniu">确认收货</button>
																	</li>
																</div>
															</div>
														</div>
													</div>

											</c:forEach>

										</div>
									</div>
								</div>


								<div class="am-tab-panel am-fade" id="tab4">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>

									<div class="order-main">
										<div class="order-list">

											<c:forEach items="${orders }" var="ord">

													<div class="order-status3">
														<div class="order-title">
															<div class="dd-num">
																订单编号：<a href="javascript:;">${ord.id }</a>
															</div>
															<span>成交时间：${ord.ordertime }</span>
															<!--    <em>店铺：小桔灯</em>-->
														</div>
														<div class="order-content">
															<div class="order-left">

																<c:forEach items="${ord.orderdetails}" var="odt"
																	begin="0" end="2">

																	<ul class="item-list">
																		<li class="td td-item">
																			<div class="item-pic">
																				<a href="#" class="J_MakePoint"> <img
																					src="/files${odt.products.productscolor}"
																					class="itempic J_ItemImg">
																				</a>
																			</div>
																			<div class="item-info">
																				<div class="item-basic-info">
																					<a
																						href="/front/products/selectProductDetailByPrimaryKey?id=${odt.pid}">
																						<p>${odt.products.pname}</p>
																						<p class="info-little">
																							说明1：${odt.products.productstype1}<br />说明1：${odt.products.productstype2}
																						</p>
																					</a>
																				</div>
																			</div>
																		</li>
																		<li class="td td-price">
																			<div class="item-price">
																				<label style="color: red;">￥</label>${odt.products.price }
																			</div>
																		</li>
																		<li class="td td-number">
																			<div class="item-number">
																				<span>×</span>${odt.ordercount }
																			</div>
																		</li>
																		<li class="td td-operation">
																			<div class="item-operation">
																				<a href="refund.html">退款/退货</a>
																			</div>
																		</li>
																	</ul>
																</c:forEach>

															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：<label style="color: red;">￥</label>${odt.money}
																		<!-- <p>含运费：<span>10.00</span></p> -->
																	</div>
																</li>
																<div class="move-right">
																	<li class="td td-status">
																		<div class="item-status">
																			<p class="Mystatus">待评价</p>
																			<p class="order-info">
																				<a href="/front/orders/ordersOverInfo?id=${odt.id }">订单详情</a>
																			</p>
																		</div>
																	</li>
																</div>
															</div>
														</div>
													</div>

											</c:forEach>

										</div>
									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
				<!--底部-->
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

			<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
			<script type="text/javascript">
				$("button[name='overOrderBtn']").click(function() {
					var o = $(this);
					$.ajax({
						type : 'post',
						url : '/front/orders/overOrders?id=' + o.val(),
						success : function(data) {
							switch (data) {
							case "login":
								window.location.href = "/gotoFront/login";
								break;
							case "balance":
								layer.msg("余额不足", {
									tiem : 2000
								}, {
									icon : 2
								});
								break;
							default:
								location.reload();
								break;
							}
						},
						error : function() {
							alert("网络错误");
						}
					})
				})
			</script>

			<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
		</div>
</body>
</html>
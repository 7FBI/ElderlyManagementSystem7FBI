<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单中心</title>
<link rel="shortcut icon" href="/resources/front/product/images/favicon.ico" />
<link rel="stylesheet" href="/resources/front/product/css/global.css" />
<link rel="stylesheet" href="/resources/front/product/css/order_list_v2.css" />
<link rel="stylesheet" href="/resources/front/product/css/mod_my.css" />
<!-- 
<style type="text/css" id="mpopupStyle">

</style> -->
</head>
<body>

	<jsp:include page="../header.jsp" flush="true" />
	<!-- 查找最顶级栏目  -->
	<!-- E 头部 -->
	<!-- E 头部 -->
	<input id="themeName" value="我的订单" type="hidden" />
	<div class="main_wrap cur_exchange">
		<div class="inner_wrap">
			<div class="side_bar_wrap">
				<ul class="side_bar_nav">
					<li class="side_bar_nav_li"><a class="bar_main_title my_midea"
						href="#"> <span
							class="side_bar_nav_word">我的空间</span>
					</a></li>
					<li class="side_bar_nav_line"></li>
					<li class="side_bar_nav_li cur"><a class="sub_title"
						href="/front/orders/allOrdersList"> <span
							class="side_bar_nav_word">我的订单</span>
					</a></li>
					<li class="side_bar_nav_li"><a class="sub_title js_red_dot"
						href="#" data-type="collect"> <span
							class="side_bar_nav_word">我的收藏</span> <i
							class="tag tag_cut js_collect_tag hide"></i>
					</a></li>
					<li class="side_bar_nav_li"><a class="sub_title"
						href="#"> <span
							class="side_bar_nav_word">评价管理</span>
					</a></li>
					<li class="side_bar_nav_li"><a class="sub_title"
						href="#"> <span
							class="side_bar_nav_word">我的积分</span>
					</a></li>
				</ul>
			</div>
			<div class="content_wrap">
				<div class="order_wrap">
					<ul class="order_tab_box clearfix js_order_tap">
						<li id="typeTab0" data-deal-state="-1" data-mtag="30033.1.1">
							<a href="/front/orders/allOrdersList">所有订单</a>
						</li>
						<li id="typeTab1" data-deal-state="0" data-mtag="30033.1.2">
							<a href="/front/orders/allOrdersList?status=0" class="active">待付款</a>
						</li>
						<li id="typeTab2" data-deal-state="1" data-mtag="30033.1.3">
							<a href="/front/orders/allOrdersList?status=1">待收货</a>
						</li>
						<li id="typeTab3" data-deal-state="2" data-mtag="30033.1.4">
							<a href="/front/orders/allOrdersList?status=2">已完成</a>
						</li>
					</ul>
					<div id="order_List_v2">
						<div class="order_list_content">
							<div class="js_order_list js_order_list_wrap">
								<!--通过div big_order_detail添加一个类来控制大单-->
								<div class="single_order_detail js_big_order"
									data-borderid="A36682450409">
									<div class="js_single_item" data-orderid="0344926404090515"
										data-after-sale-id="" data-mtag="30033.2.4"
										data-is-pay-retainage="">
										<c:forEach items="${orders}" var="ord">
											<table class="order_item">
												<thead>
													<tr>
														<td colspan="7"><c:if test="${ord.orderstatus<=0}">
																<a href="/front/orders/ordersInfo?id=${ord.id }"
																	target="_blank">订单号：${ord.id }</a>
															</c:if> <c:if test="${ord.orderstatus>=1}">
																<a href="/front/orders/ordersOverInfo?id=${ord.id }"
																	target="_blank">订单号：${ord.id }</a>
															</c:if> <span class="date">${ord.ordertime}</span> <span
															class="store"><a href="#"><i></i><span
																	class="store_name">宜嘉FBI官网商城</span></a></span> <span
															class="order_status">${ord.orderstatus==0?"待付款":ord.orderstatus==1?"待收货":"已完成"}</span></td>
													</tr>
												</thead>
												<tbody>
													<tr class="js_cmdty_item" data-skuid="151598">
														<td class="goods_pic" style="width: 210px;"><c:forEach
																items="${ord.orderdetails}" var="odt" begin="0" end="2">
																<a
																	href="/front/products/selectProductDetailByPrimaryKey?id=${odt.pid}"
																	target="_blank"> <img
																	src="${odt.products.producturl }"
																	onerror="this.src='//img.mdcdn.cn/h5/img/detail/replace_120.png'"
																	width="80" height="80" />
																</a>
															</c:forEach></td>


														<td class="total_price" style="line-height: 50px;"><span
															style="color: red;">&yen;</span>&nbsp;${ord.money}</td>
														<td class="order_detail">
														<c:if test="${ord.orderstatus==0}">
																<p style="line-height: 50px;">
																	<a href="/front/orders/deleteOrders?id=${ord.id }"
																		attr-tag="cancelOrder" data-enablepay="1" data-mtag="">取消订单</a>
																</p>
																<p style="line-height: 50px;">
																	<a href="/front/orders/ordersInfo?id=${ord.id }" attr-tag="detail"
																		data-enablepay="1" data-mtag="">订单详情</a>
																</p>
															</c:if>
															
															<c:if test="${ord.orderstatus>=1}">
																<p style="line-height: 50px;">
																	<a href="/front/orders/ordersOverInfo?id=${ord.id }" attr-tag="detail"
																		data-enablepay="1" data-mtag="">订单详情</a>
																</p>
															</c:if>
															
													</tr>
												</tbody>
											</table>

										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--            分页-->
				<div class="page_wrap js_page_wrap">
					<div class="page js_page"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="address_reminder hide" id="editOrderFloat"></div>
	<div class="mask hide"></div>

	<jsp:include page="../footer.jsp" flush="true" />
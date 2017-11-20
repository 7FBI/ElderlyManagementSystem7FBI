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
<link href="/resources/front/css/self_exchange/cpstyle.css" rel="stylesheet" type="text/css">
<link href="/resources/front/css/self_exchange/bostyle.css"
	rel="stylesheet" type="text/css">

<script src="/resources/front/js/self_exchange/jquery.min.js"
	type="text/javascript"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"
	type="text/javascript"></script>
</head>
<body>
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

				<div class="user-bonus">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">积分</strong> / <small>Credit</small>
						</div>
					</div>
					<hr />

					<div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

						<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
							<li class="am-active"><a href="#tab1">我的积分</a></li>
							<li><a href="#tab2">积分明细</a></li>

						</ul>

						<div class="am-tabs-bd">
<!-- 我的积分 -->						
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="coupon-items" style="background:red;">
										<div class="coupon-item coupon-item-yf">
											<div class="coupon-list">
												<div class="c-type">
													<div class="c-price">
														<strong>总积分</strong>
													</div>
													<div class="c-class" >
														<strong>总积分</strong>
													</div>
													<div class="c-limit" style="visibility:hidden;">
														【消费满&nbsp;95元&nbsp;可用】
													</div>
													<div class="c-time" style="visibility:hidden;"><span>使用期限</span>2015-12-21--2015-12-31</div>
													<div class="c-type-top"></div>

													<div class="c-type-bottom"></div>
												</div>

												<div class="c-msg">
													<div class="c-range">
														<div class="range-all">
															<div class="range-item">
																<span class="label" >积分值：</span>
																<span class="txt">积分</span>
															</div>
														</div>
													</div>
													<div class="op-btns">
														<a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
													</div>
												</div>
											</div>
										</div>
										
										<div class="coupon-item coupon-item-yf" style="visibility:hidden;">
											<div class="coupon-list">
												<div class="c-type">
													<div class="c-class">
														<strong>可用积分</strong>
													</div>
													<div class="c-price">
														<strong>可抵运费</strong>
													</div>
													<div class="c-limit" style="visibility:hidden;">
														【不含偏远地区】
													</div>
													<div class="c-time" style="visibility:hidden;"><span>使用期限</span>2015-12-21--2015-12-31</div>
													<div class="c-type-top"></div>

													<div class="c-type-bottom"></div>
												</div>

												<div class="c-msg">
													<div class="c-range">
														<div class="range-all">
															<div class="range-item">
																<span class="label">券&nbsp;编&nbsp;号：</span>
																<span class="txt">35728267</span>
															</div>
														</div>

													</div>
													<div class="op-btns">
														<a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
													</div>
												</div>
											</div>
										</div>
										
										
										<div class="coupon-item coupon-item-yf">
											<div class="coupon-list">
												<div class="c-type">
													<div class="c-class">
														<strong>可用积分</strong>
													</div>
													<div class="c-price">
														<strong>可抵运费</strong>
													</div>
													<div class="c-limit" style="visibility:hidden;">
														【不含偏远地区】
													</div>
													<div class="c-time" style="visibility:hidden;"><span>使用期限</span>2015-12-21--2015-12-31</div>
													<div class="c-type-top"></div>

													<div class="c-type-bottom"></div>
												</div>

												<div class="c-msg">
													<div class="c-range">
														<div class="range-all">
															<div class="range-item">
																<span class="label">积分值：</span>
																<span class="txt">35728267</span>
															</div>
														</div>

													</div>
													<div class="op-btns">
														<a href="#" class="btn"><span class="txt">立即使用</span><b></b></a>
													</div>
												</div>
											</div>
										</div>
									</div>

								</div>
								
<!-- 积分明细 -->						
							<div class="am-tab-panel am-fade" id="tab2">

								<div class="cart-table-th">
									<div class="order-top">
										<div class="th th-from">来源</div>
										<div class="th th-remainderprice">积分变化</div>
										<div class="th th-term">日期</div>
										<div class="th th-usestatus">备注</div>
									</div>
									<div class="clear"></div>
									<div class="order-main">

										<ul class="item-list">
											<li class="td td-from">
												<div class="item-img">
													<img src="/resources/front/images/self_img/566fda5cN4b8a1675.gif">
												</div>

												<div class="item-info">

													<a href="# ">
														<p>蓝胖子赠与</p>
														<p class="info-little ">
															<span>红包初始面额：</span>¥50.00<span>元</span>
														</p>
													</a>

												</div>
											</li>
											<li class="td td-remainderprice">
												<div class="item-remainderprice">
													<span>还剩</span>0.00<span>元</span>
												</div>
											</li>

											<li class="td td-term ">
												<div class="item-term">
													<span>有效期</span> 2015.12.26-2016.2.1
												</div>
											</li>

											<li class="td td-usestatus ">
												<div class="item-usestatus ">
													<p>已用完</p>
													<span><img
														src="/resources/front/images/self_img/gift_stamp_2.png"></span>
												</div>
											</li>
										</ul>


									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!--底部-->
			<div class="footer ">
				<div class="footer-hd ">
					<p>
						<a href="# ">恒望科技</a> <b>|</b> <a href="# ">商城首页</a> <b>|</b> <a
							href="# ">支付宝</a> <b>|</b> <a href="# ">物流</a>
					</p>
				</div>
				<div class="footer-bd ">
					<p>
						<a href="# ">关于恒望</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a>
						<a href="# ">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有. 更多模板
							<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
							- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>
						</em>
					</p>
				</div>
			</div>

		</div>
		<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>

	</div>
</body>
</html>
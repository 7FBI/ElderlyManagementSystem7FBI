<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>搜索页面</title>
<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/front/css/self_exchange/seastyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="/resources/front/js/self_exchange/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="/resources/front/js/self_exchange/script.js"></script>
</head>



<body>

	<jsp:include page="EC_header.jsp"></jsp:include>


	<div class="clear"></div>
	<b class="line"></b>
	<div class="search">
		<div class="search-list">
			<div class="nav-table">
				<div class="long-title">
					<span class="all-goods">全部分类</span>
				</div>
				<div class="nav-cont">
					<ul>
						<li class="index"><a href="/front/products/selectAllProducts">首页</a></li>
						<li class="qc"><a href="#">闪购</a></li>
						<li class="qc"><a href="#">限时抢</a></li>
						<li class="qc"><a href="#">团购</a></li>
						<li class="qc last"><a
							href="/front/creditshop/SelectAllCreditShop">积分兑换区</a></li>
					</ul>
					<div class="nav-extra">
						<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
					</div>
				</div>
			</div>

			<div class="am-g am-g-fixed">
				<div class="am-u-sm-12 am-u-md-12">
					<div class="theme-popover">
						<div class="searchAbout">

							<span class="font-pale" style="font-size:17px;">搜索条件：<em style="font-size:17px;color:red;">${classnamess }&nbsp;&nbsp;${pnamess }</em></span> 

						</div>

					</div>
					<div class="search-content">
						<div class="sort">
							<li class="first"><a title="综合" href="">综合排序</a></li>
							<li><a title="销量" href="">销量排序</a></li>
							<li><a title="价格" href="#">价格优先</a></li>
							<li class="big"><a title="评价" href="#">评价为主</a></li>
						</div>
						<div class="clear"></div>

						<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
							<c:forEach items="${products}" var="products">
								<li>
									<div class="i-pic limit">
										<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"><img src="/resources/front/images/self_img/imgsearch1.jpg" /></a>
										<p class="title fl">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}</a>
										</p>
										<p class="price fl">
											<b>¥</b> <strong>${products.price}</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<!-- 经典搭配 -->
					<div class="search-side">

						<div class="side-title">经典搭配</div>

						<!-- <li>
							<div class="i-pic check">
								<img src="/resources/front/images/self_img/cp.jpg" />
								<p class="check-title">萨拉米 1+1小鸡腿</p>
								<p class="price fl">
									<b>¥</b> <strong>29.90</strong>
								</p>
								<p class="number fl">
									销量<span>1110</span>
								</p>
							</div>
						</li> -->
					  <!--  -->
						<c:if test="${!empty matchMedicationProducts }">
						<c:forEach items="${matchMedicationProducts}" var="matchMedicationProducts">
						<li>
							<div class="i-pic check">
							 <a href="/front/products/selectProductDetailByPrimaryKey?id=${matchMedicationProducts.pid}">
								<img src="/files${matchMedicationProducts.product.producturl}" /></a>
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${matchMedicationProducts.pid}">
								    <p class="check-title">${matchMedicationProducts.product.pname}</p></a>
								<p class="price fl">
									<b>¥</b> <strong>${matchMedicationProducts.product.price}</strong>
								</p>
								<%-- <p class="number fl">
								<c:if test="${!empty orderDetails}">
								<c:forEach items="${orderDetails}" var="orderDetails">
									销量<span>${orderDetails.mysaleCount}</span>
								</c:forEach>
								</c:if>
								</p> --%>
							</div>
						</li>
						</c:forEach>
                   </c:if>
                   <!--  -->
						<c:if test="${!empty hotMedicationProducts }">
						<c:forEach items="${hotMedicationProducts}" var="hotMedicationProducts">
						<li>
							<div class="i-pic check">
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${hotMedicationProducts.id}">
								<img src="/files${hotMedicationProducts.producturl}" /></a>
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${hotMedicationProducts.id}">
								<p class="check-title">${hotMedicationProducts.pname }</p></a>
								<p class="price fl">
									<b>¥</b> <strong>${hotMedicationProducts.price }</strong>
								</p>
								<p class="number fl">
								<c:forEach items="matchProductCount" var="matchProductCount">
									销量<span>${hotMedicationProducts.saleProductCount}</span>
								</c:forEach>
								</p>
							</div>
						</li>
						</c:forEach>
                   </c:if>
                    <!--  -->
						<c:if test="${empty hotMedicationProducts }">
						<c:forEach items="${someProducts}" var="someProducts">
						<li>
							<div class="i-pic check">
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${someProducts.id}">
								   <img src="/files${someProducts.producturl}" /></a>
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${someProducts.id}">
								    <p class="check-title">${someProducts.pname }</p>
								 </a>
								<p class="price fl">
									<b>¥</b> <strong>${someProducts.price }</strong>
								</p>
								
							</div>
						</li>
						</c:forEach>
                   </c:if>
                   <!--  -->
						<c:if test="${!empty hotProducts }">
						<c:forEach items="${hotProducts}" var="hotProducts">
						<li>
							<div class="i-pic check">
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${hotProducts.id}">
								   <img src="/files${hotProducts.producturl}" /></a>
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${hotProducts.id}">
								    <p class="check-title">${hotProducts.pname }</p>
								 </a>
								<p class="price fl">
									<b>¥</b> <strong>${hotProducts.price }</strong>
								</p>
								<p class="number fl">
								<c:forEach items="matchProductCount" var="matchProductCount">
									销量<span>${hotProducts.saleProductCount}</span>
								</c:forEach>
								</p>
							</div>
						</li>
						</c:forEach>
                   </c:if>
                   <!--  -->
						<c:if test="${empty hotProducts }">
						<c:forEach items="${someProducts}" var="someProducts">
						<li>
							<div class="i-pic check">
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${someProducts.id}">
								   <img src="/files${someProducts.producturl}" /></a>
								 <a href="/front/products/selectProductDetailByPrimaryKey?id=${someProducts.id}">
								    <p class="check-title">${someProducts.pname }</p>
								 </a>
								<p class="price fl">
									<b>¥</b> <strong>${someProducts.price }</strong>
								</p>
								
							</div>
						</li>
						</c:forEach>
                   </c:if>

					</div>
					<div class="clear"></div>
					<!--分页 -->
					<ul class="am-pagination am-pagination-right">
						<li class="am-disabled"><a href="#">&laquo;</a></li>
						<li class="am-active"><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&raquo;</a></li>
					</ul>

				</div>
			</div>
			
		</div>

	</div>

	<!-- <div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item">
						<a href="#">
							<span class="setting"></span>
						</a>
						<div class="ibar_login_box status_login">
							<div class="avatar_box">
								<p class="avatar_imgbox"><img src="../images/no-img_mid_.jpg" /></p>
								<ul class="user_info">
									<li>用户名：sl1903</li>
									<li>级&nbsp;别：普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox">
								<a href="#" class="login_order">我的订单</a>
								<a href="#" class="login_favorite">我的收藏</a>
							</div>
							<i class="icon_arrow_white"></i>
						</div>

					</div>
					<div id="shopCart" class="item">
						<a href="#">
							<span class="message"></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num">0</p>
					</div>
					<div id="asset" class="item">
						<a href="#">
							<span class="view"></span>
						</a>
						<div class="mp_tooltip">
							我的资产
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="foot" class="item">
						<a href="#">
							<span class="zuji"></span>
						</a>
						<div class="mp_tooltip">
							我的足迹
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="brand" class="item">
						<a href="#">
							<span class="wdsc"><img src="../images/wdsc.png" /></span>
						</a>
						<div class="mp_tooltip">
							我的收藏
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div id="broadcast" class="item">
						<a href="#">
							<span class="chongzhi"><img src="../images/chongzhi.png" /></span>
						</a>
						<div class="mp_tooltip">
							我要充值
							<i class="icon_arrow_right_black"></i>
						</div>
					</div>

					<div class="quick_toggle">
						<li class="qtitem">
							<a href="#"><span class="kfzx"></span></a>
							<div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
						</li>
						二维码
						<li class="qtitem">
							<a href="#none"><span class="mpbtn_qrcode"></span></a>
							<div class="mp_qrcode" style="display:none;"><img src="../images/weixin_code_145.png" /><i class="icon_arrow_white"></i></div>
						</li>
						<li class="qtitem">
							<a href="#top" class="return_top"><span class="top"></span></a>
						</li>
					</div>

					回到顶部
					<div id="quick_links_pop" class="quick_links_pop hide"></div>

				</div>

			</div>
			<div id="prof-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list">
					<a href="#" target="_blank" class="pl">
						<div class="num">0</div>
						<div class="text">优惠券</div>
					</a>
					<a href="#" target="_blank" class="pl">
						<div class="num">0</div>
						<div class="text">红包</div>
					</a>
					<a href="#" target="_blank" class="pl money">
						<div class="num">￥0</div>
						<div class="text">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content" class="nav-content">
				<div class="nav-con-close">
					<i class="am-icon-angle-right am-icon-fw"></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div> -->
	<script>
		window.jQuery
				|| document
						.write('<script src="/resources/front/js/self_exchange/jquery-1.9.min.js"><\/script>');
	</script>
	<script type="text/javascript"
		src="/resources/front/js/self_exchange/quick_links.js"></script>

	<div class="theme-popover-mask"></div>
	<jsp:include page="EC_footer.jsp"></jsp:include>

</body>
</html>
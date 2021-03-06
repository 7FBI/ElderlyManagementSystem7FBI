<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/front/css/integralStore.css">

<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/front/css/self_exchange/demo.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.min.js"></script>

<title>积分商城</title>
</head>
<body>
	<jsp:include page="Self_header.jsp" />
	<!-- 积分抽大奖 -->
	<div class="top_bar" ">
		<div class="banner_bar" style="background: red;">
			<a class="banner_wrapper" href="" title="积分抽大奖" target="_blank">
				<img class="banner_img" alt="积分商城"
				src="/resources/front/images/969211d12f73.png">
			</a>
			<%-- <div class="basic_bar login_ed" >
				<!-- 头像部分 -->
				<div class="head_bar">
					<div class="head">
						<img class="img" alt="用户头像"
							src="/fbiImage${oldUsers.userurl }">
					</div>
					<div class="head_text">
						<div class="head_name"></div>
						<p class="to_phone">
							<i class="icon_atom icon_phone"></i> 15186550425
						</p>
					</div>
				</div>
				<!-- 积分部分 -->
				<div class="my_score_bar clearfix">
					<div class="score_item">
						<p class="num">${credit.rest_Credit}</p>
						<p class="text">可用积分</p>
					</div>
					<div class="score_item not_use">
						<p class="num">${credit.major_credit}</p>
						<p class="text">历史总积分</p>
					</div>
				</div>
				<div class="href_bar">
					<a class="href_item first" href="/front/products/selectAllProducts" target="_blank">积分不够？去赚积分</a> <a
						class="href_item" href="" target="_blank">查看积分明细</a> <a
						class="href_item" href="" target="_blank">查看积分规则</a>
				</div>
			</div> --%>
		</div>
	</div>

	<!-- 积分兑换商品部分 -->
	<div class="content_bar">
		<div class="wrapper">
			<div class="coupon_bar buy_act">
				<h2 class="main_title">积分换购专区</h2>
				<!-- <a id="seeBuyRule" class="look_for" href="#" title="查看兑换规则">
					查看换购规则 <span class=""></span>
				</a> -->
				<!-- 积分兑换商品区 -->
				<div class="integral_buy_wrap" name="integral_buy"
					>
					<ul class="coupon_list mc_pre_2cols clearfix"
						>
						<c:forEach items="${products}" var="products">
							<li class="coupon_item mc_product_box over_box">
							
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
								<div class="mc_product_img">
									<img alt="${products.pname }"
										src="/fbiImage${products.producturl }">
								</div>
								<div class="mc_product_detail">${products.pname }</div>
								</a>
								<!-- <div class="mc_product_sale_point">商品积分抢购截止时间:2017-11-30</div> -->
								<div class="mc_product_price">
									<div class="mc_product_price_area">
										<div class="mc_current_price">

											<span class="mc_des">商城价</span> <em class="mc_c_price"><i>¥</i>${products.price }</em>

										</div>
									</div>
								</div>
								<div class="mc_btn_area">
									<a class="mc_btn_pre" href="#"> <fmt:formatNumber
											value="${products.creditshop.credit}" var="i" type="number"
											maxFractionDigits="0"></fmt:formatNumber>

										<div class="mc_btn_left MC_BTN_LEFT_ABLE">${i }&nbsp;&nbsp;积分兑换</div>
										
										<form  action="/front/orders/addOneOrderByExchange" method="post" id="f">
										<input type="hidden" name="flag" value="1">
							<input type="hidden" name="pid" value="${products.id }">
							<input type="hidden" name="uid" value="${oldUsers.uid}">
							<input type="hidden" name="num" value="1">
								
										<div class="mc_btn_right mc_btn_right_able" ><input type="button" cd="creditShowTrue" cred="${products.id}" value="立即兑换"> <!-- 立&nbsp;&nbsp;即&nbsp;&nbsp;兑&nbsp;&nbsp;换 --></div>
								</form>
								</div> <i class="mc_icon_tag"> <span class="middle_center">
										<span class="mc_tag_top">每日</span> <span class="mc_tag_bottom">50份</span>
								</span>
							</i>
						
							</li>
						</c:forEach>
					</ul>
				</div>
				<i class="mc_icon_tag"> <span class="middle_center"> <span
						class="mc_tag_top">每日</span> <span class="mc_tag_bottom">50份</span>
				</span>
				</i>
				</li>
				</ul>
			</div>



	<!-- 新品试用 -->
			<div class="new_try">
				<h2 class="main_title">新品试用全新升级</h2>
				<a class="look_for" href="" title="" target="_blank"> 查看我的试用 <span
					class="arrow">></span>
				</a> <a class="img_bar" href="" target="_blank"> <img class="img"
					alt="新品试用" src="/resources/front/image/1be1fb4a0321.jpg@100Q.jpg">
				</a>
			</div>
		</div>
	</div>
	</div>
	<!-- //creditShowTrue -->
	
	
	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
			<script type="text/javascript">
			layui.use('layer',function() {
				var $ = layui.jquery, layer = layui.layer;
				
				$(document).on('click',"input[cd='creditShowTrue']",function(){
					var p=$(this);
					$.ajax({
						type:'post',
						url:'/front/orders/creditShowTrue?pid='+p.attr("cred"),
								success:function(data){
									switch (data) {
									case "login":
										layer.msg("正在前往登录", {tiem : 2000}, {icon : 2});
										window.location.href = "/gotoFront/login";
										break;
									case "false":
										layer.msg("积分余额不足", {tiem : 2000}, {icon : 2});
										break;
									default:
										layer.msg("积分充足，正在兑换", {tiem : 2000}, {icon : 2});
										var f=$("#f");
										f.submit();
										break;
									}
								}
					})
				})
				
			})
	
	
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>打折页面</title>
<link rel="stylesheet" href="/resources/front/css/discount_index.css" />
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="Self_header.jsp"></jsp:include>
	<!-- 主要内容 -->
	<div class="container bgstyle">
		<!-- 活动 -->
		<!-- <ul class="hotbox">
			<li class="hot">
				<div class="icon i1">
					<a href="#"></a>
				</div>
				<div class="font16">
					<a href="#">主题购物</a>
				</div>
				<div>
					<a class="gray" href="#">十一出游装扮</a>
				</div>
			</li>
			<li class="hot">
				<div class="icon i2">
					<a href="#"></a>
				</div>
				<div class="font16">
					<a href="#">免费申领</a>
				</div>
				<div>
					<a class="gray" href="#">免费领取大奖</a>
				</div>
			</li>
			<li class="hot">
				<div class="icon i3">
					<a href="#"></a>
				</div>
				<div class="font16">
					<a href="#">猜价赢奖</a>
				</div>
				<div>
					<a class="gray" href="#">猜对奖品拿走</a>
				</div>
			</li>
			<li class="hot">
				<div class="icon i4">
					<a href="#"></a>
				</div>
				<div class="font16">
					<a href="#">我要爆料</a>
				</div>
				<div>
					<a class="gray" href="#">优质商品推荐</a>
				</div>
			</li>
			<li class="hot">
				<div class="icon i5" style="margin-right: 0;">
					<a href="#"></a>
				</div>
				<div class="font16">
					<a href="#">邀请好友</a>
				</div>
				<div>
					<a class="gray" href="#">赢取手机话费</a>
				</div>
			</li>
		</ul> -->
		<div class="clear"></div>
		<!-- 爆款折扣 -->
		<div class="column">
			<div class="colbox">
				<div class="coltitle" style="width: 780px;">
					<h1>
						<a href="#">今日爆款推荐</a>
					</h1>
					&nbsp;&nbsp; <span class="tipword gray">精品秒杀，限量稀缺</span>
				</div>
			</div>
			<div class="clear"></div>
			<c:forEach items="${recomm}" var="recomm">
				<div class="goods">
					<div class="goodsname">
						<a href="#">${recomm.pname}&nbsp;${recomm.productstype1}
							${recomm.productstype2}</a>
					</div>
					<div class="goodspic">
						<a href="#"> <img src="${recomm.producturl}">
						</a>
					</div>
					<div class="goodsprice">
						<a href="#"> <span class="orange font16num">￥</span> <span
							class="orange font32">${recomm.discountprice*recomm.price}</span>
							&nbsp; <span style="color: #333; font-size: 12px;">原价:￥${recomm.price}</span>
						</a> <input type="button" addCart="${recomm.id}" value="加入购物车"
							datapage="${recomm.id}">
					</div>
					<div class="goodsdetail">${recomm.productscolor}&nbsp;
						${recomm.pdescription}</div>
				</div>
			</c:forEach>
		</div>
		<!-- 打折商品 -->
		<div class="clear"></div>
		<c:forEach items="${cation}" var="cation">
			<div class="column">
				<div class="colbox">
					<div class="coltitle">
						<h1>
							<a>${cation.classname}</a>
						</h1>
					</div>
				</div>
				<div class="colwrap">
					<c:forEach items="${list}" var="list">
						<c:if test="${cation.id==list.tid}">
							<div class="dress">
								<div class="dresspic picbox">
									<a href="#"> <img alt=""
										src="/resources/front/images/atom_sprite.png">
									</a>
									<div class="pictext"
										style="display: none; height: 43px; padding-top: 10px; margin-top: 0px; padding-bottom: 10px; margin-bottom: 0px;"></div>
								</div>
								<div class="dressprice">
									<div class="s1" style="display: inline-block">
										<a href="#" class="orange">
											<h3>￥</h3>
											<h1>${list.discountprice*list.price}</h1>
										</a>
									</div>
									<div class="sr">
										<a href="#" class="orange">原价：￥${list.price}</a>
									</div>
									<div class="clear"></div>
								</div>
								<div class="dressdetail">
									<span class="s1"> <a href="#" style="color: #333;">${list.pname}</a>
										<input type="button" addCart="${list.id}" value="加入购物车"
										datapage="${list.id}" style="margin-left:20px;color:#333;font-size:10px;display:inline-block;padding:3px 10px;background:red;border-radius:10%;">
									</span>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
			<div class="clear"></div>
		</c:forEach>
	</div>

	<div class="clear"></div>
	<div class="footed">
		<div class="footbox">
			<div class="about">
				<div class="font16 abtitle">关于我们</div>
				<ul class="gray">
					<li>宜嘉系统简介</li>
					<li>联系我们</li>
					<li>加入我们</li>
				</ul>
			</div>
			<div class="cooper">
				<div class="font16 abtitle">宜嘉商务平台</div>
				<ul class="gray">
					<li>宜嘉商务平台简介</li>
					<li>联系我们</li>
					<li>加入我们</li>
				</ul>
			</div>
			<div class="weixin">
				<div class="wxlogo">
					<img alt=""
						src="/resources/front/images/self_img/yijia_bg_logo.png">
				</div>
				<div class="wxpic"></div>
			</div>
			<div class="cooper" style="border-right: 1px dotted #CCC;">
				<div class="font16 abtitle">商务合作</div>
				<ul class="gray">
					<li>宜嘉系统简介</li>
					<li>联系我们</li>
					<li>加入我们</li>
				</ul>
			</div>
			<div class="about" style="border: none;">
				<div class="font16 abtitle">帮助中心</div>
				<ul class="gray">
					<li>宜嘉系统简介</li>
					<li>联系我们</li>
					<li>加入我们</li>
				</ul>
			</div>
		</div>
		<div class="clear"></div>
		<div class="copyright gray">Copyright © 2013 Phoenix New Media
			Limited All Rights Reserved.</div>
	</div>
</body>
<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
<script type="text/javascript">
	/* $("input[datapage]").on('click',
					function() {
						var tyi = $(this)
						window.location.href = "/front/products/selectProductDetailByPrimaryKey?id="+tyi.attr('datapage');
					}) */
	layui.use('layer', function() {
		var $ = layui.jquery, layer = layui.layer;
		$(document).on('click', 'input[addCart]', function() {
			var ac = $(this);
			var acp = ac.attr("addCart");
			$.ajax({
				type : 'post',
				url : '/front/shoppingCart/addOneCart?pid=' + acp,
				success : function(data) {
					if (data == "true") {
						layer.msg("添加至购物车成功", {tiem : 2000});
					} else {
						layer.msg("尚未登录", {tiem : 2000}, {icon : 2});
						window.location.href = "/gotoFront/login";
					}
				}
			})
		})
	})
</script>
</html>
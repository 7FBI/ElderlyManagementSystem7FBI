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
<meta http-equiv="Content-Type" content="text/html; chars
et=UTF-8">
<title>首页</title>

<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/front/css/self_exchange/hmstyle.css"
	rel="stylesheet" type="text/css" />
	<link href="/resources/front/css/self_exchange/demo.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.min.js"></script>
</head>

<body>
	<div class="hmtop">
		<!--顶部导航条 -->
		<jsp:include page="EC_header.jsp"></jsp:include>

		<div class="clear"></div>
	</div>
	<b class="line"></b>
	<div class="shopNav">
		<div class="slideall" style="height: auto;">

			<div class="long-title">
				<span class="all-goods">全部分类</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="/front/products/selectAllProducts">首页</a></li>
					<li class="qc"><a href="${pageContext.request.contextPath}/front/discount/selectAll">打折区</a></li>
					<li class="qc"><a href="/front/groupbuying/Lookto.action">团购</a></li>
					<li class="qc last"><a
						href="/front/creditshop/SelectAllCreditShop">积分兑换区</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>

			<div class="bannerTwo">
				<!--轮播 -->
				<div class="am-slider am-slider-default scoll" data-am-flexslider
					id="demo-slider-0">
					<ul class="am-slides">
						<li class="banner1"><a href="introduction.html"><img
								src="/resources/front/images/self_img/ad1.jpg" /></a></li>
						<li class="banner2"><a><img
								src="/resources/front/images/self_img/ad2.jpg" /></a></li>
						<li class="banner3"><a><img
								src="/resources/front/images/self_img/ad3.jpg" /></a></li>
						<li class="banner4"><a><img
								src="/resources/front/images/self_img/ad4.jpg" /></a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>

			<!--侧边导航  hmstyle.css的383行-->
			<div id="nav" class="navfull" style="position: static;">
				<div class="area clearfix">
					<div class="category-content" id="guide_2">

						<div class="category">
							<ul class="category-list navTwo" id="js_climit_li">
							<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/cake.png"></i>
											<a class="ml-22" title="男装"
												href="#">男&nbsp;&nbsp;装</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="上衣">上衣</span>
															</dt>

															<dd>
																<a pnames="貂皮" title="貂皮" href="#"><span
																	style="font-size: 17px;">貂皮</span></a>
															</dd>
															<dd>
																<a pnames="夹克" title="夹克" href="#"><span>夹克</span></a>
															</dd>
															<dd>
																<a pnames="男装" title="男装" href="#"><span>男装</span></a>
															</dd>
															<dd>
																<a pnames="打底衫" title="打底衫" href="#"><span>打底衫</span></a>
															</dd>
															
															<dd>
																<a pnames="潮男外套" title="潮男外套" href="#"><span>潮男外套</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="下装">下装</span>
															</dt>

															<dd>
																<a pnames="睡衣男" title="睡衣男" href="#"><span>睡衣男</span></a>
															</dd>
															<dd>
																<a pnames="男裤" title="男裤" href="#"><span>男裤</span></a>
															</dd>
															<dd>
																<a pnames="男士内裤" title="男士内裤" href="#"><span>男士内裤</span></a>
															</dd>
															<dd>
																<a pnames="保暖裤" title="保暖裤" href="#"><span>保暖裤</span></a>
															</dd>
															<dd>
																<a pnames="男长裤" title="男长裤" href="#"><span>男长裤</span></a>
															</dd>
															<dd>
																<a pnames="休闲裤" title="休闲裤" href="#"><span>休闲裤</span></a>
															</dd>


														</dl>
													</div>

													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="鞋子">鞋子</span>
															</dt>

															<dd>
																<a pnames="拖鞋" title="拖鞋" href="#"><span>拖鞋</span></a>
															</dd>
															<dd>
																<a pnames="男靴" title="男靴" href="#"><span>男靴</span></a>
															</dd>
															<dd>
																<a pnames="运动鞋" title="运动鞋" href="#"><span>运动鞋</span></a>
															</dd>
															<dd>
																<a pnames="布鞋男" title="布鞋男" href="#"><span>布鞋男</span></a>
															</dd>
															<dd>
																<a pnames="皮鞋" title="皮鞋" href="#"><span>皮鞋</span></a>
															</dd>
															<dd>
																<a pnames="雪地靴" title="雪地靴" href="#"><span>雪地靴</span></a>
															</dd>
															<dd>
																<a pnames="皮鞋" title="皮鞋" href="#"><span>皮鞋</span></a>
															</dd>
															<dd>
																<a pnames="雪地靴" title="雪地靴" href="#"><span>雪地靴</span></a>
															</dd>



														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="配饰">配饰</span>
															</dt>

															<dd>
																<a pnames="男帽" title="男帽" href="#"><span>男帽</span></a>
															</dd>
															<dd>
																<a pnames="男皮带" title="男皮带" href="#"><span>男皮带</span></a>
															</dd>
															<dd>
																<a pnames="手套男" title="手套男" href="#"><span>手套男</span></a>
															</dd>
															<dd>
																<a pnames="项链" title="项链" href="#"><span>项链</span></a>
															</dd>
															<dd>
																<a pnames="男士手表" title="男士手表" href="#"><span>男士手表</span></a>
															</dd>
															<dd>
																<a pnames="眼镜" title="眼镜" href="#"><span>眼镜</span></a>
															</dd>


														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/candy.png"></i><a
												class="ml-22" title="女装"
												href="#">女&nbsp;&nbsp;装</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="上衣">上衣</span>
															</dt>

															<dd>
																<a pnames="女针织衫" title="女针织衫" href="#"><span>女针织衫</span></a>
															</dd>
															<dd>
																<a pnames="毛呢外套" title="毛呢外套" href="#"><span>毛呢外套</span></a>
															</dd>
															<dd>
																<a pnames="羊绒大衣" title="羊绒大衣" href="#"><span>羊绒大衣</span></a>
															</dd>
															<dd>
																<a pnames="情侣卫衣" title="情侣卫衣" href="#"><span>情侣卫衣</span></a>
															</dd>
														
															<dd>
																<a pnames="闺蜜装" title="闺蜜装" href="#"><span>闺蜜装</span></a>
															</dd>
															<dd>
																<a pnames="连衣裙冬" title="连衣裙冬" href="#"><span>连衣裙冬</span></a>
															</dd>
															<dd>
																<a pnames="旗袍" title="旗袍" href="#"><span>旗袍</span></a>
															</dd>
															
															
															
															

														</dl>
													</div>

													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="裤子">裤子</span>
															</dt>

															<dd>
																<a pnames="女裤" title="女裤" href="#"><span>女裤</span></a>
															</dd>
															<dd>
																<a pnames="九分裤" title="九分裤" href="#"><span>九分裤</span></a>
															</dd>
															<dd>
																<a pnames="加绒打底裤" title="加绒打底裤" href="#"><span>加绒打底裤</span></a>
															</dd>
															<dd>
																<a pnames="秋裤" title="秋裤" href="#"><span>秋裤</span></a>
															</dd>
															<dd>
																<a pnames="阔腿裤套装" title="阔腿裤套装" href="#"><span>阔腿裤套装</span></a>
															</dd>
															<dd>
																<a pnames="加绒裤" title="加绒裤" href="#"><span>加绒裤</span></a>
															</dd>
															<dd>
																<a pnames="假两件" title="假两件" href="#"><span>假两件</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="内衣">内衣</span>
															</dt>

															<dd>
																<a pnames="保暖内衣" title="保暖内衣" href="#"><span>保暖内衣</span></a>
															</dd>
															<dd>
																<a pnames="情侣睡衣" title="情侣睡衣" href="#"><span>情侣睡衣</span></a>
															</dd>
															<dd>
																<a pnames="秋衣秋裤" title="秋衣秋裤" href="#"><span>秋衣秋裤</span></a>
															</dd>
															<dd>
																<a pnames="保暖衣" title="保暖衣" href="#"><span>保暖衣</span></a>
															</dd>
															<dd>
																<a pnames="羊绒裤" title="羊绒裤" href="#"><span>羊绒裤</span></a>
															</dd>
															<dd>
																<a pnames="文胸" title="文胸" href="#"><span>文胸</span></a>
															</dd>
															<dd>
																<a pnames="女士内裤" title="女士内裤" href="#"><span>女士内裤</span></a>
															</dd>
															<dd>
																<a pnames="丝袜" title="丝袜" href="#"><span>丝袜</span></a>
															</dd>
															<dd>
																<a pnames="女袜" title="女袜" href="#"><span>女袜</span></a>
															</dd>


														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="配饰">配饰</span>
															</dt>

															<dd>
																<a pnames="手表" title="手表" href="#"><span>手表</span></a>
															</dd>
															<dd>
																<a pnames="帽子" title="帽子" href="#"><span>帽子</span></a>
															</dd>
															<dd>
																<a pnames="发箍" title="发箍" href="#"><span>发箍</span></a>
															</dd>
															<dd>
																<a pnames="头绳" title="头绳" href="#"><span>头绳</span></a>
															</dd>
															<dd>
																<a pnames="围巾羊绒" title="围巾羊绒" href="#"><span>围巾羊绒</span></a>
															</dd>
															<dd>
																<a pnames="女士手链" title="女士手链" href="#"><span>女士手链</span></a>
															</dd>
															<dd>
																<a pnames="披肩" title="披肩" href="#"><span>披肩</span></a>
															</dd>
															<dd>
																<a pnames="发簪" title="发簪" href="#"><span>发簪</span></a>
															</dd>
															<dd>
																<a pnames="毛领子" title="毛领子" href="#"><span>毛领子</span></a>
															</dd>
															<dd>
																<a pnames="毛衣链" title="毛衣链" href="#"><span>毛衣链</span></a>
															</dd>
															<dd>
																<a pnames="项链" title="项链" href="#"><span>项链</span></a>
															</dd>
															<dd>
																<a pnames="耳钉" title="耳钉" href="#"><span>耳钉</span></a>
															</dd>


														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="鞋子">鞋子</span>
															</dt>

															<dd>
																<a pnames="女靴" title="女靴" href="#"><span>女靴</span></a>
															</dd>
															<dd>
																<a pnames="女运动鞋" title="女运动鞋" href="#"><span>女运动鞋</span></a>
															</dd>
										
															<dd>
																<a pnames="雪地靴" title="雪地靴" href="#"><span>雪地靴</span></a>
															</dd>
															<dd>
																<a pnames="女皮鞋" title="女皮鞋" href="#"><span>女皮鞋</span></a>
															</dd>
															<dd>
																<a pnames="单鞋" title="单鞋" href="#"><span>单鞋</span></a>
															</dd>
															<dd>
																<a pnames="妈妈鞋" title="妈妈鞋" href="#"><span>妈妈鞋</span></a>
															</dd>
															<dd>
																<a pnames="女凉鞋" title="女凉鞋" href="#"><span>女凉鞋</span></a>
															</dd>
															<dd>
																<a pnames="女式豆豆鞋" title="女式豆豆鞋" href="#"><span>女式豆豆鞋</span></a>
															</dd>
															<dd>
																<a pnames="秋冬女鞋" title="秋冬女鞋" href="#"><span>秋冬女鞋</span></a>
															</dd>


														</dl>

													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<br>
								<!--食品/酒水  -->
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="/resources/front/images/self_img/chocolate.png"></i><a
												class="ml-22" title="美食" href="#">美&nbsp;&nbsp;食</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="各地特产">各地特产</span>
															</dt>

															<dd>
																<a title="猪肉铺" href="#"><span>猪肉铺</span></a>
															</dd>
															<dd>
																<a title="周黑鸭" href="#"><span>周黑鸭</span></a>
															</dd>
															<dd>
																<a title="德州扒鸡" href="#"><span>德州扒鸡</span></a>
															</dd>
															<dd>
																<a title="四川特产" href="#"><span>四川特产</span></a>
															</dd>

														</dl>
													</div>

								
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="休闲零食">休闲零食</span>
															</dt>

															<dd>
																<a title="面包" href="#"><span>面包</span></a>
															</dd>
															<dd>
																<a title="棒棒糖" href="#"><span>棒棒糖</span></a>
															</dd>
															<dd>
																<a title="蛋黄酥" href="#"><span>蛋黄酥</span></a>
															</dd>
															<dd>
																<a title="喜糖" href="#"><span>喜糖</span></a>
															</dd>
															<dd>
																<a title="锅巴" href="#"><span>锅巴</span></a>
															</dd>
															<dd>
																<a title="点心" href="#"><span>点心</span></a>
															</dd>
															<dd>
																<a title="薯片" href="#"><span>薯片</span></a>
															</dd>
															<dd>
																<a title="小零食" href="#"><span>小零食</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="各类坚果">各类坚果</span>
															</dt>

															<dd>
																<a title="松子" href="#"><span>松子</span></a>
															</dd>
															<dd>
																<a title="花生" href="#"><span>花生</span></a>
															</dd>
															<dd>
																<a title="夏威夷果" href="#"><span>夏威夷果</span></a>
															</dd>
															<dd>
																<a title="巴旦木" href="#"><span>巴旦木</span></a>
															</dd>
															<dd>
																<a title="腰果" href="#"><span>腰果</span></a>
															</dd>
															<dd>
																<a title="山核桃仁" href="#"><span>山核桃仁</span></a>
															</dd>
															<dd>
																<a title="葵花籽" href="#"><span>葵花籽</span></a>
															</dd>


														</dl>
													</div>


													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="粮油米面">粮油米面</span>
															</dt>

															<dd>
																<a title="方便面" href="#"><span>方便面</span></a>
															</dd>
															<dd>
																<a title="螺丝粉" href="#"><span>螺丝粉</span></a>
															</dd>
															<dd>
																<a title="面粉" href="#"><span>面粉</span></a>
															</dd>
															<dd>
																<a title="干脆面" href="#"><span>干脆面</span></a>
															</dd>
															<dd>
																<a title="酸辣粉" href="#"><span>酸辣粉</span></a>
															</dd>
															<dd>
																<a title="米" href="#"><span>米</span></a>
															</dd>
															<dd>
																<a title="牛肉酱" href="#"><span>牛肉酱</span></a>
															</dd>
															<dd>
																<a title="米线" href="#"><span>米线</span></a>
															</dd>


														</dl>
													</div>
													<div class="brand-side">

														<dl class="dl-sort">
															<dt>
																<span title="早餐面包">早餐面包</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>

												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
											
<br>
								
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/cookies.png"></i><a class="ml-22"
												title="医药品" href="#">医药品</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">

														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>

												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
<br>
<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/tea.png"></i><a
												class="ml-22" title="茶饮" href="#">茗茶冲饮</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="饮料冲乳">饮料冲乳</span>
															</dt>


															<dd>
																<a title="燕麦片" href="#"><span>燕麦片</span></a>
															</dd>

															<dd>
																<a title="牛奶" href="#"><span>牛奶</span></a>
															</dd>
															<dd>
																<a title="酸奶" href="#"><span>酸奶</span></a>
															</dd>
															<dd>
																<a title="成人奶粉" href="#"><span>成人奶粉</span></a>
															</dd>
															<dd>
																<a title="雀巢咖啡" href="#"><span>雀巢咖啡</span></a>
															</dd>
															<dd>
																<a title="纯牛奶" href="#"><span>纯牛奶</span></a>
															</dd>
															<dd>
																<a title="早餐奶" href="#"><span>早餐奶</span></a>
															</dd>
															<dd>
																<a title="黑芝麻" href="#"><span>黑芝麻</span></a>
															</dd>

														</dl>

													</div>
												</div>
											</div>
										</div>
									</div>


								</li>

								<!--比较多的导航	-->
<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/fish.png"></i><a class="ml-22"
												title="运动健身" href="#">运动健身</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="健身训练">健身训练</span>
															</dt>

															<dd>
																<a title="跑步机" href="#"><span>跑步机</span></a>
															</dd>
															<dd>
																<a title="健身车" href="#"><span>健身车</span></a>
															</dd>
															<dd>
																<a title="跑步机" href="#"><span>跑步机</span></a>
															</dd>
															<dd>
																<a title="甩脂机" href="#"><span>甩脂机</span></a>
															</dd>
															<dd>
																<a title="仰卧板" href="#"><span>仰卧板</span></a>
															</dd>
															<dd>
																<a title="踏步机" href="#"><span>踏步机</span></a>
															</dd>
															<dd>
																<a title="哑铃" href="#"><span>哑铃</span></a>
															</dd>
															<dd>
																<a title="臂力器" href="#"><span>臂力器</span></a>
															</dd>
															<dd>
																<a title="动感单车" href="#"><span>动感单车</span></a>
															</dd>

														</dl>

													</div>
<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="户外鞋服">户外鞋服</span>
															</dt>
															<dd>
																<a title="冲锋衣" href="#"><span>冲锋衣</span></a>
															</dd>
															<dd>
																<a title="徒步鞋" href="#"><span>徒步鞋</span></a>
															</dd>
															<dd>
																<a title="登山鞋" href="#"><span>登山鞋</span></a>
															</dd>
															<dd>
																<a title="速干衣裤" href="#"><span>速干衣裤</span></a>
															</dd>
															<dd>
																<a title="皮肤风衣" href="#"><span>皮肤风衣</span></a>
															</dd>
															<dd>
																<a title="抓绒衣" href="#"><span>抓绒衣</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="户外装备">户外装备</span>
															</dt>

															<dd>
																<a title="帐篷" href="#"><span>帐篷</span></a>
															</dd>
															<dd>
																<a title="手电筒" href="#"><span>手电筒</span></a>
															</dd>
															<dd>
																<a title="望远镜" href="#"><span>望远镜</span></a>
															</dd>
															<dd>
																<a title="野餐炊具" href="#"><span>野餐炊具</span></a>
															</dd>
															<dd>
																<a title="睡袋" href="#"><span>睡袋</span></a>
															</dd>
															<dd>
																<a title="吊床" href="#"><span>吊床</span></a>
															</dd>
															<dd>
																<a title="户外包" href="#"><span>户外包</span></a>
															</dd>
															<dd>
																<a title="便携桌椅床" href="#"><span>便携桌椅床</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="休闲垂钓">休闲垂钓</span>
															</dt>

															<dd>
																<a title="鱼竿" href="#"><span>鱼竿</span></a>
															</dd>
															<dd>
																<a title="鱼饵" href="#"><span>鱼饵</span></a>
															</dd>
															<dd>
																<a title="鱼线" href="#"><span>鱼线</span></a>
															</dd>
															<dd>
																<a title="浮漂" href="#"><span>浮漂</span></a>
															</dd>
															<dd>
																<a title="钓鱼桌椅" href="#"><span>钓鱼桌椅</span></a>
															</dd>

														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="体育用品">体育用品</span>
															</dt>

															<dd>
																<a title="乒乓球" href="#"><span>乒乓球</span></a>
															</dd>
															<dd>
																<a title="羽毛球" href="#"><span>羽毛球</span></a>
															</dd>
															<dd>
																<a title="篮球" href="#"><span>篮球</span></a>
															</dd>
															<dd>
																<a title="足球" href="#"><span>足球</span></a>
															</dd>
															<dd>
																<a title="轮滑滑板" href="#"><span>轮滑滑板</span></a>
															</dd>
															<dd>
																<a title="瑜伽用品" href="#"><span>瑜伽用品</span></a>
															</dd>
															<dd>
																<a title="网球" href="#"><span>网球</span></a>
															</dd>
															<dd>
																<a title="排球" href="#"><span>排球</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="游泳用品">游泳用品</span>
															</dt>

															<dd>
																<a title="女士泳衣" href="#"><span>女士泳衣</span></a>
															</dd>
															<dd>
																<a title="比基尼" href="#"><span>比基尼</span></a>
															</dd>
															<dd>
																<a title="男士泳衣" href="#"><span>男士泳衣</span></a>
															</dd>
															<dd>
																<a title="泳镜" href="#"><span>泳镜</span></a>
															</dd>
															<dd>
																<a title="游泳圈" href="#"><span>游泳圈</span></a>
															</dd>
															<dd>
																<a title="游泳包" href="#"><span>游泳包</span></a>
															</dd>
															<dd>
																<a title="泳帽" href="#"><span>泳帽</span></a>
															</dd>


														</dl>
													</div>

													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="户外骑行">户外骑行</span>
															</dt>

															<dd>
																<a title="自行车" href="#"><span>自行车</span></a>
															</dd>
															<dd>
																<a title="公路车" href="#"><span>公路车</span></a>
															</dd>
															<dd>
																<a title="通勤车" href="#"><span>通勤车</span></a>
															</dd>
															<dd>
																<a title="思维车" href="#"><span>思维车</span></a>
															</dd>
															<dd>
																<a title="电动车" href="#"><span>电动车</span></a>
															</dd>
														</dl>

													</div>

												</div>

											</div>
										</div>
										</div>
										<b class="arrow"></b>
								</li>
								<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/nut.png"></i><a
												class="ml-22" title="营养保健" href="#">营养保健</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">

														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="维生素/矿物质" href="#"><span>维生素/矿物质</span></a>
															</dd>
															<dd>
																<a title="减肥瘦身" href="#"><span>减肥瘦身</span></a>
															</dd>
															<dd>
																<a title="提高免疫" href="#"><span>提高免疫</span></a>
															</dd>
															<dd>
																<a title="美容养颜" href="#"><span>美容养颜</span></a>
															</dd>
															<dd>
																<a title="调节三高" href="#"><span>调节三高</span></a>
															</dd>
															<dd>
																<a title="补肾强身" href="#"><span>补肾强身</span></a>
															</dd>
															<dd>
																<a title="蜂制品" href="#"><span>蜂制品</span></a>
															</dd>
															<dd>
																<a title="参类" href="#"><span>参类</span></a>
															</dd>
															<dd>
																<a title="阿胶膏/阿胶制品" href="#"><span>阿胶膏/阿胶制品</span></a>
															</dd>
															<dd>
																<a title="灵芝类" href="#"><span>灵芝类</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>

												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/package.png"></i><a
												class="ml-22" title="医疗器械" href="#">医疗器械</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">

														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="香" href="#"><span>香</span></a>
															</dd>
															<dd>
																<a title="香蕉" href="#"><span>香蕉</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>

												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/nut.png"></i><a class="ml-22"
												title="生活用品" href="#">生活用品</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="大家电">大家电</span>
															</dt>

															<dd>
																<a title="电视机" href="#"><span>电视机</span></a>
															</dd>
															<dd>
																<a title="空调" href="#"><span>空调</span></a>
															</dd>
															<dd>
																<a title="热水器" href="#"><span>热水器</span></a>
															</dd>
															<dd>
																<a title="油烟机" href="#"><span>油烟机</span></a>
															</dd>
															<dd>
																<a title="燃气灶" href="#"><span>燃气灶</span></a>
															</dd>
															<dd>
																<a title="煤气灶" href="#"><span>煤气灶</span></a>
															</dd>


														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="生活家电">生活家电</span>
															</dt>

															<dd>
																<a title="电饭煲" href="#"><span>电饭煲</span></a>
															</dd>
															<dd>
																<a title="取暖器" href="#"><span>取暖器</span></a>
															</dd>
															<dd>
																<a title="烧水壶" href="#"><span>烧水壶</span></a>
															</dd>
															<dd>
																<a title="家用吸尘器" href="#"><span>家用吸尘器</span></a>
															</dd>
															<dd>
																<a title="家用净水器" href="#"><span>家用净水器</span></a>
															</dd>
															<dd>
																<a title="锅" href="#"><span>锅</span></a>
															</dd>


														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="个人家电">个人家电</span>
															</dt>

															<dd>
																<a title="剃须刀" href="#"><span>剃须刀</span></a>
															</dd>
															<dd>
																<a title="按摩椅" href="#"><span>按摩椅</span></a>
															</dd>
															<dd>
																<a title="电子称" href="#"><span>电子称</span></a>
															</dd>
															<dd>
																<a title="足浴盆" href="#"><span>足浴盆</span></a>
															</dd>
															<dd>
																<a title="艾柱" href="#"><span>艾柱</span></a>
															</dd>

														</dl>
													</div>

													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="休闲家电">休闲家电</span>
															</dt>

															<dd>
																<a title="机箱" href="#"><span>机箱</span></a>
															</dd>
															<dd>
																<a title="投影仪" href="#"><span>投影仪</span></a>
															</dd>
															<dd>
																<a title="音箱" href="#"><span>音箱</span></a>
															</dd>
															<dd>
																<a title="mp4" href="#"><span>mp4</span></a>
															</dd>
															<dd>
																<a title="麦克风" href="#"><span>麦克风</span></a>
															</dd>
															<dd>
																<a title="耳机" href="#"><span>耳机</span></a>
															</dd>
															<dd>
																<a title="录音笔" href="#"><span>录音笔</span></a>
															</dd>
															<dd>
																<a title="车载mp3" href="#"><span>车载mp3</span></a>
															</dd>

														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/nut.png"></i><a class="ml-22"
												title="家居电器" href="#">家居电器</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="大家电">大家电</span>
															</dt>

															<dd>
																<a title="电视机" href="#"><span>电视机</span></a>
															</dd>
															<dd>
																<a title="空调" href="#"><span>空调</span></a>
															</dd>
															<dd>
																<a title="热水器" href="#"><span>热水器</span></a>
															</dd>
															<dd>
																<a title="油烟机" href="#"><span>油烟机</span></a>
															</dd>
															<dd>
																<a title="燃气灶" href="#"><span>燃气灶</span></a>
															</dd>
															<dd>
																<a title="煤气灶" href="#"><span>煤气灶</span></a>
															</dd>


														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="生活家电">生活家电</span>
															</dt>

															<dd>
																<a title="电饭煲" href="#"><span>电饭煲</span></a>
															</dd>
															<dd>
																<a title="取暖器" href="#"><span>取暖器</span></a>
															</dd>
															<dd>
																<a title="烧水壶" href="#"><span>烧水壶</span></a>
															</dd>
															<dd>
																<a title="家用吸尘器" href="#"><span>家用吸尘器</span></a>
															</dd>
															<dd>
																<a title="家用净水器" href="#"><span>家用净水器</span></a>
															</dd>
															<dd>
																<a title="锅" href="#"><span>锅</span></a>
															</dd>


														</dl>

													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="个人家电">个人家电</span>
															</dt>

															<dd>
																<a title="剃须刀" href="#"><span>剃须刀</span></a>
															</dd>
															<dd>
																<a title="按摩椅" href="#"><span>按摩椅</span></a>
															</dd>
															<dd>
																<a title="电子称" href="#"><span>电子称</span></a>
															</dd>
															<dd>
																<a title="足浴盆" href="#"><span>足浴盆</span></a>
															</dd>
															<dd>
																<a title="艾柱" href="#"><span>艾柱</span></a>
															</dd>

														</dl>
													</div>

													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="休闲家电">休闲家电</span>
															</dt>

															<dd>
																<a title="机箱" href="#"><span>机箱</span></a>
															</dd>
															<dd>
																<a title="投影仪" href="#"><span>投影仪</span></a>
															</dd>
															<dd>
																<a title="音箱" href="#"><span>音箱</span></a>
															</dd>
															<dd>
																<a title="mp4" href="#"><span>mp4</span></a>
															</dd>
															<dd>
																<a title="麦克风" href="#"><span>麦克风</span></a>
															</dd>
															<dd>
																<a title="耳机" href="#"><span>耳机</span></a>
															</dd>
															<dd>
																<a title="录音笔" href="#"><span>录音笔</span></a>
															</dd>
															<dd>
																<a title="车载mp3" href="#"><span>车载mp3</span></a>
															</dd>

														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

<br>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/tea.png"></i><a
												class="ml-22" title="新鲜水果" href="#">新鲜水果</a>
												
										</h3>
										
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top"
										style="border: 2px solid red;">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="brand-side">

														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养">营养</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>实力商家</span>
															</dt>

															<dd>
																<a title="猕猴桃干" href="#"><span>猕猴桃干</span></a>
															</dd>
															<dd>
																<a title="糖樱桃" href="#"><span>糖樱桃</span></a>
															</dd>
															<dd>
																<a title="瑞士卷" href="#"><span>瑞士卷</span></a>
															</dd>
															<dd>
																<a title="软面包" href="#"><span>软面包</span></a>
															</dd>
															<dd>
																<a title="马卡龙" href="#"><span>马卡龙</span></a>
															</dd>
															<dd>
																<a title="千层饼" href="#"><span>千层饼</span></a>
															</dd>
															<dd>
																<a title="甜甜圈" href="#"><span>甜甜圈</span></a>
															</dd>
															<dd>
																<a title="蒸三明治" href="#"><span>蒸三明治</span></a>
															</dd>
															<dd>
																<a title="铜锣烧" href="#"><span>铜锣烧</span></a>
															</dd>
														</dl>
													</div>

												</div>
											</div>
										</div>
									</div>
									
									 <b class="arrow"></b>
													
								</li>
				

							</ul>
						</div>
					</div>

				</div>
			</div>
			<!--导航 -->
			<script type="text/javascript">
				(function() {
					$('.am-slider').flexslider();
				});
				$(document)
						.ready(
								function() {
									$("li")
											.hover(
													function() {
														$(
																".category-content .category-list li.first .menu-in")
																.css("display",
																		"none");
														$(
																".category-content .category-list li.first")
																.removeClass(
																		"hover");
														$(this).addClass(
																"hover");
														$(this)
																.children(
																		"div.menu-in")
																.css("display",
																		"block")
													},
													function() {
														$(this).removeClass(
																"hover")
														$(this).children(
																"div.menu-in")
																.css("display",
																		"none")
													});
								})
			</script>


			<!--小导航 -->
			<div class="am-g am-g-fixed smallnav">
				<div class="am-u-sm-3">
					<a href="sort.html"><img src="/resources/front/images/self_img/navsmall.jpg" />
						<div class="title">商品分类</div> </a>
				</div>
				<div class="am-u-sm-3">
					<a href="#"><img src="/resources/front/images/self_img/huismall.jpg" />
						<div class="title">大聚惠</div> </a>
				</div>
				<div class="am-u-sm-3">
					<a href="#"><img src="/resources/front/images/self_img/mansmall.jpg" />
						<div class="title">个人中心</div> </a>
				</div>
				<div class="am-u-sm-3">
					<a href="#"><img src="/resources/front/images/self_img/moneysmall.jpg" />
						<div class="title">投资理财</div> </a>
				</div>
			</div>


			<!--各类活动-->
			<div class="row">
				<li><a><img src="/resources/front/images/self_img/row1.jpg" /></a></li>
				<li><a><img src="/resources/front/images/self_img/row2.jpg" /></a></li>
				<li><a><img src="/resources/front/images/self_img/row3.jpg" /></a></li>
				<li><a><img src="/resources/front/images/self_img/row4.jpg" /></a></li>
			</div>
			<div class="clear"></div>
			<!--走马灯 -->

			<div class="marqueenTwo">
				<span class="marqueen-title"><i
					class="am-icon-volume-up am-icon-fw"></i>商城头条<em
					class="am-icon-angle-double-right"></em></span>
				<div class="demo">

					<ul>
						<c:forEach items="${list }" var="list">
					
						<li><a target="_blank" href="#">${list.newstitle }</a></li>
						
						</c:forEach>
						<!-- <li><a target="_blank" href="#"><span>[公告]家电狂欢千亿礼券买1送1！</a></li>
						<li><a target="_blank" href="#"><span>[公告]洋河年末大促，低至两件五折</a></li>
						<li><a target="_blank" href="#"><span>[公告]华北、华中部分地区配送延迟</a></li>
						<li><a target="_blank" href="#"><span>[公告]女生节商城爆品1分秒</a></li> -->

					</ul>

				</div>
			</div>
			<div class="clear"></div>

		</div>



		<script type="text/javascript">
			if ($(window).width() < 640) {
				function autoScroll(obj) {
					$(obj).find("ul").animate({
						marginTop : "-39px"
					}, 500, function() {
						$(this).css({
							marginTop : "0px"
						}).find("li:first").appendTo(this);
					})
				}
				$(function() {
					setInterval('autoScroll(".demo")', 3000);
				})
			}
		</script>
	</div>
	<div class="shopMainbg">
		<div class="shopMain" id="shopmain">

			<!--热门活动 -->

			<div class="am-container">
					
                     <div class="sale-mt" >
		                   <i></i>
		                  <span style="font-size:25px;width:250px;height:25px;position:absolute;margin-top:30px;margin-left:-250px;">今日活动</span>
	                  </div>


				<div class="am-g am-g-fixed sale">
				
				<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
					<form action="/front/orders/addOneOrder" id="fromSubmin" method="post">
					<input name="num" type="hidden" value="1">
						 <input
							name="pid" id="nowpids" type="hidden" value="${products.id}">
						<input name="uid" type="hidden" value="${oldUsers.uid}">
					</form>
						<c:if test="${products.price==9.9 && i5<4 }">
							<c:set var="i5" value="${i5+1}"></c:set>
					<div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="# "><img src="/fbiImage${products.producturl }" /></a>
						</div>
						<div class="s-info">
							<a href="#"><p class="s-title">${products.pname }</p></a>
							<div class="s-price">
								￥<b>${products.price }</b> <a class="s-buy" href="#" id="pays">秒杀</a>
							</div>
						</div>
					</div>
					</c:if>
</c:forEach>
					<!-- <div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="# "><img src="/resources/front/images/self_img/sale2.jpg" /></a>
						</div>
						<div class="s-info">
							<a href="#" ><p class="s-title">ZEK 原味海苔</p></a>
							<div class="s-price">
								￥<b>9.99</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div> -->

					<!-- <div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="# "><img src="/resources/front/images/self_img/sale1.jpg" /></a>
						</div>
						<div class="s-info">
							<a href="#" class="active"><p class="s-title">ZEK 原味海苔</p></a>
							<div class="s-price">
								￥<b>9.99</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div>
 -->
					<!-- <div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="# "><img src="/resources/front/images/self_img/666.jpg " /></a>
						</div>
						<div class="s-info">
							<a href="#"><p class="s-title">ZEK 原味海苔</p></a>
							<div class="s-price">
								￥<b>9.99</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div> -->

				</div>
			</div>
			<div class="clear "></div>
			<div class="f1">
				<!--甜点-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="男装">男装区</a></h4>
						<div class="floor-subtitle" style="margin-left:30px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">我要我的品质</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px;">

							<a href="# " class="outer">羽绒服</a>| <a href="# " class="outer">棉衣</a>| <a href="# " class="outer">加厚
							</a>| <a href="# " class="outer">打底衫</a>| <a href="# " class="outer">衬衫</a>| <a href="# " class="outer">短裤</a>

							<a href="# " class="outer" >羽绒服</a>| <a href="# " class="outer" >棉衣</a>| <a href="# " class="outer" >加厚
							</a>| <a href="# " class="outer" >打底衫</a>| <a href="# " class="outer" >衬衫</a>| <a href="# " class="outer" >短裤</a>

						</div>

					</div>
				</div>

				<div class="am-g am-g-fixed floodSix ">
					<div class="am-u-sm-5 am-u-md-3 text-one list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">背心</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">短袖</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">外套</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">长裤</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">袜子</b></span></a> 
						</div>
						<a href="# "> <img src="/resources/front/images/self_img/1.jpg" />
							<div class="outer-con ">
								<div class="title ">男人的衣柜</div>
								<div class="sub-title ">衣生衣世，唯爱不变</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act1.png" /></a>
					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==1 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con " >
										<div class="title ">
										<br>
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }" style="background:yellow;">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>
			<div class="f2">

				<!--坚果-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="女装">女神区</a></h4>
						<div class="floor-subtitle" style="margin-left:30px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">败家不是罪，怎么买都不贵</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px">

							<a href="# " class="outer">打底裤</a>| <a href="# " class="outer">保暖内衣</a>| <a href="# " class="outer">羊绒大衣 </a>|
							<a href="# " class="outer">棉袄</a>| <a href="# " class="outer">打底衫</a>| <a href="# " class="outer">针织衫</a>

							<a href="# " class="outer" >打底裤</a>| <a href="# " class="outer" >保暖内衣</a>| <a href="# " class="outer" >羊绒大衣 </a>|
							<a href="# " class="outer" >棉袄</a>| <a href="# " class="outer" >打底衫</a>| <a href="# " class="outer" >针织衫</a>

						</div>
					</div>
				</div>
				<div class="am-g am-g-fixed floodSeven">
					<div class="am-u-sm-5 am-u-md-4 text-one list ">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">长袖</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">外套</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">大码</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">针织</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">羊绒</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">打底裤</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">棉鞋</b></span></a> 
						</div>
						<a href="# ">
							<div class="outer-con ">
								<div class="title ">高贵典雅！</div>
								<div class="sub-title ">情如衣，暖如心</div>
							</div> <img src="/resources/front/images/self_img/11.jpg" />
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-4 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act2.png " /></a>

					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==2 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>

			<div class="f3">
				<!--甜点-->

				<div class="am-container ">
					<div class="shopTitle " >
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="食品">美食城</a></h4>
						<div class="floor-subtitle" style="margin-left:30px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">每一道食品都有一个故事</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px;">
<<<<<<< HEAD
							<a href="# " class="outer">桂花糕</a>| <a href="# " class="outer">鲜花饼</a>| <a href="# " class="outer">栗子糕
							</a>| <a href="# " class="outer">凤梨酥</a>| <a href="# "class="outer">铜锣烧</a>| <a href="# " class="outer">广式月饼</a>

							<a href="# " class="outer" >桂花糕</a>| <a href="# " class="outer" >鲜花饼</a>| <a href="# " class="outer" >栗子糕
							</a>| <a href="# " class="outer" >凤梨酥</a>| <a href="# " class="outer" >铜锣烧</a>| <a href="# " class="outer" >广式月饼</a>

						</div>

					</div>
				</div>

				<div class="am-g am-g-fixed floodSix " >

					<div class="am-u-sm-5 am-u-md-3 text-one list">
						<div class="word">
							<a class="outer" href="#" ><span class="inner"><b
									class="text">华夫饼</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">肉松饼</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">黄山烧饼</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">达利园</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">月饼</b></span></a> 
								
						</div>
						<a href="# "> <img src="/resources/front/images/self_img/5.jpg" />
							<div class="outer-con ">
								<div class="title ">零食大礼包开抢啦</div>
								<div class="sub-title ">当小鱼儿恋上软豆腐</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big"
						>

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act1.png" /></a>
					</div>
					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==3 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }"  style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>

				</div>
				<div class="clear "></div>
			</div>
			<div class="f4">

				<!--坚果-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="家居电器">家居电器</a></h4>
						<div class="floor-subtitle" style="margin-left:50px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">你需要的温馨，我来替你营造</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px">

							<a href="# " class="outer">毛巾</a>| <a href="# " class="outer">被子</a>| <a href="# " class="outer">枕头 </a>|
							<a href="# " class="outer">牙刷</a>| <a href="# " class="outer">热水器</a>| <a href="# " class="outer">空调</a>

							<a href="# " class="outer" >毛巾</a>| <a href="# " class="outer" >被子</a>| <a href="# " class="outer" >枕头 </a>|
							<a href="# " class="outer" >牙刷</a>| <a href="# " class="outer" >热水器</a>| <a href="# " class="outer" >空调</a>
						</div>
					</div>
				</div>
				<div class="am-g am-g-fixed floodSeven">
					<div class="am-u-sm-5 am-u-md-4 text-one list ">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">四件套</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">蚕丝被</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">毛毯</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">记忆枕</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">床褥</b></span></a> 
						</div>
						<a href="# ">
							<div class="outer-con ">
								<div class="title ">温暖舒适</div>
								<div class="sub-title ">美好家居，从这里开始</div>
							</div> <img src="/resources/front/images/self_img/11.jpg" />
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-4 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act2.png " /></a>

					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==4 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;">
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>

			<div class="f5">
				<!--甜点-->

				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="营养保健">营养保健</a></h4>
						<div class="floor-subtitle" style="margin-left:50px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">你的健康是我最大的关怀</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px;">

							<a href="# " class="outer">益生菌</a>| <a href="# " class="outer">灵芝</a>| <a href="# " class="outer">贵州三宝
							</a>| <a href="# " class="outer">阿胶枣</a>| <a href="# " class="outer">西洋参</a>

							<a href="# " class="outer" >海参</a>| <a href="# " class="outer" >灵芝</a>| <a href="# " class="outer" >贵州三宝
							</a>| <a href="# " class="outer" >阿胶枣</a>| <a href="# " class="outer" >西洋参</a>
						</div>

					</div>
				</div>

				<div class="am-g am-g-fixed floodSix ">

					<div class="am-u-sm-5 am-u-md-3 text-one list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">奶粉</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">脑白金</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">冬虫夏草</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">孢子粉</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">益生菌</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">壮骨粉</b></span></a> 
						</div>
						<a href="# "> <img src="/resources/front/images/self_img/5.jpg" />
							<div class="outer-con ">
								<div class="title ">人生自古谁不老</div>
								<div class="sub-title ">让您度过身心愉快的每一天</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act1.png " /></a>
					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==5 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>
			<div class="f6">

				<!--坚果-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="医药品">医药馆</a></h4>
						<div class="floor-subtitle" style="margin-left:30px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">把满意带给你，把健康带回家</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px">

							<a href="# " class="outer">维生素</a>| <a href="# " class="outer">液体钙</a>| <a href="# " class="outer">调节三高 </a>|
							<a href="# " class="outer">肝肾养护</a>| <a href="# " class="outer">养颜</a>| <a href="# " class="outer">胶原蛋白</a>

							<a href="# " class="outer" >维生素</a>| <a href="# " class="outer" >液体钙</a>| <a href="# " class="outer" >调节三高 </a>|
							<a href="# " class="outer" >肝肾养护</a>| <a href="# " class="outer" >养颜</a>| <a href="# " class="outer" >胶原蛋白</a>

						</div>
					</div>
				</div>
				<div class="am-g am-g-fixed floodSeven">
					<div class="am-u-sm-5 am-u-md-4 text-one list ">
						<div class="word">
							<a class="outer" href="#"><span
								class="inner"><b class="text">思密达</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">利福平</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">百多邦</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">创可贴</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">红霉素</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">止血</b></span></a>  <a class="outer"
								href="#"><span class="inner"><b class="text">双黄连</b></span></a>
						</div>
						<a href="# ">
							<div class="outer-con ">
								<div class="title ">仁心济世</div>
								<div class="sub-title ">和谐一生，延年益寿</div>
							</div> <img src="/resources/front/images/self_img/11.jpg" />
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-4 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act2.png  " /></a>

					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==6 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>

			<div class="f7">
				<!--甜点-->

				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="运动健身">运动健身</a></h4>
						<div class="floor-subtitle" style="margin-left:50px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">让健康谱写生命的乐章</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px;">
<<<<<<< HEAD
							<a href="# " class="outer">羽毛球</a>| <a href="# " class="outer">腰鼓</a>| <a href="# " class="outer">自行车
							</a>| <a href="# " class="outer">象棋</a>| <a href="# " class="outer"></a>| <a href="# " class="outer">棒球</a>
=======
							<a href="# " class="outer" >羽毛球</a>| <a href="# " class="outer" >腰鼓</a>| <a href="# " class="outer" >自行车
							</a>| <a href="# " class="outer" >象棋</a>| <a href="# "></a>| <a href="# " class="outer" >棒球</a>
>>>>>>> branch 'master' of https://github.com/7FBI/ElderlyManagementSystem7FBI.git
						</div>

					</div>
				</div>

				<div class="am-g am-g-fixed floodSix ">

					<div class="am-u-sm-5 am-u-md-3 text-one list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">兵乓球</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">网球</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">跑步机</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">高尔夫</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">台球</b></span></a> 
						</div>
						<a href="# "> <img src="/resources/front/images/self_img/5.jpg" />
							<div class="outer-con ">
								<div class="title ">健康与娱乐同</div>
								<div class="sub-title ">琴棋书画，老有所乐</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act1.png " /></a>
					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==9 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>
			<div class="f8">

				<!--坚果-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4 class="floor-title"><a href="#" style="font-size:20px" class="type" title="新鲜水果">新鲜水果</a></h4>
						<div class="floor-subtitle" style="margin-left:50px;">
							<em class="am-icon-caret-left"></em>
							<h3 style="margin-left:30px;">健康水果，美味到家</h3>
						</div>
						<div class="today-brands " style="right: 0px; top: 13px">

							<a class="outer" href="# ">猕猴桃</a>| <a class="outer" href="# ">苹果</a>| <a class="outer" href="# ">香蕉</a>|
							<a class="outer" href="# ">火龙果</a>| <a class="outer" href="# ">草莓</a>| <a class="outer" href="# ">哈密瓜</a>

							<a href="# " class="outer" >猕猴桃</a>| <a href="# " class="outer" >苹果</a>| <a href="# " class="outer" >香蕉</a>|
							<a href="# " class="outer" >火龙果</a>| <a href="# " class="outer" >草莓</a>| <a href="# " class="outer" >哈密瓜</a>
						</div>
					</div>
				</div>
				<div class="am-g am-g-fixed floodSeven">
					<div class="am-u-sm-5 am-u-md-4 text-one list ">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">李子</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">人参果</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">荔枝</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">菠萝</b></span></a> <a class="outer" href="#"><span
								class="inner"><b class="text">蓝莓</b></span></a> <a class="outer"
								href="#"><span class="inner"><b class="text">西瓜</b></span></a> <a
								class="outer" href="#"><span class="inner"><b
									class="text">海棠果</b></span></a> 
						</div>
						<a href="# ">
							<div class="outer-con ">
								<div class="title ">绿色田园</div>
								<div class="sub-title ">甜果天仙配，健康每一天</div>
							</div> <img src="/resources/front/images/self_img/11.jpg" />
						</a>
						<div class="triangle-topright"></div>
					</div>

					<div class="am-u-sm-7 am-u-md-4 text-two big">

						<div class="outer-con ">
							<div class="title ">雪之恋和风大福</div>
							<div class="sub-title ">¥13.8</div>

						</div>
						<a href="# "><img src="/resources/front/images/self_img/act2.png  " /></a>

					</div>

					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
						<c:if test="${products.tid==10 && i5<8 }">
							<c:set var="i5" value="${i5+1}"></c:set>
							<li>
								<div class="am-u-md-2 am-u-lg-2 text-three">
									<div class="boxLi"></div>
									<div class="outer-con ">
										<div class="title ">
											<a
												href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}
											</a>

										</div>
										<div class="sub-title ">
											<em>￥</em><strong> ${products.price}</strong>
										</div>

									</div>
									<a
										href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">
										<img src="/fbiImage${products.producturl }" style="width:150px;height:118px;"/>
									</a>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</div>
				<div class="clear "></div>
			</div>


			<!--底部信息  -->
			
			
		</div>
	</div>

	<div class=tip>
		<div id="sidebar">
			<div id="wrap">
				<div id="prof" class="item ">
					<a href="# "> <span class="setting "></span>
					</a>
					<div class="ibar_login_box status_login ">
						<div class="avatar_box ">
							<p class="avatar_imgbox ">
								<img src="/resources/front/images/self_img/no-img_mid_.jpg " />
							</p>
							<ul class="user_info ">
								<li>用户名sl1903</li>
								<li>级&nbsp;别普通会员</li>
							</ul>
						</div>
						<div class="login_btnbox ">
							<a href="# " class="login_order ">我的订单</a> <a href="# "
								class="login_favorite ">我的收藏</a>
						</div>
						<i class="icon_arrow_white "></i>
					</div>

				</div>
				<div id="shopCart " class="item ">
					<a class="cddd"><span class="message"></span> </a>
					<p>购物车</p>
					<p class="cart_num ">${muns}</p>
				</div>
				<div id="asset " class="item ">
					<a href="# "> <span class="view "></span>
					</a>
					<div class="mp_tooltip ">
						我的资产 <i class="icon_arrow_right_black "></i>
					</div>
				</div>

				<div id="foot " class="item ">
					<a href="# "> <span class="zuji "></span>
					</a>
					<div class="mp_tooltip ">
						我的足迹 <i class="icon_arrow_right_black "></i>
					</div>
				</div>

				<div id="brand " class="item ">
					<a href="#"> <span class="wdsc "><img
							src="/resources/front/images/self_img/wdsc.png " /></span>
					</a>
					<div class="mp_tooltip ">
						我的收藏 <i class="icon_arrow_right_black "></i>
					</div>
				</div>

				<div id="broadcast " class="item ">
					<a href="# "> <span class="chongzhi "><img
							src="/resources/front/images/self_img/chongzhi.png " /></span>
					</a>
					<div class="mp_tooltip ">
						我要充值 <i class="icon_arrow_right_black "></i>
					</div>
				</div>

				<div class="quick_toggle ">
					<li class="qtitem "><a href="# "><span class="kfzx "></span></a>
						<div class="mp_tooltip ">
							客服中心<i class="icon_arrow_right_black "></i>
						</div></li>
					<!--二维码 -->
					<li class="qtitem "><a href="#none "><span
							class="mpbtn_qrcode "></span></a>
						<div class="mp_qrcode " style="display: none;">
							<img src="/resources/front/images/self_img/weixin_code_145.png " /><i
								class="icon_arrow_white "></i>
						</div></li>
					<li class="qtitem "><a href="#top " class="return_top "><span
							class="top "></span></a></li>
				</div>

				<!--回到顶部 -->
				<div id="quick_links_pop " class="quick_links_pop hide "></div>

			</div>

		</div>
		<div id="prof-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>我</div>
		</div>
		<div id="shopCart-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>购物车</div>
		</div>
		<div id="asset-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>资产</div>

			<div class="ia-head-list ">
				<a href="# " target="_blank " class="pl ">
					<div class="num ">0</div>
					<div class="text ">优惠券</div>
				</a> <a href="# " target="_blank " class="pl ">
					<div class="num ">0</div>
					<div class="text ">红包</div>
				</a> <a href="# " target="_blank " class="pl money ">
					<div class="num ">￥0</div>
					<div class="text ">余额</div>
				</a>
			</div>

		</div>
		<div id="foot-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>足迹</div>
		</div>
		<div id="brand-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>收藏</div>
		</div>
		<div id="broadcast-content " class="nav-content ">
			<div class="nav-con-close ">
				<i class="am-icon-angle-right am-icon-fw "></i>
			</div>
			<div>充值</div>
		</div>
	</div>
	<jsp:include page="EC_footer.jsp"></jsp:include>
	<script>
		window.jQuery
				|| document
						.write('<script src="/resources/front/js/self_exchange/jquery.min.js "><\/script>');
	</script>
	<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
	<script type="text/javascript "
		src="/resources/front/js/self_exchange/quick_links.js "></script>

</body>
<script type="text/javascript">
	layui
			.use(
					'layer',
					function() {
						var $ = layui.jquery, layer = layui.layer;
						
						
						$(document).on('click',"#pays",function() {
							$(this).parent().parent().parent().prev().prev().prev().submit();
							
						})
									
									
									
						

						$(document)
								.on(
										'click',
										"a[title]",
										function() {
											var aPnames = $(this);
											if (aPnames.attr("class") == "ml-22") {
												return true;
											} else {
												var pnamesValues = $(this)
														.attr("title");
												var tidDoc = $(this).parent()
														.parent().parent()
														.parent().parent()
														.parent().parent()
														.prev().find("a");
												//alert(pnamesValues+"<------------->"+tidDoc.attr("title"));
												hrs = "/front/products/selectProductsByTypeAndLikeName?pname="
														+ pnamesValues
														+ "&classname="
														+ tidDoc.attr("title");
												window.location.href = hrs;
											}
										})
										
										
										
										
										
											$(document).on('click',".outer",function() {
												var pname = $(this).text();;
												
													
													hrs = "/front/products/selectProductsByLikeName?pname="+pname;
													window.location.href = hrs;
												
											})
										
										
										$(document).on('click',".ml-22",function() {
											var classname = $(this).attr("title");
											
												//alert(pnamesValues+"<------------->"+tidDoc.attr("title"));
												hrs = "/front/products/selectProductsByLikeTypeName?classname="
														+ classname;
												window.location.href = hrs;
											
										});
										
						$(document).on('click',".outer",function() {
							var classname = $(this).text();;
								hrs = "/front/products/selectProductsByLikeName?pname="
										+ classname;
								window.location.href = hrs;
						})
										
										
										$(document).on('click',".type",function() {
											var classname = $(this).attr("title")
											
												//alert(pnamesValues+"<------------->"+tidDoc.attr("title"));
												hrs = "/front/products/selectProductsByLikeTypeName?classname="
														+ classname;
												window.location.href = hrs;
											
										})	

						$(document)
								.on(
										'click',
										"[pppgg]",
										function() {
											var ddd = $(this);
											var d = ddd.attr('pppgg');
											$
													.ajax({
														type : 'post',
														url : d,
														success : function(data) {
															if (data == "ture") {
																var rt = $(".cart_num");
																var trt = rt
																		.text();
																rt
																		.text(Number(1)
																				+ Number(trt));
																$(this).focus();
															} else if (data = "flase") {
																window.location.href = "/gotoFront/login";
															}
															return false;
														},
														error : function() {
															alert("添加失败");
														},
													})
											return false;
										});
						
						//outer
						$('.item').on('click',function() {
											var f = $(this);
											$.ajax({
														type : 'post',
														url : '/front/shoppingCart/intoshoppingCart.action',
														success : function(data) {
															if (data == "ture") {
																var into = f
																		.find('a');
																window.location.href = "/front/shoppingCart/selectproducts.action";
															} else if (data == "false") {
																alert("你还没有登录呢 亲！")

															}
														},
														erroe : function() {
															alert("网络错误!")
														}
													})
										})

					})
	window.jQuery
			|| document
					.write('<script src="basic/js/jquery.min.js "><\/script>');
	/*商城首页进入购物车js*/
</script>




<script type="text/javascript " src="../basic/js/quick_links.js "></script>
</body>

</html>
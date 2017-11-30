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
<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.min.js"></script>
</head>
<body>
	<div class="hmtop">
	
		<jsp:include page="EC_header.jsp"></jsp:include>


		<div class="clear"></div>
	</div>
	<div class="banner">
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
	<div class="shopNav">
		<div class="slideall">

			<div class="long-title">
				<span class="all-goods">全部分类</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="/front/products/selectAllProducts">首页</a></li>
					<li class="qc"><a href="#">打折区</a></li>
					<li class="qc"><a href="#">限时抢</a></li>
					<li class="qc"><a href="/front/groupbuying/Lookto.action">团购</a></li>
					<li class="qc last"><a href="/front/creditshop/SelectAllCreditShop">积分兑换区</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>

			<!--侧边导航 -->
			<div id="nav" class="navfull">
				<div class="area clearfix">
					<div class="category-content" id="guide_2">

						<div class="category">
							<ul class="category-list" id="js_climit_li">
<!-- 男装 区-->
								<li class="appliance js_toggle relative first">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/cake.png"></i><a
												class="ml-22" title="男装"
												href="/front/products/selectProductsByLikeName">男装</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="上衣">上衣</span>
															</dt>
															<dd>
																<a title="羽绒服" href="#"><span>羽绒服</span></a>
															</dd>
															<dd>
																<a title="羊绒衫" href="#"><span>羊绒衫</span></a>
															</dd>
															<dd>
																<a title="男士衬衫" href="#"><span>男士衬衫</span></a>
															</dd>
															<dd>
																<a title="打底衫" href="#"><span>打底衫</span></a>
															</dd>
															<dd>
																<a title="背心男" href="#"><span>背心男</span></a>
															</dd>
															<dd>
																<a title="潮男外套" href="#"><span>潮男外套</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="下装">下装</span>
															</dt>
															<dd>
																<a title="睡衣男" href="#"><span>睡衣男</span></a>
															</dd>
															<dd>
																<a title="男裤" href="#"><span>男裤</span></a>
															</dd>
															<dd>
																<a title="男士内裤" href="#"><span>男士内裤</span></a>
															</dd>
															<dd>
																<a title="保暖裤" href="#"><span>保暖裤</span></a>
															</dd>
															<dd>
																<a title="男长裤" href="#"><span>男长裤</span></a>
															</dd>
															<dd>
																<a title="休闲裤" href="#"><span>休闲裤</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="鞋子">鞋子</span>
															</dt>
															<dd>
																<a title="拖鞋" href="#"><span>拖鞋</span></a>
															</dd>
															<dd>
																<a title="男靴" href="#"><span>男靴</span></a>
															</dd>
															<dd>
																<a title="运动鞋" href="#"><span>运动鞋</span></a>
															</dd>
															<dd>
																<a title="布鞋男" href="#"><span>布鞋男</span></a>
															</dd>
															<dd>
																<a title="皮鞋" href="#"><span>皮鞋</span></a>
															</dd>
															<dd>
																<a title="雪地靴" href="#"><span>雪地靴</span></a>
															</dd>
															

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="配饰">配饰</span>
															</dt>
															<dd>
																<a title="男帽" href="#"><span>男帽</span></a>
															</dd>
															<dd>
																<a title="男皮带" href="#"><span>男皮带</span></a>
															</dd>
															<dd>
																<a title="手套男" href="#"><span>手套男</span></a>
															</dd>
															<dd>
																<a title="项链" href="#"><span>项链</span></a>
															</dd>
															<dd>
																<a title="男士手表" href="#"><span>男士手表</span></a>
															</dd>
															<dd>
																<a title="眼镜" href="#"><span>眼镜</span></a>
															</dd>
															

														</dl>

													</div>
													
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
<!--女装区  -->								
								<li class="appliance js_toggle relative first">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/cake.png"></i><a
												class="ml-22" title="女装"
												href="/front/products/selectProductsByLikeName">女装</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="裙子">裙子</span>
															</dt>
															<dd>
																<a title="连衣裙冬" href="#"><span>连衣裙冬</span></a>
															</dd>
															<dd>
																<a title="旗袍" href="#"><span>旗袍</span></a>
															</dd>
															<dd>
																<a title="半身裙" href="#"><span>半身裙</span></a>
															</dd>
															<dd>
																<a title="A字裙" href="#"><span>A字裙</span></a>
															</dd>
															<dd>
																<a title="晚礼服" href="#"><span>晚礼服</span></a>
															</dd>
															<dd>
																<a title="秀禾服" href="#"><span>秀禾服</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="上衣">上衣</span>
															</dt>
															<dd>
																<a title="女针织衫" href="#"><span>女针织衫</span></a>
															</dd>
															<dd>
																<a title="毛呢外套" href="#"><span>毛呢外套</span></a>
															</dd>
															<dd>
																<a title="羊绒大衣" href="#"><span>羊绒大衣</span></a>
															</dd>
															<dd>
																<a title="情侣卫衣" href="#"><span>情侣卫衣</span></a>
															</dd>
															<dd>
																<a title="中老年女装" href="#"><span>中老年女装</span></a>
															</dd>
															<dd>
																<a title="中年女装" href="#"><span>中年女装</span></a>
															</dd>
															<dd>
																<a title="老年女装" href="#"><span>老年女装</span></a>
															</dd>
															<dd>
																<a title="闺蜜装" href="#"><span>闺蜜装</span></a>
															</dd>

														</dl>
														
														<dl class="dl-sort">
															<dt>
																<span title="裤子">裤子</span>
															</dt>
															<dd>
																<a title="女裤" href="#"><span>女裤</span></a>
															</dd>
															<dd>
																<a title="九分裤" href="#"><span>九分裤</span></a>
															</dd>
															<dd>
																<a title="加绒打底裤" href="#"><span>加绒打底裤</span></a>
															</dd>
															<dd>
																<a title="秋裤" href="#"><span>秋裤</span></a>
															</dd>
															<dd>
																<a title="阔腿裤套装" href="#"><span>阔腿裤套装</span></a>
															</dd>
															<dd>
																<a title="加绒裤" href="#"><span>加绒裤</span></a>
															</dd>
															<dd>
																<a title="假两件" href="#"><span>假两件</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="内衣">内衣</span>
															</dt>
															<dd>
																<a title="保暖内衣" href="#"><span>保暖内衣</span></a>
															</dd>
															<dd>
																<a title="情侣睡衣" href="#"><span>情侣睡衣</span></a>
															</dd>
															<dd>
																<a title="秋衣秋裤" href="#"><span>秋衣秋裤</span></a>
															</dd>
															<dd>
																<a title="保暖衣" href="#"><span>保暖衣</span></a>
															</dd>
															<dd>
																<a title="羊绒裤" href="#"><span>羊绒裤</span></a>
															</dd>
															<dd>
																<a title="文胸" href="#"><span>文胸</span></a>
															</dd>
															<dd>
																<a title="女士内裤" href="#"><span>女士内裤</span></a>
															</dd>
															<dd>
																<a title="丝袜" href="#"><span>丝袜</span></a>
															</dd>
															<dd>
																<a title="女袜" href="#"><span>女袜</span></a>
															</dd>
															

														</dl>
														
														<dl class="dl-sort">
															<dt>
																<span title="配饰">配饰</span>
															</dt>
															<dd>
																<a title="手表" href="#"><span>手表</span></a>
															</dd>
															<dd>
																<a title="帽子" href="#"><span>帽子</span></a>
															</dd>
															<dd>
																<a title="发箍" href="#"><span>发箍</span></a>
															</dd>
															<dd>
																<a title="头绳" href="#"><span>头绳</span></a>
															</dd>
															<dd>
																<a title="围巾羊绒" href="#"><span>围巾羊绒</span></a>
															</dd>
															<dd>
																<a title="女士手链" href="#"><span>女士手链</span></a>
															</dd>
															<dd>
																<a title="披肩" href="#"><span>披肩</span></a>
															</dd>
															<dd>
																<a title="发簪" href="#"><span>发簪</span></a>
															</dd>
															<dd>
																<a title="毛领子" href="#"><span>毛领子</span></a>
															</dd>
															<dd>
																<a title="毛衣链" href="#"><span>毛衣链</span></a>
															</dd>
															<dd>
																<a title="项链" href="#"><span>项链</span></a>
															</dd>
															<dd>
																<a title="耳钉" href="#"><span>耳钉</span></a>
															</dd>
															

														</dl>
														
														<dl class="dl-sort">
															<dt>
																<span title="鞋子">鞋子</span>
															</dt>
															<dd>
																<a title="女靴" href="#"><span>女靴</span></a>
															</dd>
															<dd>
																<a title="女运动鞋" href="#"><span>女运动鞋</span></a>
															</dd>
															<dd>
																<a title="高跟鞋" href="#"><span>高跟鞋</span></a>
															</dd>
															<dd>
																<a title="雪地靴" href="#"><span>雪地靴</span></a>
															</dd>
															<dd>
																<a title="女皮鞋" href="#"><span>女皮鞋</span></a>
															</dd>
															<dd>
																<a title="单鞋" href="#"><span>单鞋</span></a>
															</dd>
															<dd>
																<a title="妈妈鞋" href="#"><span>妈妈鞋</span></a>
															</dd>
															<dd>
																<a title="女凉鞋" href="#"><span>女凉鞋</span></a>
															</dd>
															<dd>
																<a title="女式豆豆鞋" href="#"><span>女式豆豆鞋</span></a>
															</dd>
															<dd>
																<a title="秋冬女鞋" href="#"><span>秋冬女鞋</span></a>
															</dd>
															

														</dl>

													</div>
													
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<!--食品/酒水  -->
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="/resources/front/images/self_img/cookies.png"></i><a
												class="ml-22" title="食品、酒水">食品/酒水</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
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
															</dd><dd>
																<a title="葵花籽" href="#"><span>葵花籽</span></a>
															</dd>
															

														</dl>
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
													
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<!-- 家居/电器 -->
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/meat.png"></i><a
												class="ml-22" title="家居、电器"> 家居/电器</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
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
								<!-- 运动/健身 -->
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/bamboo.png"></i><a
												class="ml-22" title="运动、健身">运动/健身</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
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
														<dl class="dl-sort">
															<dt>
																<span title="骑行/垂钓">骑行/垂钓</span>
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
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<!--养生/药材  -->
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/nut.png"></i><a
												class="ml-22" title="养生、药材">养生/药材</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="营养保健">营养保健</span>
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
														<dl class="dl-sort">
															<dt>
																<span title="蛋糕">锅巴</span>
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
														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/tea.png"></i><a
												class="ml-22" title="花茶、果茶">花茶/果茶</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="蛋糕">蛋糕</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="蛋糕">点心</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
													</div>
													<div class="brand-side">
														<dl class="dl-sort">
															<dt>
																<span>实力商家</span>
															</dt>
															<dd>
																<a title="今生只围你" target="_blank" href="#" rel="nofollow"><span>今生只围你</span></a>
															</dd>
															<dd>
																<a title="忆佳人" target="_blank" href="#" rel="nofollow"><span
																	class="red">忆佳人</span></a>
															</dd>

														</dl>
													</div>
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>
								<!--新鲜水果  -->
								<li class="appliance js_toggle relative">
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img src="/resources/front/images/self_img/tea.png"></i><a
												class="ml-22" title="新鲜水果">新鲜水果</a>
										</h3>
										<em>&gt;</em>
									</div>
									<div class="menu-item menu-in top">
										<div class="area-in">
											<div class="area-bg">
												<div class="menu-srot">
													<div class="sort-side">
														<dl class="dl-sort">
															<dt>
																<span title="进口鲜果">进口鲜果</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="新果尝鲜">进口鲜果</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="镇店之宝">镇店之宝</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
														<dl class="dl-sort">
															<dt>
																<span title="国产精品">进口鲜果</span>
															</dt>
															<dd>
																<a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a>
															</dd>
															<dd>
																<a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a>
															</dd>

														</dl>
													</div>
													
												</div>
											</div>
										</div>
									</div> <b class="arrow"></b>
								</li>

							</ul>
						</div>
					</div>

				</div>
			</div>


			<!--轮播-->

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

			<!--今日推荐 -->

			<div class="am-g am-g-fixed recommendation">
				<div class="clock am-u-sm-3"">
					<img src="/resources/front/images/self_img/2016.png "></img>
					<p>
						今日<br>推荐
					</p>
				</div>
				<div class="am-u-sm-4 am-u-lg-3 ">
					<div class="info ">
						<h3>真的有鱼</h3>
						<h4>开年福利篇</h4>
					</div>
					<div class="recommendationMain one">
						<a href="introduction.html"><img
							src="/resources/front/images/self_img/tj.png "></img></a>
					</div>
				</div>
				<div class="am-u-sm-4 am-u-lg-3 ">
					<div class="info ">
						<h3>囤货过冬</h3>
						<h4>让爱早回家</h4>
					</div>
					<div class="recommendationMain two">
						<img src="/resources/front/images/self_img/tj1.png "></img>
					</div>
				</div>
				<div class="am-u-sm-4 am-u-lg-3 ">
					<div class="info ">
						<h3>浪漫情人节</h3>
						<h4>甜甜蜜蜜</h4>
					</div>
					<div class="recommendationMain three">
						<img src="/resources/front/images/self_img/tj2.png "></img>
					</div>
				</div>

			</div>
			<div class="clear "></div>
			<!--热门活动 -->

			<div class="am-container activity ">
				<div class="shopTitle ">
					<h4>活动</h4>
					<h3>每期活动 优惠享不停</h3>
					<span class="more "> <a href="# ">全部活动<i
							class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
					</span>
				</div>
				<div class="am-g am-g-fixed ">
					<div class="am-u-sm-3 ">
						<div class="icon-sale one "></div>
						<h4>秒杀</h4>
						<div class="activityMain ">
							<img src="/resources/front/images/self_img/activity1.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 ">
						<div class="icon-sale two "></div>
						<h4>特惠</h4>
						<div class="activityMain ">
							<img src="/resources/front/images/self_img/activity2.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 ">
						<div class="icon-sale three "></div>
						<h4>团购</h4>
						<div class="activityMain ">
							<img src="/resources/front/images/self_img/activity3.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

					<div class="am-u-sm-3 last ">
						<div class="icon-sale "></div>
						<h4>超值</h4>
						<div class="activityMain ">
							<img src="/resources/front/images/self_img/activity.jpg "></img>
						</div>
						<div class="info ">
							<h3>春节送礼优选</h3>
						</div>
					</div>

				</div>
			</div>
			<div class="clear "></div>
			
		  <script type="text/javascript" >
			$(function(){
				
				var name = "zhangsan";
				document.getElementById("n").href="ElectronicCommerce.jsp?name="+"name";
			}) 
			
			
			</script>- 

<!--服装城  -->
<%-- <%
request.setCharacterEncoding("utf-8");
response.setContentType("UTF-8");
%> --%>
			<div id="f1">
				<!--坚果-->
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=5" >服装城</a>
						</h4>
						<h3><a target="_blank" href="/gotoFront/ElectronicCommerce?name=酥酥脆脆,回味无穷">酥酥脆脆，回味无穷</a></h3>
						<div class="today-brands ">
							<a href="# ">腰果</a> <a href="# ">松子</a> <a href="# ">夏威夷果 </a> <a
								href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
					<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">

						<c:if test="${products.tid==5 && i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
							<div class="am-u-sm-4 text-four">
								<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"> <img
									src="/files${products.producturl }" /></a>
									<div class="outer-con ">
										<div class="title ">
											<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}</a>
										</div>
										<div class="sub-title ">
											<p>
												<em>￥</em><strong> ${products.price}</strong>
											</p>
										</div>
										<a pppgg="/front/shoppingCart/insertUi.action?pid=${products.id}" href="#">
										<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
										</a>
									</div>
								
							</div>
						</c:if>



					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>

			<!--美食城  -->
			<div id="f2">

				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=6">美食城</a>
						</h4>
						<h3>酥酥脆脆，回味无穷</h3>
						<div class="today-brands ">
							<a href="# ">老干妈</a> <a href="# ">老干爹</a> <a href="# ">夏威夷果 </a>
							<a href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
					<c:if test="${products.tid==6 && i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
						<div class="am-u-sm-4 text-four">
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"><img
								src="/files${products.producturl }" /></a>
								<div class="outer-con ">
									<div class="title ">
											<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}</a>
									
									</div>
									<div class="sub-title ">
										<p>
											<em>￥</em><strong> ${products.price}</strong>
										</p>
									</div>
									<a pppgg="/front/shoppingCart/insertUi.action?pid=${products.id}" href="#">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
									</a>
								</div>
							
						</div>
						</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>

			<!--家居电器  -->
			<div id="f3">
				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=8">家居电器</a>
						</h4>
						<h3>酥酥脆脆，回味无穷</h3>
						<div class="today-brands ">
							<a href="# ">腰果</a> <a href="# ">松子</a> <a href="# ">夏威夷果 </a> <a
								href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
					<c:if test="${products.tid==8 && i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
						<div class="am-u-sm-4 text-four">
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"> <img
								src="/files${products.producturl }" /></a>
								<div class="outer-con ">
									<div class="title ">
											<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}</a>
									</div>
									<div class="sub-title ">
										<p>
											<em>￥</em><strong> ${products.price}</strong>
										</p>
									</div>
									<a pppgg="/front/shoppingCart/insertUi.action?pid=${products.id}" href="#">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
									</a>
								</div>
							
						</div>
</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>

			<!-- 运动健身 -->
			<div id="f4">

				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=4">运动健身</a>
						</h4>
						<h3>酥酥脆脆，回味无穷</h3>
						<div class="today-brands ">
							<a href="# ">腰果</a> <a href="# ">松子</a> <a href="# ">夏威夷果 </a> <a
								href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
					<c:if test="${products.tid==4 && i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
						<div class="am-u-sm-4 text-four">
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"> <img
								src="/files${products.producturl }" /></a>
								<div class="outer-con ">
									<div class="title ">
               <a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname} </a>
									</div>
									<div class="sub-title ">
										<p>
											<em>￥</em><strong> ${products.price}</strong>
										</p>
									</div>
									<a pppgg="/front/shoppingCart/insertUi.action?pid=${products.id}" href="#">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
									</a>
								</div>
							
						</div>
</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>
			<!-- 寻医问药 -->
			<div id="f5">

				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=3">寻医问药</a>
						</h4>
						<h3>酥酥脆脆，回味无穷</h3>
						<div class="today-brands ">
							<a href="# ">腰果</a> <a href="# ">松子</a> <a href="# ">夏威夷果 </a> <a
								href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
<c:set var="i5" value="0"></c:set>
					<c:forEach items="${products}" var="products">
					<c:if test="${products.tid==3 && i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
						<div class="am-u-sm-4 text-four">
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }"> <img
								src="/resources/front/images/self_img/6.jpg" /></a>
								<div class="outer-con ">
									<div class="title ">
                      <a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }" >${products.pname} </a>

									</div>
									<div class="sub-title ">
										<p>
											<em>￥</em><strong> ${products.price}</strong>
										</p>
									</div>
									<a pppgg="/front/shoppingCart/insertUi.action?pid=${products.id}" href="#">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
									</a>
								</div>
							
						</div>
</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>

<!-- 积分商城 -->
			<div id="f6">

				<div class="am-container ">
					<div class="shopTitle ">
						<h4>
							<a href="/front/products/selectAllProductsByType?tid=3">积分商城</a>
						</h4>
						<h3>酥酥脆脆，回味无穷</h3>
						<div class="today-brands ">
							<a href="# ">腰果</a> <a href="# ">松子</a> <a href="# ">夏威夷果 </a> <a
								href="# ">碧根果</a> <a href="# ">开心果</a> <a href="# ">核桃仁</a>
						</div>
						<span class="more "> <a href="# ">更多美味<i
								class="am-icon-angle-right" style="padding-left: 10px;"></i></a>
						</span>
					</div>
				</div>
				<div class="am-g am-g-fixed floodThree ">
					<div class="am-u-sm-4 text-four list">
						<div class="word">
							<a class="outer" href="#"><span class="inner"><b
									class="text">核桃</b></span></a>
						</div>
						<a href="# "> <img
							src="/resources/front/images/self_img/act1.png " />
							<div class="outer-con ">
								<div class="title ">雪之恋和风大福</div>
							</div>
						</a>
						<div class="triangle-topright"></div>
					</div>
                 <c:set var="i5" value="0"></c:set>
					<c:forEach items="${product}" var="product">
					<c:if test="${i5<8 }">
						<c:set var="i5" value="${i5+1}"></c:set>
						<div class="am-u-sm-4 text-four">
							<a href="/front/products/selectProductDetailByPrimaryKey?id=${product.id }"> 
							<img
								src="/resources/front/images/self_img/6.jpg" /></a>
								<div class="outer-con ">
									<div class="title ">
									<a href="/front/products/selectProductDetailByPrimaryKey?id=${product.id }">${product.pname} </a>
									</div>
									<div class="sub-title ">
										<p>
										
											<em>￥</em><strong> ${product.price}</strong>
										</p>
									</div>
									<a href="#" id="creditproducts">
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
									</a>
								</div>
							
						</div>
</c:if>
					</c:forEach>
				</div>

				<div class="clear "></div>
			</div>

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
	</div>
	<!--菜单 -->
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
					 <a class="cddd"><span class="message"></span>
					 </a>
					<p>购物车</p>
					<p class="cart_num ">0</p>
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
	<script>
		window.jQuery
				|| document
						.write('<script src="/resources/front/js/self_exchange/jquery.min.js "><\/script>');
	</script>
	<script type="text/javascript "
		src="/resources/front/js/self_exchange/quick_links.js "></script>

</body>
<script type="text/javascript"> 
	$(document).on('click',"[pppgg]",function(){
	    var ddd=$(this);
	    var d=ddd.attr('pppgg');
	    $.ajax({
	    	type : 'post',
	    	url : d,
	    	success : function(data){
	    		if(data=="ture"){
	    		  var rt=$(".cart_num");
	    		  var trt=rt.text();
	    		  rt.text(Number(1)+Number(trt));
	    		  $(this).focus();
	    		}else if(data="flase"){
	    			window.location.href="/gotoFront/login";
	    		} 
	    		return false;
	    	},
	        error:function(){
	        	alert("添加失败");
	        },
	    })  
	    return false;
	  });
	$('.item').on('click',function(){
			 var f=$(this);
			 $.ajax({
				 type:'post',
				 url:'/front/shoppingCart/intoshoppingCart.action',
				 success:function(data){
					 if(data=="ture"){
						 var into=f.find('a');
						 window.location.href="/front/shoppingCart/selectproducts.action";
					 }else if(data=="false"){
						 alert("你还没有登录呢 亲！")
						 
					 }
				 },
				 erroe:function(){
					 alert("网络错误!")
				 }
			 })	  
		})
	 
	/*商城首页进入购物车js*/
	
</script>  
</html>
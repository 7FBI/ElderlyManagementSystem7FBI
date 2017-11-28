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
<title>商品详细信息</title>

<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/front/css/self_exchange/demo.css"
	rel="stylesheet" type="text/css" />

<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.min.js"></script>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/resources/front/css/shouye.css">
<link rel="stylesheet"
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/front/oldman/modernizr-custom-v2.7.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var $miaobian = $('.Xcontent08>div');
		var $huantu = $('.Xcontent06>img');
		var $miaobian1 = $('.Xcontent26>div');
		$miaobian.mousemove(function() {
			miaobian(this);
		});
		$miaobian1.click(function() {
			miaobian1(this);
		});
		function miaobian(thisMb) {
			for (var i = 0; i < $miaobian.length; i++) {
				$miaobian[i].style.borderColor = '#dedede';
			}
			thisMb.style.borderColor = '#cd2426';

			$huantu[0].src = thisMb.children[0].src;
		}
		function miaobian1(thisMb1) {
			for (var i = 0; i < $miaobian1.length; i++) {
				$miaobian1[i].style.borderColor = '#dedede';
			}
			//		thisMb.style.borderColor = '#cd2426';
			$miaobian.css('border-color', '#dedede');
			thisMb1.style.borderColor = '#cd2426';
			$huantu[0].src = thisMb1.children[0].src;
		}
		$(".Xcontent33").click(function() {
			var value = parseInt($('.input').val()) + 1;
			$('.input').val(value);
		})

		$(".Xcontent32").click(function() {
			var num = $(".input").val()
			if (num > 0) {
				$(".input").val(num - 1);
			}

		})

	})
</script>
</head>
<body>
	<jsp:include page="Self_header.jsp" />
	<div class="crumb_wrap">
		<div class="crumb">
			<a class="home_page" href="">首页</a> <label></label> <a href="">${classifiCationName}</a>
			<label></label> <a href="">${product.pname }</a>
		</div>
	</div>
	<!-- 商品展示部分 -->
	<div class="Xcontent">
		<ul class="Xcontent01">
			
				<div class="Xcontent06"><img src="${product.producturl}"></div>
				<ol class="Xcontent08">
					<div class="Xcontent07"><img src="${product.producturl}"></div>
					<c:forEach items="${photosUrl }" var="url">
					<div class="Xcontent09"><img src="${url}"></div>
					</c:forEach>
				</ol>
				<ol class="Xcontent13">
					<div class="Xcontent14"><a href="#"><p>${product.pname}</p></a></div>
					<div class="Xcontent15"><img src="/resources/front/images/shangpinxiangqing/X11.png"></div>
					<div class="Xcontent16"><p></p></div>
					<div class="Xcontent17">
						<p class="Xcontent18">售价</p>
						<p class="Xcontent19">￥<span>${product.price}</span></p>
						<div class="Xcontent20">
							<p class="Xcontent21">促销</p>
							<img src="/resources/front/images/shangpinxiangqing/X12.png">
							<p class="Xcontent22">领610元新年礼券，满再赠好礼</p>
						</div>
						<div class="Xcontent23">
							<p class="Xcontent24">服务</p>
							<p class="Xcontent25">30天无忧退货&nbsp;&nbsp;&nbsp;&nbsp;       48小时快速退款 &nbsp;&nbsp;&nbsp;&nbsp;        满88元免邮</p>
						</div>
						
					</div>
				    <div class="inner_floor">
				     <h3>优惠</h3>
				     <div class="floor_list">
				     <span class="icon_act">积分</span>
				     <span class="text_act">购买可得<a href="/front/creditshop/SelectAllCreditShop" style="color:red;"> <fmt:formatNumber
						value="${product.price/5}" maxFractionDigits="0"></fmt:formatNumber></a>&nbsp;&nbsp;积分</span>
				     </div>
				    </div>
					<div class="Xcontent26">
						<p class="Xcontent27">颜色</p>
						<div class="Xcontent28">${product.productscolor}</div>
					</div>
					<!-- <div class="Xcontentsize"></div> -->
					<div class="Xcontent30">
						<p class="Xcontent31">数量</p>
						<div class="Xcontent32"><img src="/resources/front/images/shangpinxiangqing/X15.png"></div>
						<form id="fromSubmin" >	
                        <input name="num" class="input" value="1">
                        <input name="pid" type="hidden" value="${product.id}">
                        <input name="uid" type="hidden" value="${oldUsers.uid}">
                        </form>
						<div class="Xcontent33"><img src="/resources/front/images/shangpinxiangqing/16.png"></div>
					</div>
					<div class="Xcontent34"><a class="cart_btn" id="addGoods">加入购物车</a></div>    <!-- 添加商品至购物车 -->
					<div class="Xcontent35"><a href="#" class="primary_btn" id="pays">立即购买</a></div>
				    <div class="share_collect">
				    <div class="share_kits">
				    <span class="share_title">分享到</span>
				    <div id="share_1" class="bdsharebuttonbox share_wrap">
				    <a class="bds_tqq icon icon_qq" target="_blank" href=""></a>
				    <a id="wxShare" class="bds_weixin icon icon_wx" href=""></a>
				    </div>
				    </div>
				     <div class="collect_wrap">
				    <i id="btnCollect" class="icon icon_collect" ></i>
				    <span id="textCollect" class="collect_text">收藏</span>
				    <span class="js_toggle_contrast" data-cate-id="66">
				    <i id="" class="icon icon_contrast" ></i>
				    <span id="" class="collect_text">对比</span>
				    </span>
				    </div>
				    </div>
			</ol>
		</ul>
	</div>
<!-- 猜你喜欢部分 -->
<div class="recommend_package_wrap recommend_only">
<div class="recommend_nav">
<div class="nav_item nav_item_recommend js_nav" >猜你喜欢</div>
</div>
<div class="recommend_list js_recommend_list">
<div class="recommend_item sku_tag_wrap">
<a class="pro_href" target="_blank" href="">
<img alt="" src="/resources/front/images/41824602289ffe8aA23827_120 120.jpg" class="pro_img">
<span class="pro_name"></span>
<span class="pro_price">¥99.00</span>
<div class="sku_tag sku_tag_important">11.11抢先购</div>
</a>
</div>
<div class="recommend_item sku_tag_wrap">
 <a class="pro_href" target="_blank" href="">
<img alt="" src="/resources/front/images/41824602289ffe8aA23827_120 120.jpg" class="pro_img">
<span class="pro_name"></span>
<span class="pro_price">¥99.00</span>
<div class="sku_tag sku_tag_important">11.11抢先购</div>
</a>
</div>
<div class="recommend_item sku_tag_wrap">
<a class="pro_href" target="_blank" href="">
<img alt="" src="/resources/front/images/41824602289ffe8aA23827_120 120.jpg" class="pro_img">
<span class="pro_name"></span>
<span class="pro_price">¥99.00</span>
<div class="sku_tag sku_tag_important">11.11抢先购</div>
</a>
</div>
<div class="recommend_item sku_tag_wrap">
<a class="pro_href" target="_blank" href="">
<img alt="" src="/resources/front/images/41824602289ffe8aA23827_120 120.jpg" class="pro_img">
<span class="pro_name"></span>
<span class="pro_price">¥99.00</span>
<div class="sku_tag sku_tag_important">11.11抢先购</div>
</a>
</div>
<div class="recommend_item sku_tag_wrap">
<a class="pro_href" target="_blank" href="">
<img alt="" src="/resources/front/images/41824602289ffe8aA23827_120 120.jpg" class="pro_img">
<span class="pro_name"></span>
<span class="pro_price">¥99.00</span>
<div class="sku_tag sku_tag_important">11.11抢先购</div>
</a>
</div>
</div>
</div>
	<!-- 商品详细情况介绍 -->
	<div class="tabs_nav_wrap">
		<div class="tabs_nav_inner_wrap">
			<div class="tabs_nav_border_wrap">
				<ul class="tabs_nav">
					<li class="cur" id="product_intro" onclick="anniu(this)">产品介绍</li>
					<li id="nav_user_evaluation" class="" onclick="anniu(this)"
						data-tab="#user_evaluation" mtag="30007.1.3">评价 <span
						class="evaluation_num">(24)</span>
					</li>
					<li id="product_spec" class="" onclick="anniu(this)"
						data-tab="#product_spec">规格参数</li>
					<li id="service_support" class="" onclick="anniu(this)"
						data-tab="#service_support">服务支持</li>
					<li id="related_question" class="" onclick="anniu(this)"
						data-tab="#related_question">相关问题</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 商品详细情况内容 -->
	<div class="tabs_content_wrap">

		<!-- 商品详细内容介绍 -->
		<div id="product_intro_id" style="display: block"
			class="tabs_content tabs_content_product cur">
			<div class="style_wrap_790">
				<p>
					<img alt="产品详细介绍"
						src="/resources/front/images/69c5d4279ea22611A741_790 .jpg">
				</p>
			</div>
		</div>
		<!-- 规格参数 -->
		<div id="product_spec_id" style="display: none"
			class="tabs_content product_spec">
			<div class="spec_wrap">
				<div class="spec_title">基本类型</div>
				<table class="spec_table">
					<tbody>
						<tr>
							<td>大小</td>
							<td>美的油烟机</td>
						</tr>
						<tr>
							<td>属性1</td>
							<td>CXW-230-TJ8055-GRW+Q535B（天然气）</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="spec_wrap">
				<div class="spec_title">详细信息</div>
				<table class="spec_table">
					<tbody>
						<tr>
							<td>燃气灶进风方式</td>
							<td>全进风</td>
						</tr>
						<tr>
							<td>燃气灶适用气源</td>
							<td>天然气</td>
						</tr>
						<tr>
							<td>燃气灶点火电源</td>
							<td>脉冲电子点火</td>
						</tr>
						<tr>
							<td>燃气灶额定热负荷（KW）</td>
							<td>4.2</td>
						</tr>
						<tr>
							<td>燃气灶灶眼数量（个）</td>
							<td>2</td>
						</tr>
						<tr>
							<td>燃气灶安装方式</td>
							<td>嵌入式</td>
						</tr>
						<tr>
							<td>燃气灶面板材质</td>
							<td>钢化玻璃</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="spec_wrap">
				<div class="spec_title">包装信息</div>
				<table class="spec_table">
					<tbody>
						<tr>
							<td>吸油烟机：</td>
						</tr>
						<tr>
							<td>产品尺寸(mm)：</td>
							<td>长796x宽418x高545</td>
						</tr>
						<tr>
							<td>产品净重(kg)：</td>
							<td>29.5</td>
						</tr>
						<tr>
							<td>包装尺寸(mm)：</td>
							<td>长905x宽680x高600</td>
						</tr>
						<tr>
							<td>包装重量(kg)：</td>
							<td>33.5</td>
						</tr>
						<tr>
							<td>包装清单：</td>
							<td>主机*1、排烟管组件*1、 止回阀组件*1、止回阀密封垫*1、使用说明手册*1、机体挂板*1、油杯*1、
								塑料膨胀管*4、过滤棉*5、5x50槽沉头木螺钉*4、ST42x16自攻螺钉*4、水杯组件*1、M5x16自攻锁紧螺钉*1、油杯组件*1</td>
						</tr>
						<tr>
							<td>燃气灶：</td>
						</tr>
						<tr>
							<td>产品尺寸(mm)：</td>
							<td>长760x宽405x高150</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 服务支持 -->
		<div id="service_support_id" style="display: none"
			class="tabs_content service_support">
			<div id="servicePic" class="service_section">
				<h3>商城服务与支持</h3>
				<img style="width: 100%" alt="商城官网服务于支持"
					src="/resources/front/images/PC_66_01.jpg"
					init_src="/resources/front/image/PC_66_01.jpg"> <img
					style="width: 100%" alt="商城官网服务于支持"
					src="/resources/front/images/PC_66_02.jpg"
					init_src="/resources/front/image/PC_66_02.jpg"> <img
					style="width: 100%" alt="商城官网服务于支持"
					src="/resources/front/images/PC_66_03.jpg"
					init_src="/resources/front/image/PC_66_03.jpg">
			</div>
			<div class="service_section">
				<h3>安装/售后服务</h3>
				<div class="subtitle">
					<i class="detail_sprite_information"></i>
					我们提供多种预约安装、售后服务的渠道，为您提供贴心的服务支持。
				</div>
				<div class="service_wrap">
					<div class="service left">
						<div class="description">
							<h3 class="title">官网</h3>
							<p>在线自助提交安装、维修申请，我们会尽快联系您上门服务！</p>
							<a target="_blank" href="">
								<div class="default_btn_small">马上预约</div>
							</a>
						</div>
						<i class="detail_sprite detail_sprite_guanwang"></i>
					</div>
					<div class="service center">
						<div class="description">
							<h3 class="title">微信</h3>
							<p>添加"商城"或"i_midea"微信号，随时随地预约安装报修，实时跟踪服务进度。</p>
							<p>扫一扫，立即关注微信号</p>
						</div>
						<i class="detail_sprite detail_sprite_weixin"></i>
					</div>
					<div class="service right">
						<div class="description">
							<h3 class="title">服务电话</h3>
							<p class="tel_num">400-8899-315</p>
							<p>拨打全国统一售后服务报修电话24小时畅通为您提供贴心服务</p>
						</div>
						<i class="detail_sprite detail_sprite_kefu"></i>
					</div>
				</div>
			</div>
		</div>
		<!-- 相关问题 -->
		<div id="related_question_id" style="display: none"
			class="tabs_content related_question cur">
			<div class="tabs_content_hinter">非常抱歉，本产品暂无“相关问题”，您可查看其它服务。</div>
		</div>
		<!-- 评价  -->
		<div id="nav_user_evaluation_id" style="display: none"
			class="tabs_content evaluate_wrap cur">
			<div class="evaluate_tab_content evaluate_content_wrap">
				<h2>用户评价</h2>
				<div class="evaluate_inner">
					<div class="J_comment_main">
						<div class="evaluate_score_box">
							<h4>总体评分</h4>
							<div class="score_box">
								<div class="star_box" style="margin-top: 12px;">
									<div id="scoreBox" class="star_box_light"
										style="width: 23.2px;"></div>
								</div>
								<div class="comment_tip" style="margin-top: 10px;">
									评分:<label style="color: red;" id="stars">3</label>分
								</div>
							</div>
						</div>

						<div class="comment_tip">总评价量:<input id="countOp" style="border: none;" value="0" />
						|总页数:<input id="pageCountOp" style="border: none;" value="0" />
						</div>
					</div>
					<div id="commentList" class="evaluate_list_box">

						<div class="list_box" style="background: #F2F2F2" id="opinionsDiv">
							
						</div>


					</div>
					<!-- 评论分页 -->
					<div class="rate_page">
						<!-- 翻页功能 -->
						<div class="pagination">
							<div class="pagination_inner">
								<div class="paginator">
									<button id="addOpinoinsBtn" value="0" class="page-start" style="width: 480px">获取更多评论 </button> 
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 商品介绍js语句 -->
		<script type="text/javascript">
			var idf = document.getElementById("product_intro_id"); //商品详情
			var idc = document.getElementById("nav_user_evaluation_id"); //评价
			var idt = document.getElementById("product_spec_id"); //规格参数
			var idgt = document.getElementById("service_support_id"); //服务支持
			var idkl = document.getElementById("related_question_id"); //相关问题
			function anniu(e) {
				var test;
				if (idf.style.display == "block") {
					test = idf;
				} else if (idc.style.display == "block") {
					test = idc;
				} else if (idt.style.display == "block") {
					test = idt;
				} else if (idgt.style.display == "block") {
					test = idgt;
				} else if (idkl.style.display == "block") {
					test = idkl;
				}
				var id = e.id + "_id";
				var num = test.id.length; //test.id的字符串长度
				var td = test.id.substr(0, num - 3); //获取其对应的菜单栏的字符串
				var end = document.getElementById(td); //获得其对应的菜单栏的js对象
				if (id == idf.id) { //判断点击的是否是第一个产品 
					if (idf.style.display == "none") {
						idf.style.display = "block";
						var first = document.getElementById("product_intro"); //拿到菜单栏
						first.className = "cur";
						test.style.display = "none";
						end.className = "";
					}
				} else if (id == idc.id) { //用户评价
					if (idc.style.display == "none") {
						idc.style.display = "block";
						/* 修改样式 */
						var second = document
								.getElementById("nav_user_evaluation"); //拿到评价
						second.className = "cur";
						test.style.display = "none";
						end.className = " "; //设置原来的菜单栏的class为空
					}
				} else if (id == idt.id) { //规格参数
					if (idt.style.display == "none") {
						idt.style.display = "block";
						/* 修改样式 */
						var thired = document.getElementById("product_spec"); //拿到评价
						thired.className = "cur";
						test.style.display = "none";
						end.className = " ";
					}
				} else if (id == idgt.id) {
					if (idgt.style.display == "none") {
						idgt.style.display = "block";
						/* 修改样式 */
						var fifth = document.getElementById("service_support");
						fifth.className = "cur";
						test.style.display = "none";
						end.className = " ";
					}
				} else if (id == idkl.id) {
					if (idkl.style.display == "none") {
						idkl.style.display = "block";
						/* 修改样式 */
						var fiveth = document
								.getElementById("related_question");
						fiveth.className = "cur";
						test.style.display = "none";
						end.className = " ";
					}
				}
			}
		</script>


	</div>
	<!-- 右下角漂浮栏 -->
	<div id="detail_floating">
		<div class="item">
			<a id="to_kefu" target="_blank" href=""> <i
				class="detail_sprite detail_sprite_detail_floating_qq"></i>
			</a>
		</div>
		<div class="item">
			<a target="_blank" href=""> <i
				class="detail_sprite detail_sprite_detail_floating_info"></i>
			</a>
		</div>
		<div id="floating_wxcode" class="item" onmouseover="mOver()"
			onmouseout="mOut()">
			<a href=""> <i
				class="detail_sprite detail_sprite_detail_floating_wxcode"></i>
			</a>
		</div>
		<div id="scroll_to_top" class="item">
			<a href=""><i
				class="detail_sprite detail_sprite_detail_floating_top"></i></a>
		</div>
		<div id="floating_wxcode_content" style="display: none;">
			<span class="triangle"></span> <img alt="商城微信公众号"
				src="/resources/front/images/weixin_code.png">
		</div>
		<script type="text/javascript">
			var trf = document.getElementById("floating_wxcode_content");
			var kefu = document.getElementById("detail_floating");
			function mOver() {
				trf.style.display = "block";
			}
			function mOut() {
				trf.style.display = "none";
			}
		</script>
	</div>
	<!-- 加入购物车提示栏 -->
	<div id="confirmDouble" class="mod_lary"
		style="margin-top: -99px; margin-left: -180px;">
		<div class="mod_layer_hd">
			<i class="close_ico" data-mpopup-close=""></i>
		</div>
		<div class="mod_layer_bd">
			<i class="js_hinter_ico suc_ico"></i>
			<p class="prompt_txt J_get_status">添加成功</p>
		</div>
		<div class="mod_layer_ft">
			<a class="layer_btn J_close_text">继续购物</a> <a id="gotoshoppay"
				class="layer_btn J_get_href" href="/front/shoppingCart/selectproducts.action">去结算</a>
		</div>
	</div>

	<!-- 添加失败提示栏 -->
	<div id="confirmBuy" class="mod_lary"
		style="margin-top: -99px; margin-left: -180px;">
		<div class="mod_layer_hd">
			<i class="close_ico" data-mpopup-close=""></i>
		</div>
		<div class="mod_layer_bd">
			<i class="suc_ico js_hinter_ico fail_ico"></i>
			<p class="prompt_txt J_get_status">
				添加失败!<br>
			</p>
		</div>
		<div class="mod_layer_ft">
			<a class="layer_btn" href="/gotoFront/Shopping_cart">整理购物车</a> <a
				id="btnCartBuy" class="layer_btn" href="">立即购买</a>
		</div>
	</div>

	<script type="text/javascript">
		/* $(document).on('click',"#addGoods",function(){
		  
		}) */
		var c = $("#confirmDouble");
		var g = $("#confirmBuy");
		$("#addGoods").click(function() {
			var f = $("#fromSubmin");
			$.ajax({
				type : 'post',
				url : "/front/shoppingCart/insertBycart.action",
				data : f.serialize(),
				success : function(data) {
					if (data == "ture") {
						c.removeClass("mod_lary").addClass('mod_lary show');
					} else if (data == "false") {
						g.removeClass("mod_lary").addClass('mod_lary show');
					}
				},
				error : function() {
					g.removeClass("mod_lary").addClass('mod_lary show');
				}
			})
		})
		$(".J_close_text").click(function() {
			c.removeClass("mod_lary show").addClass('mod_lary');
		})
		$(".close_ico").click(function() {
			c.removeClass("mod_lary show").addClass('mod_lary');
			g.removeClass("mod_lary show").addClass('mod_lary');
		})
		/* 收藏功能 */
		$("#btnCollect").click(function(){
	    var btn=$("#btnCollect")
	   var tg=${product.id};
	   $.ajax({
		 type:'post', 
		 url:"/front/collection/insert_or_delete?pid="+tg,
		 data:f.serialize(),
		 success:function(data){
			 if(data=="ture"){
				 btn.removeClass().addClass("icon icon_collectse")
			 }else if(date=="false"){
				 btn.removeClass().addClass("icon icon_collect")
			 }
		 },
	     error:function(){
		   alert("收藏失败")
	    }
	    
	  })
   })
		$("#pays").click(function() {
			var f = $("#fromSubmin");
			f.submit();
			/* $.ajax({
				type : 'post',
				url : "/front/orders/addOneOrder",
				data : f.serialize()
			}) */
		})

		/* 评论addOpinoinsBtn */

		$(document).ready(function() {
			getOpinionsAjax();
		})
		
		$("#addOpinoinsBtn").mouseenter(function () {
			var v=$("#addOpinoinsBtn");
			//alert(parseInt(v.val())+1);
			var pag=$("#pageCountOp").val();
			if (v.val()<pag) {
				getOpinionsAjaxPage(parseInt(v.val())+1);
				v.val(parseInt(v.val())+1);
			}else {
				v.text("已经没有跟多了");
			}
		})
		
		//有page
		function getOpinionsAjaxPage(page) {
			var x = $("#scoreBox");
			var p = $("#nowpids").val();
			var st = $("#stars");
			$.ajax({
						type : 'get',
						url : '/front/opinions/opinionsList?pid='+ p+'&page='+page,
						success : function(data) {
							var avgs = data.avg;
							x.css("width", avgs * 23.2 + "px");
							st.text(avgs);
							
							if (data.opinions != null) {
								var opdiv=$("#opinionsDiv");
								var dop=data.opinions;
								for ( var k in dop) {
									var opids=dop[k].id;
									var ophtmls = '<div class="list_box_center"><div class="comment_wrap"><p name="opinionsCount" style="margin-left: 5PX;font-size:18px;" class="list_comment">'+dop[k].content+'</p><div id="op'+dop[k].id+'"  style="padding: 5px" class="service_section" ></div></div></div><div class="list_box_right"><div class="comment_name">'+dop[k].oldUsers.uid+'</div><div class="comment_time">'+dop[k].opinionstime+'</div></div>';
									opdiv.append(ophtmls);
									imagesOP(dop[k].id);
								}
							}
						},
						error : function() {
							alert("网络错误");
						}
					})
			}
		
		//无page
		function getOpinionsAjax() {
			var x = $("#scoreBox");
			var p = $("#nowpids").val();
			var st = $("#stars");
			$.ajax({
						type : 'get',
						url : '/front/opinions/opinionsList?pid='+ p,
						success : function(data) {
							var avgs = data.avg;
							x.css("width", avgs * 23.2 + "px");
							st.text(avgs);
							$("#countOp").val(data.counts);
							$("#pageCountOp").val(data.count);
							if (data.opinions != null) {
								var opdiv=$("#opinionsDiv");
								var dop=data.opinions;
								for ( var k in dop) {
									var opids=dop[k].id;
									var ophtmls = '<div class="list_box_center"><div class="comment_wrap"><p name="opinionsCount" style="margin-left: 5PX;font-size:18px;" class="list_comment">'+dop[k].content+'</p><div id="op'+dop[k].id+'"  style="padding: 5px" class="service_section" ></div></div></div><div class="list_box_right"><div class="comment_name">'+dop[k].oldUsers.uid+'</div><div class="comment_time">'+dop[k].opinionstime+'</div></div>';
									opdiv.append(ophtmls);
									imagesOP(dop[k].id);
								}
							}
						},
						error : function() {
							alert("网络错误");
						}
					})
			}
						
						
						function imagesOP(opids) {
							$.ajax({
								url:'/front/opinions/remarkList?opid='+opids,
								success:function(rms){
									if (rms!=null) {
										for ( var i in rms) {
											$('#op'+opids).append('&nbsp;<img width="90px;" height="90px;" src="/files'+rms[i].remarkurl+'"/>');
										}
									}
								}
								
							});
						}
	</script>
</body>
</html>
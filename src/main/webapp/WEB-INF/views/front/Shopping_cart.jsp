<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/front/css/Cart.css">
<title>购物车</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <script src="/resources/front/js/self_exchange/jquery.min.js"></script> -->
<link rel="stylesheet" href="/resources/front/css/global.css" />

</head>
<body>
	<%-- <jsp:include page="Storedetailedheader.jsp" /> --%>
	<jsp:include page="Self_header.jsp" />
	<!-- 购物车头部 -->
	<div class="cart_wrap">
		<!-- S 购物车页面-->
		<!-- S 购物车头部：地址-->
		<div class="cart_top">
			<div class="cart_top_inner">
				<h2 class="cart_title">购物车</h2>
				<div class="cart_address">
					<div class="address_wrap">
						<span class="address_hinter">配送至：</span>
						<div class="address_selected">
							<div class="outer">
								<select name="province" id="province">
									<option value="请选择">请选择</option>
								</select> <select name="city" id="city">
									<option value="请选择">请选择</option>
								</select> <select name="town" id="town">
									<option value="请选择">请选择</option>
								</select>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 购物车主要部分 -->
		<div class="cart_body">
			<div class="cart_detail">
				<ul class="cart_title_wrap">
					<li class="cart_choose">
						<input  type="checkbox" cbox="all" checked="checked" />全选
					</li>
					<li class="cart_product">商品信息</li>
					<li class="cart_sku">规格</li>
					<li class="cart_price">单价(元)</li>
					<li class="cart_num">数量</li>
					<li class="cart_total">小计(元)</li>
					<li class="cart_operation">操作</li>
				</ul>
				<!-- 购物车主要内容 -->
				<div class="cart_list js_cart_list">
					<div class="cart_item">
						<div class="item_title">
							<div class="shop_detail">
								<!-- 官微官网图标-->
								<i class="icon_shop icon_mall"></i> 美的官网商城
							</div>
						</div>
						<c:set var="allMoneys" value="0.0" ></c:set>
						<!-- 购物车商品处 -->
						<c:forEach items="${products}" var="product">
							<div class="item_detail">
								<div class="item_sub">
									<!-- 选择框 -->
									<div class="cart_choose">
											<input checked="checked" type="checkbox" pmoney="${product.price }" pcount="${product.cartcount}"
											name="pid" value="${product.id }" />
										<div class="line_top"></div>
									</div>
									<div class="item_sub_detail">
										<!-- 商品图片 -->
										<div class="cart_img">
											<img src="/fbiImage${product.producturl}">
										</div>
										<!-- 商品描述 -->
										<div class="cart_product">
											<span>${product.pdescription}</span>
										</div>
										<!-- 商品规格 -->
										<div class="cart_sku">
											<span>${product.productscolor}</span>
										</div>
										<!-- 单价 -->
										<div class="cart_price">
											<span class="price_new">${product.price}</span>
										</div>
										<!-- 数量 -->
										<div class="cart_num">
											<div id="divEditNum_168357"
												class="num_wrap num_wrap_inline  js_num">
												<button class="reduce" value="${product.count }" pri="${product.price }">-</button> 
												<input class="num" pattern="\d{0,3}" value="${product.cartcount}" type="text">
												<button class="add" value="${product.count }" pri="${product.price }">+</button>
											</div>
										</div>
										<!-- 小计 -->
										<div class="cart_total" pprices="p">${product.cartcount*product.price}</div>
										<!-- 操作 -->
										<div class="cart_operation">
											<span class="operation_delete js_item_delete">删除</span>
										</div>
										<!-- 商品id -->
										<input class="productid" type="hidden" value="${product.id}">
									</div>
								</div>
							</div>
							<c:set var="allMoneys" value="${allMoneys+product.cartcount*product.price}" ></c:set>
						</c:forEach>
						<!-- 打折商品处 -->
						<div class="item_detail item_detail_activity">
							<div class="activity_top">
								<i class="activity_icon ">打折</i>
								<p class="activity_desc">商品已优惠</p>
								<div class="activity_handle">
									<a class="handle_2" target="_blank"> <a href="#" class="text">更多活动商品</a>
										<i class="icon"></i>
									</a>
								</div>
								<div class="line_bottom"></div>
							</div>
							<c:forEach items="${produties}" var="products">
								<div class="item_sub item_sub_selected">
									<!-- 选择框 -->
									<div class="cart_choose">
											<input checked="checked" type="checkbox" 
											pmoney="${products.discouothers.discountprice*products.price }"
											 pcount="${products.cartcount}"
											 name="pid" value="${products.id }" />
										<div class="line_top"></div>
									</div>
									<div class="item_sub_detail">
										<!-- 商品图片 -->
										<div class="cart_img">
											<img src="${products.producturl}">
										</div>
										<!-- 商品描述 -->
										<div class="cart_product">
											<span>${products.pdescription}</span>
										</div>
										<!-- 商品规格 -->
										<div class="cart_sku">
											<span>${products.productscolor}</span>
										</div>
										<!-- 单价 -->
										<div class="cart_price">
											<span class="price_old">${products.price}</span> <span
												class="price_new"><label style="color: red;">￥</label>${products.discouothers.discountprice*products.price}</span>
											<div class="tag_reduce js_tag_reduce">已降价¥${products.price-products.discouothers.discountprice*products.price}</div>
										</div>
										<!-- 数量 -->
										<div class="cart_num">
											<div id="divEditNum_168357"
												class="num_wrap num_wrap_inline  js_num">
												<button class="reduce" value="${products.count }" pri="${products.price*products.discouothers.discountprice}">-</button> 
												<input class="num" pattern="\d{0,3}" value="${products.cartcount}" type="text">
												<button class="add" value="${products.count }" pri="${products.price*products.discouothers.discountprice}">+</button>
											</div>
										</div>
										<!-- 小计 -->
										<div class="cart_total" pprices="p">${products.cartcount*products.price*products.discouothers.discountprice}</div>
										<!-- 操作 -->
										<div class="cart_operation">
											<span class="operation_delete js_item_delete">删除</span>
										</div>
										<!-- 商品id -->
										<input class="productid" type="hidden" value="${products.id}">
									</div>
								</div>
								<c:set var="allMoneys" value="${allMoneys+products.cartcount*products.price*products.discouothers.discountprice}" ></c:set>
							</c:forEach>
						</div>

					</div>
				</div>
				<!-- 底部结算栏 -->

			</div>

			<!-- 底部结算栏 -->
			<div class="cart_bottom_wrap cart_bottom_fixed">
				<div class="cart_bottom">
					
					<div class="cart_sum_right">
						<div class="cart_sum_num">
							已选商品 <span class="color_f60 js_total_check">2</span>件
						</div>
						<div class="cart_sum_price">
							<div class="total_price">
								合计： <span class="total_price_inner"> <span
									class="js_total_price"> &yen;<label id="allMoneysID">${allMoneys}</label> </span>
								</span>
							</div>
							<div class="cut_price">
								(不含运费)
								<!--              优惠： -￥<span class="js_total_discount">-->
								<!--</span>-->
							</div>
						</div>
						<div class="cart_sum_to_order js_to_order">去结算</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 删除购物车 -->
	<div id="confirmDelete" class="mod_layer"
		style="margin-top: -100px; margin-left: -180px;">
		<div class="mod_layer_hd">
			<i class="close_ico" data-mpopup-close=""></i>
		</div>
		<div class="mod_layer_bd">
			<p class="prompt_txt">确认要删除？</p>
		</div>
		<div class="mod_layer_ft">
			<a class="layer_btn js_confirm_delete" href="">确 认</a> <a
				class="layer_btn js_cojy">取消</a>
		</div>
	</div>
</body>
<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
<script src="/resources/unity/address/js/area.js"></script>
<script src="/resources/unity/address/js/select.js"></script>
<!-- 购物车商品删除 -->
<script type="text/javascript">



	$(document).on('click', '.operation_delete', function() {
		var confirmDelete = $("#confirmDelete");
		confirmDelete.addClass('show');
		var gtop = $(this);
		var terx = gtop.parent().next();
		alert(terx.val())
		$(document).on('click', '.js_confirm_delete', function() {
			var f = $(".js_confirm_delete");
			$.ajax({
				type : 'post',
				url : "/front/shoppingCart/delectUi.action?pid=" + terx.val(),
				data : f.serialize(),
				success : function(data) {
					if (data == "ture") {
						confirmDelete.removeClass('show');
						alert("成功了");
					}
				},
				error : function() {
					alert("失败了")
				}
			})
		})
	})
	$(document).on('click', '.close_ico', function() {
		var confirmDelete = $("#confirmDelete");
		confirmDelete.removeClass('show');
	})
	$(document).on('click', '.js_cojy', function() {
		var confirmDelete = $("#confirmDelete");
		confirmDelete.removeClass('show');
	});
	
	/* 减少 */
	$(document).on('click',".reduce",function(){
		var jbt=$(this);
		var num=jbt.next();
		var allMoneysID=$("#allMoneysID");
		var moneys=jbt.parent().parent().next();
		//alert("------------->"+num.val());
		if (num.val()<=1) {
			return false;
		} else if(ischecked(jbt)){
			var n=num.val();
			num.val(parseInt(n)-1);
			var m=moneys.text();
			moneys.text(parseFloat(m)-parseFloat(jbt.attr("pri")));
			var alls=allMoneysID.text();
			allMoneysID.text(parseFloat(alls)-parseFloat(jbt.attr("pri")));
		}else{
			var n=num.val();
			num.val(parseInt(n)-1);
			var m=moneys.text();
			moneys.text(parseFloat(m)-parseFloat(jbt.attr("pri")));
		}
	});
	
	/* 增加 */
	$(document).on('click',".add",function(){
		var jbt=$(this);
		var num=jbt.prev();
		var allMoneysID=$("#allMoneysID");
		var moneys=jbt.parent().parent().next();
		//alert("------------->"+num.val());
		if (num.val()>=parseInt(jbt.val())) {
			return false;
		} else if(ischecked(jbt)) {
			var n=num.val();
			num.val(parseInt(n)+1);
			var m=moneys.text();
			moneys.text(parseFloat(m)+parseFloat(jbt.attr("pri")));
			var alls=allMoneysID.text();
			allMoneysID.text(parseFloat(alls)+parseFloat(jbt.attr("pri")));
		}else{
			var n=num.val();
			num.val(parseInt(n)+1);
			var m=moneys.text();
			moneys.text(parseFloat(m)+parseFloat(jbt.attr("pri")));
		}
	});
	
	
	$(document).on('change',"input[name='pid']",function(){
		var ckdoc=$(this);
		var allMoneysID=$("#allMoneysID");
		var alls=allMoneysID.text();
		//class="num"
		var numdoc=ckdoc.parent().next().find("div[pprices='p']");
		if(ckdoc.is(':checked')){
			//alert(ckdoc.val()+"-------------"+numdoc.text());
			allMoneysID.text(parseFloat(numdoc.text())+parseFloat(alls));
		}else{
			//alert("--------------");
			allMoneysID.text(parseFloat(alls)-parseFloat(numdoc.text()));
		}
	})
	
	
	//cbox="all"
	$(document).on('change',"input[cbox='all']",function(){
		var cbox=$(this);
		var cboxs=$("input[name='pid']");
		var allMoneysID=$("#allMoneysID");
		if(cbox.is(':checked')){
			cboxs.each(function (i,e) {
				if ($(e).is(':checked')) {
				}else{
					$(e).attr("checked",true);
					var m=$(e).attr("pmoney");
					var c=$(e).attr("pcount");
					var alls=allMoneysID.text();
					allMoneysID.text(parseFloat(m*c)+parseFloat(alls));
				}
			})
		}else{
			cboxs.each(function (i,e) {
				if ($(e).is(':checked')) {
					$(e).attr("checked",false);
				}
			})
			allMoneysID.text(parseFloat(0.0));
		}
	})
	
	function ischecked(doc) {
		var ckdoc=doc.parent().parent().parent().prev().find("input[type='checkbox']");
		if(ckdoc.is(':checked')){
			return true;
		}else{
			return false;
		}
	}
	
	
	
	
	
	
	
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/front/css/Cart.css">
<title>购物车</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css">
<script type="text/javascript" src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript" src="/resources/front/oldman/modernizr-custom-v2.7.1.min.js"></script>
<script type="text/javascript" src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="Storedetailedheader.jsp" />
<!-- 购物车部分 -->
<div class="cart_wrap">
<!-- 购物车头部 -->
<div class="cart_top">
<div class="cart_top_inner">
<h2 class="cart_title">购物车</h2>
<div class="cart_address">
<div class="address_wrap">
<span class="address_hinter">配送至:</span>
<div class="address_selected option_on">
<span class="address_option address_selected_province">广东省</span>
<span class="address_option address_selected_city">广州市</span>
<span class="address_option address_selected_area">天河区</span>
<span class="arrow"></span>
</div>
<div class="address_list hide">
<span class="close"></span>
<div class="address_list_top">
<div id="showProvince" class="address_option" data-type="jProvince">
<span class="name">广东省</span>
<span class="arrow"></span>
</div>
<div id="showCity" class="address_option" data-type="jCity">
<span class="name">天河市</span>
<span class="arrow"></span>
</div>
<div id="showArea" class="address_option option_on" data-type="jArea">
<span class="name">天河区</span>
<span class="arrow arrow_off"></span>
</div>
</div>
<div class="address_list_bottom">
<div id="addressListProvince" class="address_list_option address_list_province" data-type="province">
<span class="option_wrap" title="北京市">
<a id="110000" name="北京市">北京市</a>
</span>
<span class="option_wrap" title="天津市">
<a id="120000" name="天津市">天津市</a>
</span>
<span class="option_wrap" title="河北省">
<a id="130000" name="河北省">河北省</a>
</span>
<span class="option_wrap" title="山西省">
<a id="140000" name="山西省">山西省</a>
</span>
<span class="option_wrap" title="内蒙古自治区">
<a id="150000" name="内蒙古自治区">内蒙古自治区</a>
</span>
<span class="option_wrap" title="吉林省">
<a id="160000" name="吉林省">吉林省</a>
</span>
<span class="option_wrap" title="黑龙江省">
<a id="170000" name="黑龙江省">黑龙江省</a>
</span>
<span class="option_wrap" title="上海市">
<a id="180000" name="上海市">上海市</a>
</span>
<span class="option_wrap" title="江苏省">
<a id="190000" name="江苏省">江苏省</a>
</span>
<span class="option_wrap" title="浙江省">
<a id="200000" name="浙江省">浙江省</a>
</span>
<span class="option_wrap" title="安徽省">
<a id="210000" name="安徽省">安徽省</a>
</span>
<span class="option_wrap" title="福建省">
<a id="220000" name="福建省">福建省</a>
</span>
</div>
<div id="addressListCity" class="address_list_option address_list_city hide"></div>
<div id="addressListArea" class="address_list_option address_list_area hide"></div>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- 购物车主要内容 -->
<div class="cart_body">
<!-- 购物车列表 -->
<div class="cart_detail">
<ul class="cart_title_wrap">
<li class="cart_choose">
<div class="js_all_choose item_choose_wrap">
<div class="item_choose js_sum_choose"></div>
</div>
全选
</li>
<li class="cart_product">商品信息</li>
<li class="cart_sku">规格</li>
<li class="cart_price">单价(元)</li>
<li class="cart_num">数量</li>
<li class="cart_total">小计</li>
<li class="cart_operation">操作</li>
</ul>
<div class="cart_list js_cart_list">
<div class="cart_item js_shop_100511">
<div class="item_title">
<div class="item_io_choose item_choose_wrap">
<div class="item_choose js_shop_choose"></div>
</div>
<div class="shop_detail">
<i class="icon_shop icon_mall"></i>
宜佳官网商城
</div>
</div>
<!-- 这是c标签开始 -->
<div class="item_detail">
<div class="item_sub item_sub_selected">
<div class="cart_invalid">
<div class="btn_invalid">失效</div>
</div>
<div class="cart_choose">
<div class="item_choose_wrap">
<div class="item_choose js_shop_choose" data-type="product"></div>
</div>
<div class="line_top"></div>
</div>
<div class="item_sub_detail">
<div class="cart_img">
<img alt="" src="/resources/front/images/shopcart1.jpg">
</div>
<div class="cart_product" title="【送蒸宝】微波炉 25升 手机APP互联 M3-L253C">
<a target="_blank" href="">
【送蒸宝】微波炉 25升 手机APP互联 M3-L253C                                
</a>
<input id="inputyu" type="hidden" value="${product.id}">
</div>
<div class="cart_sku">
<span class="sku_color">阿里智能</span>
<span class="sku_spec">25L</span>
</div>
<div class="cart_price">
<span class="price_new">699.00</span>
</div>
<div class="cart_num">
<div id="divEditNum_141550" class="num_wrap num_wrap_inline  js_num" data-type="product">
<span class="minus">
<span class="inner"></span>
</span>
<input class="num" pattern="\d{0,3}" value="1" type="text">
<span class="plus">
<span class="inner"></span>
</span>
<div class="cart_product_status js_product_status_141550"></div>
</div>
</div>
<div class="cart_total">4886.00</div>
<div class="cart_operation">
<a class="operation_delete js_item_delete" >删除</a>
</div>
</div>
</div>
</div>
<!-- 这是c标签结束 -->
<!-- 团购商品购物车界面 -->
<div class="item_detail item_detail_activity">
<div class="activity_top">
<i class="activity_icon">团购</i>
<p class="activity_desc">商品已经达到团购人数 下单后发货</p>
<div class="activity_handle">
<a class="handle_1 js_show_gift" href="">
 <span class="text">商城周年庆典 买1送1</span>
</a>
<!-- 团购商城入口 -->
<a class="handle_2" target="_blank" href="">
<span class="text">更多团购商品</span>
<i class="icon"></i>
</a>
</div>
<div class="line_bottom"></div>
</div>
<div class="item_sub item_sub_selected">
<div class="cart_invalid">
<div class="btn_invalid">失效</div>
</div>
<div class="cart_choose">
<div class="item_choose_wrap">
<div class="item_choose js_shop_choose"   ></div>
</div>
<div class="line_top"></div>
</div>
<div class="item_sub_detail">
<div class="cart_img">
<img alt="" src="/resources/front/images/27d1e06d27198313A26351_120 120.jpg">
</div>
<div class="cart_product" title="">
<a target="_blank" href="">
【预定最低369】电压力锅 304精钢内胆 一锅双胆 美食烩 可调节口感 MY-QS50B10                                
</a>
</div>
<div class="cart_sku">
<span class="sku_color">桃红色黑色</span>
<span class="sku_spec">5L</span>
</div>
<div class="cart_price">
<span class="price_old">599.00</span>
<span class="price_new">399.00</span>
<div class="active_wrap">
<div class="tag_active js_show_act" data-act-id="593">
更多活动
<i class="tag_arrow"></i>
</div>
</div>
</div>
<div class="cart_num">
<div id="divEditNum_168356" class="num_wrap num_wrap_inline  js_num">
<span class="minus">
<span class="inner"></span>
</span>
<input class="num" data-type="product" value="1" type="text">
<span class="plus">
<span class="inner"></span>
</span>
<div class="cart_product_status js_product_status_168356"></div>
</div>
</div>
<div class="cart_total">798.00</div>
<div class="cart_operation">
<span class="operation_delete js_item_delete" data-type="delete">删除</span>
</div>
</div>
<div class="line_through"></div>
</div>
</div>
<!-- 积分兑换商品栏 -->
<div class="item_detail item_detail_activity">
<div class="activity_top">
<i class="activity_icon ">积分</i>
<p class="activity_desc">积分兑大礼</p>
<div class="activity_handle">
<a class="handle_1 js_show_gift" href="">
<span class="text">积分兑换有大礼</span>
<i class="icon"></i>
</a>
<a class="handle_2" target="_blank" href="">
<span class="text">更多积分商品</span>
<i class="icon"></i>
</a>
</div>
<div class="line_bottom">
</div>
</div>
<!-- 积分商品 -->
<div class="item_sub item_sub_selected">
<div class="cart_invalid">
<div class="btn_invalid">失效</div>
</div>
<div class="cart_choose">
<div class="item_choose_wrap">
<div class="item_choose js_shop_choose" data-type="product" data-itemid=""></div>
</div>
<div class="line_top"></div>
</div>
<div class="item_sub_detail">
<div class="cart_img">
<img alt="" src="/resources/front/images/27d1e06d27198313A26351_120 120.jpg">
</div>
<div class="cart_product" title="">
<a target="_blank" href="">
【预定最低369】电压力锅 304精钢内胆 一锅双胆 美食烩 可调节口感 MY-QS50B10                                
</a>
</div>
<div class="cart_sku">
<span class="sku_color">桃红色黑色</span>
<span class="sku_spec">5L</span>
</div>
<div class="cart_price">
<span class="price_old">599.00</span>
<span class="price_new" dathh="">399.00</span>
<div class="active_wrap">
<div class="tag_active js_show_act" data-act-id="593">
更多活动
<i class="tag_arrow"></i>
</div>
</div>
<div class="active_wrap">
<span class="tag_active tag_active_2">积分狂欢</span>
</div>
</div>
<div class="cart_num">
<div id="divEditNum_168356" class="num_wrap num_wrap_inline  js_num">
<span class="minus">
<span class="inner"></span>
</span>
<input class="num" data-type="product" value="1" type="text">
<span class="plus">
<span class="inner"></span>
</span>
<div class="cart_product_status js_product_status_168356"></div>
</div>
</div>
<div class="cart_total">798.00</div>
<div class="cart_operation">
<span class="operation_delete js_item_delete" data-type="delete">删除</span>
</div>
</div>
<div class="line_through"></div>
</div>
</div>
</div>
</div>
</div>
<!-- 购物车底部 结算等 -->
<div class="cart_bottom_wrap cart_bottom_fixed">
<div class="cart_bottom">
<div class="cart_sum_left">
<div class="cart_sum_choose">
<div class="js_all_choose item_choose_wrap">
<div class="item_choose js_shop_choose"></div>
</div>
全选
</div>
<div class="cart_sum_delete js_sum_delete" data-type="delete">删除</div>
<div class="cart_sum_collect js_sum_delete">移入收藏夹</div>
<div class="cart_sum_invalid js_sum_invalid">清除失效商品</div>
</div>
<div class="cart_sum_right">
<div class="cart_sum_num">
已选商品
<span id="total_products" class="color_f60 js_total_check">0</span>
款
</div>
<div class="cart_sum_price">
<div class="total_price">
合计:
<span class="total_price_inner">
<span class="js_total_price">¥0.00</span>
</span>
</div>
<div class="cut_price">
 (不含运费)
</div>
</div>
<div id="submit" class="cart_sum_to_order js_to_order">去结算</div>
</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
/* 全选操作 */
$(".item_choose_wrap").click(function(){
	/*获取子元素的class属性*/
	var thu=$(this)
	var gy=thu.children();
	var text=gy.attr('class');
	var type=$(".item_choose_wrap ");
	var ghk=$(".cart_total");   /*获取各个商品的总价*/
	var ijk=$("#total_products"); /*获取已选商品个数*/
	var price=$(".js_total_price");  //获取总计
    if(thu.attr('class')=="js_all_choose item_choose_wrap"){
    	if(text=="item_choose js_sum_choose"){
		for(var i=0;i<type.length;i++){
			var sty=type.eq(i).find("div");
			var hy=sty.attr('class');
			sty.removeClass("hy").addClass("item_choose_checked")
			}
		 /*计算总价和商品数量*/
		 var total_price=0;
		 for(var l=1;l<ghk.length;l++){
			 total_price=Number(ghk.eq(l).text())+Number(total_price);
		 }
		 price.text("¥"+total_price+".00")
		 ijk.text(ghk.length-1)
	   }
	    else if(text=="item_choose js_sum_choose item_choose_checked"){
		for(var i=0;i<type.length;i++){
			 var sty=type.eq(i).find("div");
			 var hy=sty.attr('class')
			 sty.removeClass().addClass("item_choose js_sum_choose")
		}
		/*计算总价和商品数量*/
		price.text("¥0.00")
		ijk.text(0)
	} 
    	
  }else if(thu.attr('class')=="item_choose_wrap"){
	  if(text=="item_choose js_sum_choose"){
		  gy.addClass("item_choose_checked");
		  /*计算总价和商品数量*/
		  var total_price=price.text();  //已选商品总的价格
		  var privr=total_price.substring(1,total_price.length-3);   //精准价格
		  var thuop=thu.parent("div");   //获取thu父类
		  var gt=thuop.next();    
		  var hui=gt.children(".cart_total").text();
		  var total_price1=Number(privr)+Number(hui);
		  price.text("¥"+total_price1+".00")
	  }else if(text=="item_choose js_sum_choose item_choose_checked"){
		  gy.removeClass().addClass("item_choose js_sum_choose")
		  var total_price=price.text();  //已选商品总的价格
		  var privr=total_price.substring(1,total_price.length-3);   //精准价格
		  var thuop=thu.parent("div");   //获取thu父类
		  var gt=thuop.next();    
		  var hui=gt.children(".cart_total").text();
		  var total_price1=Number(privr)-Number(hui);
		  price.text("¥"+total_price1+".00")
	  }
  }
   
})

/* 每一条购物车商品计算操作 */
$(document).ready(function(){ 
	var tg=$(".item_choose_checked")    //已经被选中的商品
	var yg=$(".js_all_choose")      //全部被选中按钮
	var hj=$(".item_io_choose")     //商城普通商品按钮
	var hk=$(".js_total_check")     //拿到已选商品多少款
	var child=yg.eq(0).find("div");
	var child1=yg.eq(1).find("div")
	 
	if(child.attr('class').equals("")){
		alert("建立")
	}
})

/* 这是增加的判断 */
$(".plus").click(function(){
	var gg=$(this);
	var add=gg.prev();
	var value=parseInt(add.val())+1;
	add.val(value);
	var pre=gg.parent("div")
	var pare=pre.parent("div")
	var parto=pare.parent("div").prev();
	var triomxs=parto.children(".item_choose_wrap").find("div");   //找到是否勾选状态
	var tex=pare.next()    /*获取商品总价格*/
	var price=$(".js_total_price");  //获取总价
	var total_price=price.text().substring(1,total_price.length-3);
	alert(total_price);
	/*获取商品单价*/
	var price=pare.prev();
    var Oneprice=price.children(".price_new");
    
    var priceADD=Number(Oneprice.text())+Number(tex.text());
    tex.text(priceADD);
    
    /*计算总价和商品数量*/
    if(triomxs.attr('class')=="item_choose js_sum_choose item_choose_checked"){
    	var totrl=Number(total_price)+Number(Oneprice.text())
    	 
    }
})

 /* 这是减少的判断 */
$(".minus").click(function(){
	var tg=$(this)
	var jian=tg.next();
	var num=jian.val();
	if(num>0){
	jian.val(num-1)
	
	var pre=tg.parent("div")
	var pare=pre.parent("div")
	var tex=pare.next()    /*获取商品总价格*/
	var price=pare.prev();  /*获取商品单价父类对象*/
    var pei=price.children(".price_new");  /*获取商品单价*/
    var text1=Number(tex.text())-Number(pei.text());
    tex.text(text1);
	
	}else{
		tex.next(0)
	}
})

 


</script>
</body>
</html>
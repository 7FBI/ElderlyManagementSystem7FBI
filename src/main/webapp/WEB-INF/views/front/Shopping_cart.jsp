<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/resources/front/css/Cart.css">
<title>购物车</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link type="text/css" rel="stylesheet" href="/resources/front/css/reset.css">
<link type="text/css" rel="stylesheet" href="/resources/front/css/carts.css">

<link href="/resources/front/css/self_exchange/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="/resources/front/css/self_exchange/demo.css"
	rel="stylesheet" type="text/css" />

<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.min.js"></script>
</head>
<body>
<%-- <jsp:include page="Storedetailedheader.jsp" /> --%>
<jsp:include page="Self_header.jsp" />
<!-- 购物车头部 -->
<div class="cart_top">
<div class="cart_top_inner">
<h2 class="cart_title">购物车</h2>
</div>
</div>
<!-- 购物车部分 -->
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_a" class="shopChoice">
                <label for="shop_a" class="shop"></label>
            </div>
            <div class="shop_name">
               <i class="icon_shop icon_mall"></i>
                             宜家官网商城
            </div>
        </div>
        <div class="order_content">
        <c:forEach items="${products }" var="product">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_2" class="son_check">
                    <label for="checkbox_2"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${product.producturl}" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">${product.pname}<br>${product.pdescription}</a></div>
                </li>
                <li class="list_info">
                    <input id="inputyu" type="hidden" value="${product.id}">
                    <p>规格：${product.productstype2}</p>
                    <p>尺寸：${product.size}</p>
                </li>
                <li class="list_price">
                    <p class="price">￥${product.price}</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="${product.cartcount}" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥${product.price*product.cartcount}</p>
                </li>
                <li class="list_op">
                    <p class="del"> 
                     <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                    </p>
                </li>
            </ul> 
            </c:forEach>
        </div>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_b" class="shopChoice">
                <label for="shop_b" class="shop"></label>
            </div>
            <div class="shop_name">
               <i class="activity_icon">团购</i>
               <p class="activity_desc">商品已经达到团购人数 下单后发货</p>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_4" class="son_check">
                    <label for="checkbox_4"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="./images/4.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥1980</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥1980</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_5" class="son_check">
                    <label for="checkbox_5"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="./images/5.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                </li>
                <li class="list_info">
                    <input id="inputyu" type="hidden" value="5555">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥480</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥480</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
        </div>
    </div>

    <!-- <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                店铺全选
                <input type="checkbox" id="shop_c" class="shopChoice">
                <label for="shop_c" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">卷卷旗舰店</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_8" class="son_check">
                    <label for="checkbox_8"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="./images/1.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥1980</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥1980</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_9" class="son_check">
                    <label for="checkbox_9"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="./images/1.png" alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">夏季男士迷彩无袖T恤圆领潮流韩版修身男装背心青年时尚打底衫男</a></div>
                </li>
                <li class="list_info">
                    <p>规格：默认</p>
                    <p>尺寸：16*16*3(cm)</p>
                </li>
                <li class="list_price">
                    <p class="price">￥480</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <a href="javascript:;" class="reduce reSty">-</a>
                        <input type="text" value="1" class="sum">
                        <a href="javascript:;" class="plus">+</a>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥480</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
        </div>
    </div> -->
    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:;">结算</a></div>
        </div>
    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="/front/shoppingCart/delectStormproducts.action?id=${product.id}&user_id=${product.user_id}" class="dialog-sure">确定</a><a href="javascript:;" class="dialog-close">关闭</a></div>
</section>
<script type="text/javascript" src="/resources/front/oldman/jquery.min.js"></script>
<script type="text/javascript" src="/resources/front/js/carts.js"></script>
<script type="text/javascript">
 $(".calBtn").click(function(){
     var products_id;
	 var products_num;
	 /*获取总价 toprice*/
	 var gt=$(".total_text");
	 var toprice=gt.text();
	 var sub=$("label")
	 
	 for(var i=0;i<sub.length;i++){
		 var pre=sub.eq(i).parent();
		 if(sub.eq(i).attr('class')=="mark"&&pre.attr('class')=="list_chk"){
			 var hung=pre.parent();
			 var poi=hung.find(".list_info").children("#inputyu").val(); /* 这里取到商品ID */
			/*  var priceto=hung.find(".list_price").children().text();  /* 拿到价格 */  
			 var numtoal=hung.find(".list_amount").find(".sum").val();  /*拿到个数*/
			 alert(poi)
			 alert(numtoal)
			 var yyyy={num:total}
			 var xxxx={id:poi}
			 products_id.push(xxxx);    
			 products_num.push(yyyy);    
		 } 
	 }
	 if(products_id.length>1){
		 window.location.href="/front/orders/addOrder?pid="+products_id+"&num="+products_num+"&price"+toprice;
	 }
	 else if(products_id.length==1){
		 window.location.href="/front/orders/addOneOrder?pid="+products_id+"&num="+products_num+"&price"+toprice;
	 }
	 else{
		 alert("你没有选择你想购买的商品!")
	 }     
 })
</script>
 </body>
 </html>
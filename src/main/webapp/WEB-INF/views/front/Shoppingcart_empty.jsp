<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车—空</title>
<style type="text/css">
body {
    color: #333;
    font: 12px/1.5 \5FAE\8F6F\96C5\9ED1, tahoma,arial,'Hiragino Sans GB',\5b8b\4f53,sans-serif;
}
input, select, button, h1, h2, h3, h4, h5, h6 {
    font-size: 100%;
    font-family: inherit;
}
body, h1, h2, h3, h4, h5, h6, hr, p, blockquote, dl, dt, dd, ul, ol, li, pre, form, fieldset, legend, button, input, textarea, th, td {
    margin: 0;
    padding: 0;
    vertical-align: baseline;
}
a {
    text-decoration: none;
    color: #333;
}
.cart_wrap {
    position: relative;
    padding-bottom: 70px;
}
 div{block;}
 .cart_wrap_empty .cart_top_empty{
    display:block;
 }
 .cart_top_empty{
   background-color: #fff;
   border-bottom: 1px solid #e9e9e9;
   margin-bottom: 20px;
 }
 .cart_top .cart_top_inner{
  width: 1200px;
  margin: 0 auto;
  font-weight: normal;
 }
 .cart_top .cart_title{
  float: left;
  font-size: 32px;
  line-height: 80px;
  color: #333;
  font-weight: normal;
 }
 .cart_empty{
  text-align: center;
    border: 1px solid #e6e6e6;
    padding: 60px 0;
    background-color: #fff;
    width: 1200px;
    margin: 0 auto;
 }
 .cart_empty .icon_cart{
    width: 84px;
    height: 72px;
    margin: 0 auto;
    background:url(/resources/front/images/cart_sprite.png) no-repeat;
    display: inline-block;
 }
 .cart_top:after,.item_detail:after, .activity_top:after, .package_top:after{
    content: ".";
    display: block;
    height: 0;
    clear: both;
    overflow: hidden;
 }
 .cart_empty .hinter{
   font-size: 14px;
   line-height: 14px;
   color: #999;
   margin-top: 40px;
 }
  .cart_empty .cart_btn{
    margin-top: 20px;
    font-size: 0;
  }
  .cart_empty .cart_btn a:first-child{
   margin-right:5px;
  }
  .cart_empty .cart_btn a {
   font-size: 12px;
   display: inline-block;
   width: 88px;
   height: 28px;
   line-height: 28px;
   border: 1px solid #c8c8c8;
   margin-left: 5px;
   color:#333;
  }
</style>
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="Self_header.jsp"></jsp:include>
	<!-- 主要内容 -->
	<div class="cart_wrap cart_wrap_empty">
	<div class="cart_top cart_top_empty">
	<div class="cart_top_inner">
	<h2 class="cart_title">购物车</h2>
	</div>
	</div>
	<div class="cart_empty">
	<div class="icon_cart"></div>
	<div class="hinter">
     您的购物车还是空的，去看看心仪的商品吧~
	</div>
	<div class="cart_btn">
	<a href="/front/products/selectAllProducts">去购物</a>
	<a href="/gotoFront/SelfCenter_Collection">去收藏夹</a>
	</div>
	</div>
	</div>
	<jsp:include page="EC_footer.jsp"></jsp:include>
</body>
</html>
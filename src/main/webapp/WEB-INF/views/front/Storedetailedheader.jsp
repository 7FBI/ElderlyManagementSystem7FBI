<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情页面头部</title>
<style type="text/css">
 body{margin:0;color:#000;padding:0;font-family:Arial;}
 a{text-decoration:none;color:#333;}
 ol, ul {
    list-style: none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
}
 .header{min-width:1200px;height:44px;background:#0092d8;position:relative;z-index:50;}
 .header .inner{overflow: hidden;margin:0 auto;position:relative;}
 .header::after, .header .inner::after, .inner_wrap::after {
    visibility: hidden;
    display: block;
    font-size: 0;
    content: " ";
    clear: both;
    height: 0;
}
.site_logo{float:left;width:120px;height:44px;background-repeat: no-repeat;}
.header .nav_wrap {
    float:left;
}
.header .nav .item {
    float: left;
}
.header .nav .item_on .item_tit {
    color: #fff;
}
.header .nav .item_tit {
    display: block;
    padding: 0 30px;
    font-family: 微软雅黑;
    height: 44px;
    line-height: 44px;
    color: #a3c3e6;
    font-size: 12px;
}
.header .opt_wrap{position:absolute;top:0;right:0;}
.header .opt_wrap .search_wrap {
    position: absolute;
    top: 0;
    right: 0;
    width: 75px;
    background: none;
    height: 44px;
    transition: width .5s;
    -webkit-user-select: none;}
 .header .opt_wrap .opt{float:left;position: relative;background: none;height: 44px;cursor:pointer;}
 .header .icon_opt{
  display: block;
  width: 20px;
  height: 20px;
  margin: 12px auto;
 }
 .header .opt_wrap .icon_cart_small{float:left;background-image:url(/resources/front/images/index_sprite.png);background-position:-146px -215px;cursor:pointer;background-repeat: no-repeat;}
.header .opt_wrap .opt_user_login_fai{width:86px;}
.header .opt_wrap .opt {
    float: left;
    position: relative;
    background: #fff;
    padding: 0;
    background: none;
    height: 44px;
    cursor: pointer;
}
.header .opt_wrap .icon_user_main {
    float: left;
    width: 20px;
    height: 20px;
    cursor: pointer;
    background-position: -35px -216px;
    margin-left: 20px;
    background-image:url(/resources/front/images/index_sprite.png);
    background-repeat: no-repeat;
}
.header .icon_opt {
    display: block;
    margin: 12px auto;    
}
.header .opt_wrap .user_login_name {
    display: block;
    float: left;
    margin-left: 2px;
    cursor: pointer;
    line-height: 44px;
    color: #fff;
}
.header .opt_wrap .opt_search {
    width: 45px;
}
.header .opt_wrap .opt{
 float: left;
 position: relative;
 padding: 0;
 background: none;
 height: 44px;
 cursor: pointer;
}
.header .opt_wrap .opt_search_hover .search_wrap {
    width: 250px;
}
.header .opt_wrap .search_wrap{
  position: absolute;
  top: 0;
  right: 0;
  background: none;
  height: 44px;
  transition: width .5s;
  -webkit-user-select: none;
}
.header .opt_wrap .search_wrap input {
    height: 44px;
    display: block;
    width: 183px;
    line-height: 44px;
    padding: 0 10px 0 35px;
    border: 0 none;
    border-bottom: 1px solid #e0e0e0;
    border-radius: 0;
}
.header .opt_wrap .search_wrap .icon_opt {
    margin: 0;
    position: absolute;
    right: 30px;
    cursor: pointer;
}
.header .icon_opt {
    display: block;
    width: 20px;
    height: 20px;
}
.header .opt_wrap .opt_search_hover .icon_search{
  top: 12px;
  left: 10px;
  background:url(/resources/front/images/index_sprite.png) no-repeat;
  background-position: -66px -215px;
}
.header .opt_wrap .opt_wx {
    width: 65px;
}
.header .opt_wrap .icon_wx {
    background:url(/resources/front/images/index_sprite.png) no-repeat;
    background-position: -120px -215px;
}
.header .icon_opt {
    display: block;
    width: 20px;
    height: 20px;
    margin: 12px auto;
}
</style>
</head>
<body style="overflow-x:hidden;">
<div class="header">
<div class="inner">
<a class="site_logo" href="" title="商城标志"></a>
<div class="nav_wrap">
<ul id="topNavWrap" class="nav">
<li class="item item_on">
<a class="item_tit" target="_blank" href="">老年商城</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">孝和集团</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">服务中心</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">个人中心</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">积分商城</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">展示频道</a>
</li>
<li class="item">
<a class="item_tit" target="_blank" href="">展示频道</a>
</li>
</ul>
</div>
<div id="optWrap" class="opt_wrap">
<!-- 搜索框 -->
<div class="opt opt_search opt_search_hover">
<div class="search_wrap">
<form action="" style="display:none" onmouseout="mut()">
<input id="keyword" name="keyword" autocomplete="off" type="search" placeholder="11.11现货预约开启">
</form>
<i class="icon_opt icon_search" onmouseover="mver()"></i>
</div>
</div>
<script type="text/javascript">
 var crg=document.getElementById("keyword");
 function mver(){
	 var par=crg.parentNode;
	 par.style.display="block";
 }
 function mut(){
	 var par=crg.parentNode;
	 par.style.display="none";
 } 
</script>
<!-- 购物车 -->
<div class="opt opt_wx">
<i class="icon_opt icon_wx"></i>
</div>
<div class="opt opt_cart" >
<i class="icon_opt icon_cart_small"></i>
<span class="header_cart_num js_header_cart_num"></span>
</div>
<div id="unloginStatus" class="opt opt_user opt_user_login_fail" style="display:block;margin-right:20px;">
<i class="icon_opt icon_user_main"></i>
<span class="user_login_name">登录</span>
</div>
</div>

</div> 

</div>
<a class="poeration_time" style="width:100%;display:block;background:rgb(146,32,203)none repeat scroll 0% 0%;" target="_blank" title="" >
<img alt="" src="/resources/front/images/f815052a5ea6.png@100Q.png" style="display:block;margin:0 auto;">
</a>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=1024" />
<meta name="baidu-site-verification" content="3ztG4oI0ku" />
<meta name="keywords" content="宜嘉老年健康中心" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">

</head>
<body id="ruifoxHome">
	<jsp:include page="index_header.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />


	<!-- 查找最顶级栏目  -->
	<div class="layui-carousel" id="test1">
		<div carousel-item>
			<div style="background:url(/resources/front/images/banner_bg3.jpg)">aaa1</div>
			<div style="background:url(/resources/front/images/banner_bg4.jpg)">aaa2</div>
			<div style="background:url(/resources/front/images/banner_bg7.jpg)">aaa3</div>
		</div>
	</div>
<section id="cases"></section>	
	<section id="news">
	<div class="cat_title wrapper">
		<h2>
			新闻<strong>News</strong>
		</h2>
		<p>
			关注我们、关注前沿<br /> Recently is to do ...
		</p>
		<a href="news/index.htm" class="more">MORE+</a>
	</div>
	<div class="newsdata">
		<div class="newsad">
			<img src="images/news.png" alt="html5" width="320" height="485" />
		</div>
		<ul>

			<li><a href="news/hynews/23.html"><img
					src="uploads/131102/1-131102210K4H1.jpg" width="90" height="90"
					alt="网络营销最重要的一步，你做到了吗？" /></a>
				<div class="newslist">
					<a href="news/hynews/23.html" title="网络营销最重要的一步，你做到了吗？">网络营销最重要的一步，你做到了吗？</a>
					<span>UPTATED:2013/11/02</span>
					<p>很多人总是会问，为什么我的网站转化率总是居高不下？也许你的网站很美观大气，功能很完善，入口非常便捷丰富，但是就是转化不好！原因只在于，你....</p>
				</div></li>
			<li><a href="news/hynews/9.html"><img
					src="uploads/131101/1-1311012213054G.png" width="90" height="90"
					alt="百度免费＂发武器＂ 布局移动互联网" /></a>
				<div class="newslist">
					<a href="news/hynews/9.html" title="百度免费＂发武器＂ 布局移动互联网">百度免费＂发武器＂
						布局移动互联网</a> <span>UPTATED:2013/11/01</span>
					<p>中广网北京9月3日消息
						据经济之声《天下公司》报道，说起百度，恐怕听众朋友们都不会陌生。这家创办于2001年1月1日的中文互联网搜索公司，经过十余年....</p>
				</div></li>
			<li><a href="news/hynews/8.html"><img
					src="uploads/131101/1-13110122115U92.png" width="90" height="90"
					alt="企业网站已经悄悄的转变成了一种网络营销应用" /></a>
				<div class="newslist">
					<a href="news/hynews/8.html" title="企业网站已经悄悄的转变成了一种网络营销应用">企业网站已经悄悄的转变成了一种网络营销应用</a>
					<span>UPTATED:2013/11/01</span>
					<p>当是你最后一次使用的电话簿找到的产品或服务？如果你有一台电脑，平板电脑或智能手机的技术和访问，甚至有基本的了解，这可能是很难记住，当你拖....</p>
				</div></li>
			<li><a href="news/gsnews/7.html"><img
					src="uploads/131031/1-1310312352421V.jpg" width="90" height="90"
					alt="html5+js技术网站应用案例：三盛·都会城网站建设" /></a>
				<div class="newslist">
					<a href="news/gsnews/7.html" title="html5+js技术网站应用案例：三盛·都会城网站建设">html5+js技术网站应用案例：三盛·都会城网站建设</a>
					<span>UPTATED:2013/11/01</span>
					<p>三盛·都会城作为三盛地产在成都的全资开发项目，入主龙泉经开区，承载三盛地产在成都建立品牌的任务，三盛·都会城总投入近40亿元，前期将投入3亿重....</p>
				</div></li>
		</ul>
	</div>
	</section>
	<jsp:include page="footer.jsp" flush="true" />

	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>

	<script type="text/javascript">
layui.use('carousel', function(){
  var carousel = layui.carousel;
  carousel.render({
    elem: '#test1'
    ,width: '100%' 
    ,height:'450px'
    ,arrow: 'always' 
    //,anim: 'updown' //�л�������ʽ
  });
});

layui.use('layer',function() { //独立版的layer无需执行这一句
	var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
	$("#sumbit").click(
					function() {
						layer.open({
									type : 1,
									title : false //不显示标题栏
									,
									closeBtn : false,
									offset: [180,0],
									shade : 0.8,
									area : '580px',
									id : 'LAY_layuipro' //设定一个id，防止重复弹出
									,
									btn : [ '取消'], 
									btnAlign : 'c',
									moveType : 1 //拖拽模式，0或者1
									,
									content : '<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">'
										    +'<legend>用户帐号</legend></fieldset>'
										    +'<form style="margin-top: 25px; padding: 0 15px;" id="f" class="layui-form layui-form-pane" action="">'
											+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">帐号:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="username" autocomplete="off" placeholder="请输入帐号" class="layui-input" style="width: 200px;float: left;"></div></div>'
											+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">密码:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="password" name="password" autocomplete="off" placeholder="请输入密码" class="layui-input" style="width: 200px;float: left;"></div></div>'
											+ '<div class="layui-form-item" style="width: 500px;"><img code="" class="layui-form-label" src="/code/front/getCode" style="width: 110px" /><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="code" autocomplete="off" placeholder="请输入验证码" class="layui-input" style="width: 200px;float: left;"></div></div>'
											+ '<div class="layui-form-item" style="width: 500px;"><a href="/gotoFront/register">未有帐号?</a></div>'
											+ '<div class="layui-form-item"><div class="layui-input-block"><button id="loginBtn" type="button" class="layui-btn layui-btn-primary layui-btn-small" >登录</button></div></div>'
											+'</form>',
									success : function(layero) {
										//var btn = layero.find('.layui-layer-btn');
										$(document).on("click","#loginBtn",function(){
											if(formInputNoNull()){
												$.ajax({
													type:'post',
													url:'/front/oldUsers/login',
													data:$("#f").serialize(),
													success:function(data){
														if (data=="true") {
															location.reload()
														}else{
															alert(data);
														}
													}
												})
												
											}else{
												rmvErr()
											}
												
										})
										
											
									}
								});
					})
})
	$(document).on("click","img[code]",function() {
		var m = $(this);
		m.attr("src", "/code/front/getCode" + "?" + new Date().getTime());
	})
	
	
</script>

	<script type="text/javascript">
//<![CDATA[
	//Nav Start
	$("header>div>nav>ul>li>a").hover(function(){
		$(this).parent().stop(false,true).animate({"background-position-x":"6px",opacity:"0.7"},{duration:"normal", easing: "easeOutElastic"});
	},function(){
		$(this).parent().stop(false,true).animate({"background-position-x":"10px",opacity:"1"},{duration:"normal", easing: "easeOutElastic"});
	});
	<!--- 首页 ---->
	$('.ad_img,#banner_ctr,#client').pngFix();
	$(window).scroll(function(){
		$(this).scrollTop()>80?$("#navbg").stop(false,true).animate({opacity:"1"},"normal"):$("#navbg").stop(false,true).animate({opacity:"0.8"},"normal");
	});
	//Banner Start
	
	//Banner End
	//Cases Start
	if($.support.transition){
		$("#cases>ul>li").hover(function(){
			$("img",this).stop(false,true).transition({
				perspective: '300px',
				rotateY: '180deg',
				opacity: '0'
			});
			$("p",this).css({display:'block',opacity:'0',rotateY: '-180deg'}).stop(false,true).transition({
				perspective: '300px',
				rotateY: '0deg',
				opacity: '1'
			});
		},function(){
			$("img",this).show().stop(false,true).transition({
				perspective: '300px',
				rotateY: '0deg',
				opacity: '1'
			});
			$("p",this).stop(false,true).transition({
				perspective: '300px',
				rotateY: '180deg',
				opacity: '0'
			});
		});
	}else{
		$("#cases>ul>li").hover(function(){
			$("img",this).stop(false,true).slideUp("fast");
			$("p",this).stop(false,true).slideDown("fast");
		},function(){
			$("img",this).stop(false,true).slideDown("fast");
			$("p",this).stop(false,true).slideUp("fast");
		});
	}
	$("#cases>ul>li>img").lazyload({effect:"fadeIn",failurelimit:10});
						$("#gotop").click(function(){$('body,html').animate({scrollTop:0},500);})
	
	
		

//]]>
</script>
</body>
</html>

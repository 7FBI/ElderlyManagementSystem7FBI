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
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css" media="all">
<link rel="stylesheet" href="/resources/front/css/style.css"  type="text/css" media="all" />
<!--  -->
<link href="/resources/css/frontedu.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body id="ruifoxHome">
<%@ include file="header.jsp" %>
<!-- 查找最顶级栏目  -->
<div style="height:80px"></div>
<div class="layui-carousel" id="test1">
  <div carousel-item>
    <div style="background:url(/resources/front/images/banner_bg1.jpg)">aaa1</div>
    <div style="background:url(/resources/front/images/banner_bg2.jpg)">aaa2</div>
    <div style="background:url(/resources/front/images/banner_bg3.jpg)">aaa3</div>
  </div>
</div>

<section id="cases">
  <div class="cat_title wrapper">
    <h2>案例<strong>CASES</strong></h2>
    <p>我们的作品，他们的故事<br/>
      Our work, their stories </p>
    <a href="case/index.htm"  class="more">MORE+</a> </div>
  <ul>
  	<li><img src="/resources/front/images/01.png"   width="240" height="152" alt="成都城市设计研究中心"/>
      <p> <strong>成都城市设计研究中心</strong>成都市城市设计研究中心（英文缩写：CDUDC）是以城市设计和研究为主要方向的研究性机构，提....<br/>
        <a href="case/gov/22.html"  class="btn_blue">查看品牌故事</a>
        <a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'" target="_blank" class="openurl">访问品牌网站</a>
      </p>
    </li>
<li><img src="/resources/front/images/02.png" width="240" height="152" alt="中铁二局装饰装修工程有"/>
      <p> <strong>中铁二局装饰装修工程有</strong> 中铁二局集团装饰装修工程有限公司为中铁二局集团有限公司的全资公司，创建于1985年，国家....<br/>
        <a href="case/gov/21.html" class="btn_blue">查看品牌故事</a>
        <a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'"  target="_blank" class="openurl">访问品牌网站</a>
      </p>
    </li>
<li><img src="/resources/front/images/03.png"  width="240" height="152" alt="优品道控股"/>
      <p> <strong>优品道控股</strong>优品道控股」是中国具有代表性的不动产投资、发展和经营企业，致力于中国优品生活的缔造....<br/>
        <a href="case/qiye/20.html"  class="btn_blue">查看品牌故事</a>
        <a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'"  target="_blank" class="openurl">访问品牌网站</a>
      </p>
    </li>
<li><img src="/resources/front/images/04.png"   width="240" height="152" alt="新象集团官方网站"/>
      <p> <strong>新象集团官方网站</strong>新象建材有限公司是一家集木地板、室内装饰木门等系列装饰材料的研发设计、物流营销、售....<br/>
        <a href="case/shangwu/19.html"  class="btn_blue">查看品牌故事</a>
        <a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'"  target="_blank" class="openurl">访问品牌网站</a>
      </p>
    </li>
    <li><img src="/resources/front/images/04.png"   width="240" height="152" alt="新象集团官方网站"/>
      <p> <strong>新象集团官方网站</strong>新象建材有限公司是一家集木地板、室内装饰木门等系列装饰材料的研发设计、物流营销、售....<br/>
        <a href="case/shangwu/19.html"  class="btn_blue">查看品牌故事</a>
        <a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'"  target="_blank" class="openurl">访问品牌网站</a>
      </p>
    </li>

  </ul>
</section>

<!--新闻部分  -->
<div id="mynews">
<div class="indexnews">
  <div class="col-xs-3"><font size="12px">新闻<strong>News</strong></font></div>
    <!-- <div style="float: left;margin-top: 25px;"><p>关注我们、关注前沿<br/>
      Recently is to do ...</p></div> -->
  <div class="col-md-offset-6 col-md-1" style="margin-top: 25px;font-size: 18px;"> <a href="${pageContext.request.contextPath}/front/edu/alledunews.action?"  class="more">MORE+</a> </div>  
   </div>
 <!--  <div class="cat_title wrapper">
   </div> -->
  <div class="newsdata">
    <div class="newsad"> 
    
    <!--图片轮播  -->
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox"
				style=" padding-bottom: 6px;">
				<div class="item active">	
						 <img src="/files${leftpicture.eduurl }"  alt="html5" width="360" height="100%" />     
					
					<!-- <div class="carousel-caption">...</div> -->
				</div>	
				<c:forEach items="${hotnews }" var="hotnews">
				<div class="item">
						
						 <img src="/files${hotnews.eduurl }"  alt="html5" width="360" height="100%" />     
					
					<!-- <div class="carousel-caption">...</div> -->
				</div>
				 </c:forEach> 			
			</div>
			
			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	
    </div>
    <ul>
      <c:forEach items="${hotnews }" var="hotnews">
      <li> <a href="${pageContext.request.contextPath}/front/edu/querydudetailbyid.action?id=${hotnews.id}" >
          <img src="/files${hotnews.eduurl }"  width="90" height="90" alt="新闻图片"/></a>
        <div class="newslist"> 
           <a href="${pageContext.request.contextPath}/front/edu/querydudetailbyid.action?id=${hotnews.id}" title="百度免费＂发武器＂ 布局移动互联网">${hotnews.edutitle }</a>
           <span><fmt:formatDate value="${hotnews.edutime }" pattern="yyyy-MM-dd"/></span>
           <p>${hotnews.educontent }........</p>
        </div>
      </li>
      </c:forEach>

    </ul>
  </div>
</div>

<%-- <%@ include file="footer.jsp"%> --%>
<jsp:include page="footer.jsp" flush="true"/>

<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
<script src="/resources/unity/jquery/jquery-3.2.0.js" type="text/javascript"></script>
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

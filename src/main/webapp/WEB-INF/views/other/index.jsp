<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
<!--  -->
<link href="/resources/css/frontedu.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!--公告  -->	
<script type="text/javascript"
	src="/resources/js/indexactivities.js"></script>
 <link rel="stylesheet" href="/resources/front/css/active/style.css"/>	
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style type="text/css">
html ,body{
background-color: #dbdbdb;
}
</style>
<!--  -->

<!--  -->
</head>
<body id="ruifoxHome">
	<%-- <jsp:include page="/index_header.jsp" flush="true" />
	<jsp:include page="/header.jsp" flush="true" /> --%>
	<!-- 查找最顶级栏目  -->
	<div class="layui-carousel" id="test1" >
		<div carousel-item>
			<div style="background:url(/resources/front/images/banner_bg3.jpg)">aaa1</div>
			<div style="background:url(/resources/front/images/banner_bg4.jpg)">aaa2</div>
			<div style="background:url(/resources/front/images/banner_bg7.jpg)">aaa3</div>
		</div>
	</div>
	
	
<!-- 活动部分 -->
 <div class="news-all part-all">
		<div class="part-title">
			<div class="col-xs-3"><font size="12px">信息 Message</font></div>
		</div>
		<div class="news-content ">
<!--图片  -->	
<div id="photo-list"> 
	 <ul id="scroll">  
			<!-- <li><a href="#"><img
					src="../../../resources/upload/front/ad5.jpg" width="100px"
					height="100px" alt="" /></a></li> -->
			<c:forEach items="${allActivitiyAndPicture}" var="allActivitiyAndPicture">
			<li>
			  <a href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}">
		        <img src="${allActivitiyAndPicture.activeimageurl}" width="200px" height="150px"/></a>
			</li>
			</c:forEach>
		</ul>
	</div>
	<!-- 	<a href="/gotoFront/indexactivity">详情</a> -->
<!--  -->
<div class="activitycontent">	
        <ul>
				<c:forEach items="${allActivitiyAndPicture }" var="allActivitiyAndPicture">
					<li>
					  <div class="news-content-cont">
							<a href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}">
								<font size="4px" color="#14a8e7">${allActivitiyAndPicture.activitytitle}</font>
							</a>
							<p style="float: right;"><fmt:formatDate value="${allActivitiyAndPicture.activitystarttime}" pattern="yyyy-MM-dd"/>  ~ <fmt:formatDate value="${allActivitiyAndPicture.actitvityendtime}" pattern="yyyy-MM-dd"/></p> 
						</div>							 
					  </li>					
					</c:forEach>
				</ul>
		 </div>
		 <div class="moreactivity">
		   <a href="${pageContext.request.contextPath}/front/activity/allActive?">更多</a>
		 </div>		
	</div> 
		
	<!--公告  -->
		<div class="info_content ">
		<span><a href="/front/frontinformation/selectall">更多公告></a></span>
		</div>
				<ul class="info_content_ul">
				<c:forEach items="${list }" var="list">
					<li class="info_content_li">
						<a href="/front/frontinformation/selectByKey?id=${list.id}">
						    <div class=" info_content_li_title">
						    	<span class="news-right-title">&nbsp;&nbsp;<em>.</em>&nbsp;&nbsp;<nobr>${list.newstitle }</nobr></span>
						    </div>
						    <div  class=" info_content_li_time">
										<p class="news-right-time"><fmt:formatDate value="${list.sendtiem}" pattern="yyyy-MM-dd" /></p>
								 </div>	
						
						</a>
					</li>
					</c:forEach>
				</ul>
			
		</div> 
	




<!--新闻部分  -->

<div id="mynews">
<div class="indexnews">
  <div class="col-xs-3"><font size="12px">新闻  News</font></div><br>
    <!-- <div style="float: left;margin-top: 25px;"><p>关注我们、关注前沿<br/>
      Recently is to do ...</p></div> -->
  <div class="col-md-offset-6 col-md-1" style="margin-top: 25px;font-size: 18px;"> <a href="${pageContext.request.contextPath}/front/edu/alledunews.action?"  class="more">MORE+</a> </div>  
   </div>
 <!--  <div class="cat_title wrapper">
   </div> -->
  <div class="newsdata">
    <div class="newsad" > 
    
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
				<div class="item" >
						
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

  <div id="footerlink" style="position:absolute;top:1800px;">
			<nav class="wrapper">
				<a href="index.htm" >首页</a>
				<a href="about/index.htm">关于</a>
				<a href="service/index.htm">服务</a>
				<a href="case/index.htm" >案例</a>
				<a href="fangan/index.htm">方案</a>
				<a href="contact/index.htm">联系</a>
				<a href="news/index.htm">新闻</a>
				<a id="gotop" href="javascript:void(0)">top</a>
			</nav>
		</div>
		<!-- 漂浮意见反馈 返回顶部 -->
<div class="tooubar">
<a href="/front/feedback/topfeedbackOiduser.action" class="toolbar-item toolbar-item-feedback"></a>
<a href="javascript:scroll(0,0)" id="top" class="toolbar-item toolbar-item-top"></a>
</div>
  <div id="footerinfo" style="position:absolute;top:1860px;">
    <div class="wrapper">
				<h2>联系我们<strong>Contact</strong></h2>
<p>
                                        <a target="_blank" href="javascript:if(confirm('http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes'))window.location='http://wpa.qq.com/msgrd?v=3&uin=429592913&site=qq&menu=yes'"><img border="0" src="images/qq.png"  alt="点击这里给我发消息" title="点击这里给我发消息"/></a><br/>
					电话：400 8888 8888<br/>
                                        传真：400 8888 8888<br/>                                       
                                        电子邮件：admin@unn114.com<br/>
					公司地址：重庆市某某某某某某某某某<br/>
					备案编号：蜀ICP备000000001<br/>
					Copyright © 2013 - 2014 luidea.com All rights reserved. 
				</p>
				
			</div>
    
  </div>


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

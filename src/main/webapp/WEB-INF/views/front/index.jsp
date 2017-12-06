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
<link rel="stylesheet" href="/resources/css/indexstyle.css" media="all">
<!--  -->
<link href="/resources/css/frontedu.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<!--公告  -->
<script type="text/javascript" src="/resources/js/indexactivities.js"></script>
<link rel="stylesheet" href="/resources/front/css/active/style.css" />
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/resources/js/indexactivity.js"></script>

<!--  -->

<!--  -->
</head>
<body id="ruifoxHome">
	<jsp:include page="index_header.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />
	<br><br><br>
	<!-- 查找最顶级栏目  -->
	<div class="layui-carousel" id="test1">
		<div carousel-item>
			
			<div style="background:url(/resources/front/images/index2.jpg)"></div>
			<div style="background:url(/resources/front/images/index3.jpg); background-repeat: no-repeat;
	              no-repeat: center fixed;background-size: contain;background-size: 100% 100%;"></div>
			<div style="background:url(/resources/front/images/index4.jpg);background-repeat: no-repeat;no-repeat: center fixed;
	              background-size: contain;background-size: 100% 100%;"></div>
			<!-- <div style="background:url(/resources/front/images/index5.jpg)">aaa3</div> -->
		</div>
	</div>
	<!--  -->
	<!--  -->
	<div class="all">
		<div class="all_center">
			<!--活动  -->
			<div class="all_center_left">
				<div class="imgs">
					<img alt="" src="/resources/upload/front/activity.png" width="100%"
						height="100%">
				</div>
				<div class="activieimgs">
					<!--活动中间部分  -->
					<div style="width: 100%;">
						<div class="activietitle">活动掠影</div>
						<div class="moreactivity">
							<a
								href="${pageContext.request.contextPath}/front/activity/allActive?">更多</a>
						</div>
					</div>
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

					<!--  -->
				</div>
			</div>
			<!-- 通知 -->
			<div class="all_center_right">
				<div class="infotitle">消息通知</div>
				<div class="info">
					<ul>
						<c:forEach items="${list }" var="list">
							<li><a
								href="/front/frontinformation/selectByKey?id=${list.id}">
									<div class=" info_content_li_title">
										<span class="news-right-title">&nbsp;&nbsp;<em>.</em>&nbsp;&nbsp;<nobr>${list.newstitle }</nobr></span>
									</div>
									<div class="info_content_li_time">
									
											<fmt:formatDate value="${list.sendtiem}" pattern="yyyy-MM-dd" />
									
									</div>

							</a></li>
						</c:forEach>
						<span style="float: right;margin-bottom: 4px;margin-right: 4px;"><a
						href="/front/frontinformation/selectall">更多公告></a></span>
					</ul>
					 
				</div>
			</div>
		</div>
		<!--新闻  -->
		<div class="all_bottom">
		<br>
		
  <font size="6px">新闻  News</font> 
  <p style="float: right;margin-top: 20px;margin-right: 50px;">
  <a href="${pageContext.request.contextPath}/front/edu/alledunews.action?" >MORE+</a> 
		</p><div style="height:4px;width: 100%;background-color: red">&nbsp;</div>
			<!--  -->
		<!-- 	<div class="all_bottom_left"> -->

				<div id="mynews">
<div class="indexnews">
 
    <!-- <div style="float: left;margin-top: 25px;"><p>关注我们、关注前沿<br/>
      Recently is to do ...</p></div> -->
 
   </div>
 <!--  <div class="cat_title wrapper">
   </div> -->
  <div class="newsdata">
    <div class="newsad" > 
    
    <!--图片轮播  -->
    <div id="newslunbo">
    <ul>
    <c:forEach items="${hotnews }" var="hotnews">
        <li><img src="/files${hotnews.eduurl }"  width="100%" height="100%"></li>					
        </c:forEach> 	
    </ul>
  </div>
    <!--  -->
		
	
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
      <hr style="margin-top: 80px;">
      </c:forEach>

    </ul>
  </div>
			<!--新闻内容  -->
			<%-- <div class="all_bottom_right">
				<ul>
					<c:forEach items="${hotnews }" var="hotnews">

						<li><a
							href="${pageContext.request.contextPath}/front/edu/querydudetailbyid.action?id=${hotnews.id}">
								<img src="/files${hotnews.eduurl }" width="90" height="90"
								alt="新闻图片" />
						</a> <a
							href="${pageContext.request.contextPath}/front/edu/querydudetailbyid.action?id=${hotnews.id}"
							>${hotnews.edutitle }</a> <span><fmt:formatDate
									value="${hotnews.edutime }" pattern="yyyy-MM-dd" /></span>
							<p>${hotnews.educontent }........</p></li>
					</c:forEach>
				</ul>
			</div> --%>
		</div>
		
	</div>
	<hr>
	<!--  -->

</div>

	<!--  -->
<jsp:include page="footer.jsp"></jsp:include>


	<!--脚本  -->
	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>

	<script type="text/javascript">
		layui.use('carousel', function() {
			var carousel = layui.carousel;
			carousel.render({
				elem : '#test1',
				width : '100%', 
				height : '450px',
				arrow : 'always'
			//,anim: 'updown' //�л�������ʽ
			});
		});
	
		layui.use('layer', function() { //独立版的layer无需执行这一句
			var $ = layui.jquery,
				layer = layui.layer; //独立版的layer无需执行这一句
			$("#sumbit").click(
				function() {
					layer.open({
						type : 1,
						title : false, //不显示标题栏
						closeBtn : false,
						offset : [ 180, 0 ],
						shade : 0.8,
						area : '580px',
						id : 'LAY_layuipro', //设定一个id，防止重复弹出
						btn : [ '取消' ],
						btnAlign : 'c',
						moveType : 1, //拖拽模式，0或者1
						content : '<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">'
							+ '<legend>用户帐号</legend></fieldset>'
							+ '<form style="margin-top: 25px; padding: 0 15px;" id="f" class="layui-form layui-form-pane" action="">'
							+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">帐号:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="username" autocomplete="off" placeholder="请输入帐号" class="layui-input" style="width: 200px;float: left;"></div></div>'
							+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">密码:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="password" name="password" autocomplete="off" placeholder="请输入密码" class="layui-input" style="width: 200px;float: left;"></div></div>'
							+ '<div class="layui-form-item" style="width: 500px;"><img code="" class="layui-form-label" src="/code/front/getCode" style="width: 110px" /><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="code" autocomplete="off" placeholder="请输入验证码" class="layui-input" style="width: 200px;float: left;"></div></div>'
							+ '<div class="layui-form-item" style="width: 500px;"><a href="/gotoFront/register">未有帐号?</a></div>'
							+ '<div class="layui-form-item"><div class="layui-input-block"><button id="loginBtn" type="button" class="layui-btn layui-btn-primary layui-btn-small" >登录</button></div></div>'
							+ '</form>',
						success : function(layero) {
							//var btn = layero.find('.layui-layer-btn');
							$(document).on("click", "#loginBtn", function() {
								if (formInputNoNull()) {
									$.ajax({
										type : 'post',
										url : '/front/oldUsers/login',
										data : $("#f").serialize(),
										success : function(data) {
											if (data == "true") {
												location.reload()
											} else {
												alert(data);
											}
										}
									})
	
								} else {
									rmvErr()
								}
	
							})
	
	
						}
					});
				})
		})
		$(document).on("click", "img[code]", function() {
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

	<script type="text/javascript">
    //因为使用了document，所以js需要放在需要执行的代码下面生效才能生效
    var li=document.getElementById('newslunbo').getElementsByTagName("li");
    var num=0;
    var len=li.length;

    setInterval(function(){
        li[num].style.display="none";
        num=++num==len?0:num;
        li[num].style.display="inline-block";

    },6000);//切换时间
</script>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'videoindex.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="../../../../resources/front/css/style.css"
	type="text/css" media="all" />
<script type="text/javascript"
	src="../../../../resources/front/js/jquery.1.8.2.min.js"></script>
<script type="text/javascript"
	src="../../../../resources/front/js/jquery.plugin.min.js"></script>
<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/videoandeducheck.js"></script>

</head>

<body>
	<!-- 查找最顶级栏目  -->
	<section id="caseslist">
	<div class="cat_title">
		<div class="wrapper">
			<h2>
				<strong>CASES</strong>案例
			</h2>
			<p>
				我们的作品，他们的故事<br /> Our work, their stories
			</p>
		</div>
	</div>
	<div id="filter">
		<div class="wrapper">
			<ul>
				<li><a href="qiye/index.htm"
					tppabs="http://mc18.eatdou.com/case/qiye/">企业官网</a></li>

				<li><a href="shangwu/index.htm"
					tppabs="http://mc18.eatdou.com/case/shangwu/">电子商务</a></li>

				<li><a href="gov/index.htm"
					tppabs="http://mc18.eatdou.com/case/gov/">学校政府</a></li>

				<li><a href="qita/index.htm"
					tppabs="http://mc18.eatdou.com/case/qita/">其他</a></li>
			</ul>
		</div>
	</div>

	<ul class="cases wrapper">
		<c:if test="${!empty allVideos }">
			<c:forEach items="${allVideos}" var="allVideos">
				<li class="item1">
					<!--  <img src="../uploads/131102/1-131102210430T2.png"  width="240" height="152" alt="成都城市设计研究中心" /> -->
					<a
					href="${pageContext.request.contextPath }/front/video/selectvideobyid.action?id=${allVideos.id}">
						<!-- <video width="240" height="152" controls> --> <video
							width="240" height="152" preload="metadata"> <source
							src="/files${allVideos.vurl}" type="video/mp4"> <%-- <source
				src="/files${allVideos.vurl}" type="video/ogg">
				<!-- 如果浏览器不支持video标签，则使用flash --> <embed
				src="/files${allVideos.vurl}"
				type="application/x-shockwave-flash" width="240"
				height="160" allowscriptaccess="always"
				allowfullscreen="true"></embed> 您的浏览器不支持视频播放 --%></video>
				</a> <strong>${allVideos.vtitle }</strong> <!--鼠标移上去显示  -->
					<p style="color: white;">
						<strong>${allVideos.vtitle }</strong>
					<em>${allVideos.vteacher}<br>${allVideos.vprice }</em>
					   ${allVideos.vcontent}....
					<br><br>
					 <a
					href="${pageContext.request.contextPath}/front/videos/selectvideobyid.action?id=${allVideos.id}"
					class="btn_blue">查看详情</a> 
					</p>
				</li>
			</c:forEach>
		</c:if>
	</ul>
	<div class="dede_pages">
		<ul class="pagelist">
			<li><span class="pageinfo">共 <strong>1</strong>页<strong>15</strong>条记录
			</span></li>

		</ul>
	</div>
	<!-- /pages --> </section>

	<script type="text/javascript">
		//<![CDATA[
		//Nav Start
		$("header>div>nav>ul>li>a").hover(function() {
			$(this).parent().stop(false, true).animate({
				"background-position-x" : "6px",
				opacity : "0.7"
			}, {
				duration : "normal",
				easing : "easeOutElastic"
			});
		}, function() {
			$(this).parent().stop(false, true).animate({
				"background-position-x" : "10px",
				opacity : "1"
			}, {
				duration : "normal",
				easing : "easeOutElastic"
			});
		});
		<!--- 案例 ---->
		//Nav Start
	
		var pagecur = 1; //当前页
		var username = getCookie("username");
		$("header>div>nav>ul>li>a").hover(function() {
			$(this).parent().stop(false, true).animate({
				"background-position-x" : "6px",
				opacity : "0.7"
			}, {
				duration : "normal",
				easing : "easeOutElastic"
			});
		}, function() {
			$(this).parent().stop(false, true).animate({
				"background-position-x" : "10px",
				opacity : "1"
			}, {
				duration : "normal",
				easing : "easeOutElastic"
			});
		});
		//Nav End
	
		//Filter Start
	
		ajaxLogin("username=" + username);
		$("#filter>div>p>.signIn").live("click", function() {
			$("#login_bg").css("height", $("body").height() + "px").fadeIn();
			$("#login").fadeIn();
			$("#username").val("");
			$("#password").val("");
			$("#login_err").text("");
		});
		$("#filter>div>p>.signOut").live("click", function() {
			ajaxOut("act=loginout&username=" + username);
		});
		$("#login .close").click(closeLogin);
		$("#login .textinput").focusout(loginck);
		$("#signin").click(function() {
			if (loginck()) ajaxLogin("username=" + $("#username").val() + "&password=" + $("#password").val());
		});
		function closeLogin() {
			$("#login_bg").fadeOut();
			$("#login").fadeOut();
		}
		function loginck() {
			var reg = /[a-z]{3,12}/.test($("#username").val());
			if ($("#username").val() == "") {
				$("#login_err").text("帐号不能为空");
				return false;
			}
			if (!reg) {
				$("#login_err").text("帐号格式不正确");
				return false;
			}
			if ($("#password").val() == "") {
				$("#login_err").text("密码不能为空");
				return false;
			}
			$("#login_err").text("");
			return true;
		}
		function getCookie(name) {
			var cookieValue = "";
			var search = name + "=";
			if (document.cookie.length > 0) {
				offset = document.cookie.indexOf(search);
				if (offset != -1) {
					offset += search.length;
					end = document.cookie.indexOf(";", offset);
					if (end == -1)
						end = document.cookie.length;
					cookieValue = unescape(document.cookie.substring(offset, end))
				}
			}
			return cookieValue;
		}
		function ajaxLogin(str) {
			$.ajax({
				type : "POST",
				url : "http://mc18.eatdou.com/login.php",
				data : str,
				success : function(msg) {
					if (msg != "false") {
						document.cookie = "username=" + msg;
						$("#filter>div>p").html("欢迎你，" + msg + "！<a href='javascript:void(0)' class='signOut'>Sign Out</a>");
						username = msg;
						closeLogin();
					} else {
						$("#login_err").text("登录失败，请核对帐号后重新登录。");
						document.cookie = "username=";
					}
				},
				error : function() {
					$("#filter>div>p").html("查看更多案例？<a href='javascript:void(0)' class='signIn'>Sign In</a>");
				}
			});
		}
	
		//Filter End
		//Cases Start
		$("#caseslist>.cases>li").live({
			mouseenter : function() {
				$("p", this).stop(false, true).slideDown("normal", "easeOutQuad");
			},
			mouseleave : function() {
				$("p", this).stop(false, true).slideUp("normal", "easeOutQuad");
			}
		});
		$("#caseslist>.cases>li>img").lazyload({
			effect : "fadeIn",
			failurelimit : 10
		});
		$("#loadmore>a").click(function() {
			if ($("#loadmore>a").text() == "没有更多案例了...") {
				return false;
			}
			$("#loading").slideDown("normal", "easeOutQuad");
			$.get(ajaxUrl + (pagecur + 1) + "..html", function(data) {
				$("#loading").slideUp("normal", "easeOutQuad", function() {
					if (data == 0) {
						$("#loadmore>a").text("没有更多案例了...");
						return false;
					}
					$("#caseslist>.cases").append(data);
					$("#caseslist>.cases>li>img").lazyload({
						effect : "fadeIn",
						failurelimit : 10
					});
				});
				pagecur++;
			});
		})
		//Cases End
		$("#gotop").click(function() {
			$('body,html').animate({
				scrollTop : 0
			}, 500);
		})
	
		//]]>
	</script>

</body>
</html>

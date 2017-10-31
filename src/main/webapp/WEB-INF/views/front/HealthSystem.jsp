<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"  type="text/css" media="all" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="single">
	<div class="cat_title">
		<div class="wrapper"><br><br>
			<h2><strong>Health</strong>关于健康</h2>
			<p>健康到底有多重要？<br/>Who are we?</p>
		</div>
	</div>
	<div class="category">
		<div class="wrapper">
			<h1>关于</h1>
            
            <ul class="catbtn">
            
			</ul>
		</div>
	</div>
	<article class="serv_detailed">
		<div id="detailed">
		<p class="t4">[专业+专注]</p>
<div class="t4Content">
<ul>
<li>我们致力于为顾客提供网站建设系统、网站管理系统、网站维护系统。</li>
<li>我们专注于企业网站设计制作，为企业提供全程网络解决方案。</li>
</ul>
</div>
<p class="t4">[GOMEEN,中文世界最专业的会议活动平台]</p>
<div class="t4Content">
<ul>
<li>共鸣网致力于在专业化层面为大众提供一个便捷有效的活动、会议网络平台。通过会议发布、会议选址、与会人员统计、专家稿件审查、审稿回馈、酒店预订、旅游线路规划等一体化服务，简化办会事宜，明晰会议进程，让你轻松办会，轻松共鸣。</li>
<li>网址：<a href="javascript:if(confirm('http://www.njro168.com/'))window.location='http://www.njro168.com/'"  target="_blank">http://www.njro168.com/</a></li>
</ul>
</div>
        </div>

	</article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
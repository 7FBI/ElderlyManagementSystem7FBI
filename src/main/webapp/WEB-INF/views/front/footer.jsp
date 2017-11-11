<%@ page language="java" contentType="text/html charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!-- <link rel="stylesheet" href="/resources/front/css/style.css"  type="text/css" media="all" /> -->
</head>
<body>
<footer>
<div id="white"></div>
  <div id="footerlink">
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
  <div id="footerinfo">
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
			<!-- 	<img src="/resources/front/images/map.gif" id="homemap" width="258" height="190" alt="公司位置" /> -->
			</div>
    
  </div>
</footer>
</body>
</html>
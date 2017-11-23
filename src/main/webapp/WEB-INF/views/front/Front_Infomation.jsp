<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>首页</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="/resources/front/css/active/style.css"/>
</head>
<body>	
<jsp:include page="index_header.jsp" flush="true" />
	<jsp:include page="header.jsp" flush="true" />

<div class="infomation">
<div class="infomation_img">
<img alt="" src="/resources/front/images/infomation_bg.jpg">
</div>
<div class="infomation_localpostions">
<span>当前位置：</span>
</div>
<ul class="infomation_list">
<c:forEach items="${lists }" var="lists">
<li class="list">
<div class="list_title"><a href="/front/frontinformation/selectByKey?id=${lists.id}">》${lists.newstitle }</a></div>
<div class="list_time"><span><fmt:formatDate value="${lists.sendtiem}" pattern="yyyy-MM-dd HH:mm:ss" /></span></div>
</li>
</c:forEach>
</ul>
</div>






<div></div>


</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>My JSP 'edunewsindex.jsp' starting page</title>
<style type="text/css">
html,body{
  width:100%;
  height:100%;
  background-image: url("/resources/upload/front/nomoney.jpg");
   background-repeat: no-repeat;
	no-repeat: center fixed;
	background-size: contain;
	background-size: 100% 100%;
	background-size: cover;
	-webkit-background-size: cover; 
 }
 .nomoney{
 text-align: center;
 color:white;
padding-top: 200px;
 }
</style>
 </head>
<body>
 <!--余额不足  -->
	<c:if test="${!empty err }">
		
		<div class="nomoney">
		<h2>${err }</h2>
		<p><span>页面自动<a id="href" href="">跳转</a>上一页面</span><span>等待<b id="wait">6</b>秒</span></p>
				<script type="text/javascript">                            (function() {
						var wait = document.getElementById('wait'), href = document.getElementById('href').href;
						var interval = setInterval(function() {
							var time = --wait.innerHTML;
							if (time <= 0) {
								clearInterval(interval);
								history.go(-1)
							}
							;
						}, 1000);
					})();
				</script>
		</div>
	</c:if>
</body>
</html>
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
<!-- 查找最顶级栏目  -->
<section id="single">
	<div class="cat_title">
		<div class="wrapper"><br><br>
			<h2><strong>Education</strong>教育</h2>
			<p>我们能做学什么？<br/>What can we study?</p>
		</div>
	</div>
	<div class="category">
		<div class="wrapper">
			<h1>教育</h1>
            
            <ul class="catbtn">
            
 			<li><a href="web/index.htm">品牌网站建设</a></li>   
			
 			<li><a href="seo/index.htm">seo优化推广</a></li>   
			
 			<li><a href="yunying/index.htm">网站运营托管</a></li>   
			
			</ul>
		</div>
	</div>
	<article class="serv_detailed">
		<div id="detailed">
		这里是总的服务，在后台栏目中修改，修改后更新生成！
        </div>
		<div id="case_footer"></div>
	</article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
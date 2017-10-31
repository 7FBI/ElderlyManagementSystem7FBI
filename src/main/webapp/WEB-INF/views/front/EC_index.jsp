<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<section id="show_cases">
	<div class="cat_title">
		<div class="wrapper"><br><br>
			<h2><strong>CASES</strong>案例</h2>
			<p>我们的作品，他们的故事<br/>Our work, their stories </p>
		</div>
	</div>
	<article>
		<div class="wrapper">
			<div id="overview">
				<div class="overview_bg"></div>
				<div id="case_info">
																																							<h1><img src="../../uploads/131102/1-1311021SZNS.png" tppabs="http://mc18.eatdou.com/uploads/131102/1-1311021SZNS.png" width="180" height="120" alt="西南财经大学" /></h1>
					<ul>
						<li>名称：西南财经大学</li>
						<li>分类：学校政府</li>
						<li>TAG：食品优品道新象</li>
					</ul>
					<a href="javascript:if(confirm('http://oiec.swufe.edu.cn/  点击这里给我发送临时消息'))window.location='http://oiec.swufe.edu.cn/'" tppabs="http://oiec.swufe.edu.cn/" class="btn_blue" target="_blank" rel="external nofollow">VISIT SITE 访问该网站</a>
					<div class="brief">西南财经大学是教育部直属的国家“211工程”和“985工程”优势学科创新平台建设的全国重点大学，也是国家教育体制改革试点高校。学校始于1925年创建的上海光华大学，至今有近90年的办学历史。1925年6月3日，在“五卅”反帝爱国怒潮中，爱国师生从圣约翰大学脱离，拥戴张寿镛先生创办光华大学，校名取自“日月光华，旦复旦兮”（《卿云歌》），象征着复兴中华，反抗帝国主义割宰和奴役的革命精神。1938年，光华大学在抗战烽火中由上海内迁成都办学，后定名为光华大学成都分部。1946年更名为私立成华大学。1952年私立成</div>
				</div>
			</div>
			<div id="detailed">
				<img alt="" src="../../uploads/allimg/131102/1-1311021T226.png" tppabs="http://mc18.eatdou.com/uploads/allimg/131102/1-1311021T226.png" style="height: 499px; width: 700px;" /><img alt="" src="../../uploads/allimg/131102/1-1311021T227-50.png" tppabs="http://mc18.eatdou.com/uploads/allimg/131102/1-1311021T227-50.png" /><img alt="" src="../../uploads/allimg/131102/1-1311021T227.png" tppabs="http://mc18.eatdou.com/uploads/allimg/131102/1-1311021T227.png" />					
			</div>
		</div>
	</article>
	<div id="case_footer">
		<div class="wrapper showother">
						<a class="backlist" href="index.htm" tppabs="http://mc18.eatdou.com/case/gov/">返回案例列表</a>
						
		</div>
	</div>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
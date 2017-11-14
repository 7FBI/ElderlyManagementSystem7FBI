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
<!-- 查找最顶级栏目  -->
<section id="caseslist">
  <div class="cat_title" style=" /* background:yellow; */  height:120px;width:100%;position:relative;">
    <div class="wrapper" style="  /* background:green; */  height:96px;width:40%;position:absolute;top:75px;left:0;"><br><br>
      <h2><strong>Shooping</strong>商城</h2>
      <p>我们的作品，他们的故事<br/>
        Our work, their stories </p>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
   	<div id="search-field"
			style="float: right; width: 60%; height: 96px; position: absolute;left:40%;top:120px;">
			<form id="search-form"
				action="/front/products/selectProductsByLikeName" method="post">
				<input type="text" name="pname"
					style="width: 800px; height: 30px; position: absolute; top: 30px; line-height: 30px; vertical-align: middle; border: 3px solid red;outline: none;">
				<button type="submit"
					style="width: 80px; height: 32px; position: absolute; left: 723px; top: 32px; background: red; border: 3px solid red; font-color: white;">
					<p>搜索</p>
				</button>

			</form>
		</div>
  </div>
  <br>
  <div id="filter">
    <div class="wrapper">
      <ul>
				<li><a href="/front/products/selectAllProductsByType?tid=1">服装城</a></li>
				<li><a href="/front/products/selectAllProductsByType?tid=2">美食城</a></li>
				<li><a href="/front/products/selectAllProductsByType?tid=3">家居电器</a></li>
				<li><a href="/front/products/selectAllProductsByType?tid=4">运动健身</a></li>
				<li><a href="/front/products/selectAllProductsByType?tid=5">寻医问药</a></li>
				<li><a href="/front/creditshop/SelectAllCreditShop">积分商城</a></li>
			</ul>
			
      
    </div>
    
  </div>
  <ul class="cases wrapper">
		<c:forEach items="${products}" var="products">
			<li class="item1"><img
				src="/resources/front/images/uploads/131102/1-131102210430T2.png"
				width="240" height="152" alt="成都城市设计研究中心" /> 
				<a href="/front/products/selectProductDetailByPrimaryKey?id=${products.id }">${products.pname}</a> 
				<p>
					<em>￥</em><strong> ${products.price}</strong>
				</p>
				
				</li>
		</c:forEach>


	</ul>
 <div class="dede_pages">
			<ul class="pagelist">
             <li><span class="pageinfo">共 <strong>1</strong>页<strong>15</strong>条记录</span></li>

			</ul>
		</div><!-- /pages --> 
  
</section>


<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单列表</title>
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />


</head>
<body style="background: url('/resources/front/images/timg.jpg');">
	<jsp:include page="../header.jsp" flush="true" />
	<!-- 查找最顶级栏目  -->
	<center>
		<section id="cases">
		<div class="cat_title wrapper" style="margin-left: 450px">
			<h2 style="float: left;">
				订单列表<strong>ORDERS</strong>
			</h2>
			<a href="case/index.htm" class="more">MORE+</a>
		</div>


		<c:forEach items="${orders}" var="ord">
			<ul
				style="width: 726px; border-top: dashed; height: 154px; float: left; margin-left: 450px">
				<c:forEach items="${ord.orderdetails}" var="odt" begin="0" end="2">
					<li style="height: 152; width: 240px; float: left;"><img
						src="/files${odt.products.producturl }" width="240" height="152"
						 />
						<p>
							<strong>${fn:length(odt.products.pname)>20?fn:substring(odt.products.pname,0, 20)+"...":odt.products.pname}</strong>${fn:substring(odt.products.pdescription,0, 30)}<br />
							<strong>类型:</strong>${odt.products.tid}<br />
							<a
								href="/front/products/selectProductDetailByPrimaryKey?id=${odt.pid}"
								class="btn_blue">查看商品详情</a> <a href="#" target="_blank"
								class="openurl">访问品牌网站</a>
						</p></li>
				</c:forEach>
			</ul>
			<div style="width: 200px; height: 152px; float: left;">
				<h5 style="margin: 10px 20px;">
					<strong style="font-size: 20px;">总价:</strong><strong
						style="color: red;">￥</strong><strong style="color: green;">${ord.money }</strong>
				</h5>
				<c:if test="${ord.orderstatus>=1}">
					<a href="/front/orders/ordersOverInfo?id=${ord.id}"
						style="margin: 10px 20px;"
						class="layui-btn layui-btn-small layui-btn-normal">查看详情</a>
				</c:if>

				<c:if test="${ord.orderstatus<=0}">
					<a href="/front/orders/ordersInfo?id=${ord.id}"
						style="margin: 10px 20px;"
						class="layui-btn layui-btn-small layui-btn-normal">查看详情</a>
				</c:if>

			</div>


		</c:forEach> </section>
	</center>
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>


	<script type="text/javascript">
//<![CDATA[
	//Nav Start
	
	<!--- 首页 ---->
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
	
		

//]]>
</script>
	<jsp:include page="../footer.jsp" flush="true" />
<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*" 
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <% String path=request.getContextPath();
    	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>收藏</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/front/css/oldcollection.css" />
	</head>
	<body>
		
		<div id="page_buttom">
			<ul><c:forEach var="list" items="${list }">
				<li class="pos">
					<div class="l_div">
						<div class="l_div_top">
							<a href="${pageContext.request.contextPath }/front/products/selectProductDetailByPrimaryKey?id=${list.id }" target="_blank" title="${list.pname }">
							<%-- 	<img class="img" src="${list.producturl }" alt="${list.pdescription }" /> --%>
								<img class="img" src="${list.producturl }" alt="${list.pdescription }" />
							</a>
						</div>
					
						<div class="delete_icon">
							<a href="${pageContext.request.contextPath }/front/collection/delete?pid=${list.id }" title="删除商品">
								<img src="${pageContext.request.contextPath }/resources/front/images/oldcollection_delete_icon.jpg" class="delete" />
							</a>
						</div>
						<div class="context">
							<a class="" target="_blank" title="${list.pname }" href="${pageContext.request.contextPath }/front/products/selectProductDetailByPrimaryKey?id=${list.id }" >${list.pname }</a>
						</div>
						<div class="price">
							<span>￥</span>
							<strong>${list.price }</strong>
						</div>
					</div>
				</li>
				</c:forEach>
				<div class="clear"></div>
			</ul>
		
		</div>
	</body>
</html>

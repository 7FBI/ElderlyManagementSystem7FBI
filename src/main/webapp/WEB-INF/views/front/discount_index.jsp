<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<title>打折页面</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/front/css/discount_index.css" />
	</head>
	<body>
	<div id="page_buttom">
			<ul><c:forEach var="list" items="${list }">
				<li class="pos">
					<div class="l_div">
						<div class="l_div_top">
							<a href="${pageContext.request.contextPath }/front/products/selectProductDetailByPrimaryKey?id=${list.id }" target="_blank" title="${list.pname }" class="">
								<img class="img" src="${list.producturl }" alt="${list.pdescription }" />
							</a>
						</div>
					
						<div class="delete_icon">
							
						</div>
						<div class="context">
							<a target="_blank" title="${list.pname }" href="${pageContext.request.contextPath }/front/products/selectProductDetailByPrimaryKey?id=${list.id }" >${list.pname }</a>
						</div>
						<div class="price">
							<span>原价：￥${list.price }</span>
						</div>
						<div class="discount">
							<strong>折扣：${list.discountprice }</strong><br />
							<span><fmt:formatDate value="${list.discountstoptime }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
						</div>
					</div>
				</li>
				
				</c:forEach>
				<div class="clear"></div>
			</ul>
		
		</div>
	</body>
</html>
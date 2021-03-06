<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>评价管理</title>


		<link href="/resources/front/css/self_exchange/cmstyle.css" rel="stylesheet" type="text/css">

</head>
<body style="background:#F8F8F8">
<jsp:include page="Self_header.jsp"></jsp:include>
<div class="nav-table">
			<div class="long-title"><span class="all-goods">全部分类</span></div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="#">首页</a></li>
					<li class="qc"><a href="#">闪购</a></li>
					<li class="qc"><a href="#">限时抢</a></li>
					<li class="qc"><a href="#">团购</a></li>
					<li class="qc last"><a href="#">大包装</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>
		</div>
		<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-comment">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">评价管理</strong> / <small>Manage&nbsp;Comment</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有评价</a></li>

							</ul>

							<div class="am-tabs-bd" id="tab1">
							<!-- 循环 -->
								<c:forEach items="${opinions }" var="list">
								<div class="am-tab-panel am-fade am-in am-active">

									<div class="comment-main">
										<div class="comment-list">
											<ul class="item-list">

												
												<div class="comment-top">
													<div class="th th-price">
														<td class="td-inner">评价</td>
													</div>
													<div class="th th-item">
														<td class="td-inner">商品</td>
													</div>													
												</div>
												<li class="td td-item">
													<div class="item-pic">
														<a href="#" class="J_MakePoint">
															<img src="/fbiImage${list.products.producturl }" class="itempic">
														</a>
													</div>
												</li>

												<li class="td td-comment">
													<div class="item-title">
														<div class="item-opinion">${list.star }星</div>
														<div class="item-name">
															<a href="/front/products/selectProductDetailByPrimaryKey?id=${list.pid }">
																<p class="item-basic-info">${list.products.pname }</p>
															</a>
														</div>
													</div>
													<div class="item-comment">
														${list.content }
													</div>

													<div class="item-info">
														<div>
															<p class="info-little"><span>颜色：${list.products.productscolor }</span></p>
															<p class="info-time"><fmt:formatDate value="${list.opinionstime }" pattern="yyyy-MM-dd HH:mm:ss" /></p>

														</div>
													</div>
												</li>

											</ul>

										</div>
									</div>

								</div>
								
								</c:forEach>
								
							</div>
						</div>

					</div>

				</div>
				<!--底部-->
			</div>
<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
		</div>
<jsp:include page="EC_footer.jsp"></jsp:include>
</body>
</html>
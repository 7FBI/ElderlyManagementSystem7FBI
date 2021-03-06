<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发表评论</title>

<link href="/resources/front/css/self_exchange/appstyle.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/front/js/self_exchange/jquery-1.7.2.min.js"></script>
</head>
<body style="background:#F8F8F8">
	<jsp:include page="Self_header.jsp"></jsp:include>
	<div class="nav-table">
		<div class="long-title">
			<span class="all-goods">全部分类</span>
		</div>
		<div class="nav-cont">
			<ul>
				<li class="index"><a href="#">首页</a></li>
				<li class="qc"><a href="#">闪购</a></li>
				<li class="qc"><a href="#">限时抢</a></li>
				<li class="qc"><a href="#">团购</a></li>
				<li class="qc last"><a href="#">大包装</a></li>
			</ul>
			<div class="nav-extra">
				<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利 <i
					class="am-icon-angle-right" style="padding-left: 10px;"></i>
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
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">发表评论</strong> / <small>Make&nbsp;Comments</small>
						</div>
					</div>
					<hr />

					<div class="comment-main">
						<div class="comment-list">
							<div class="item-pic">
								<a href="#" class="J_MakePoint"> <img
									src="/resources/front/images/self_img/comment.jpg_400x400.jpg" class="itempic">
								</a>
							</div>

							<div class="item-title">

								<div class="item-name">
									<a href="#">
										<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
									</a>
								</div>
								<div class="item-info">
									<div class="info-little">
										<span>颜色：洛阳牡丹</span> <span>包装：裸装</span>
									</div>
									<div class="item-price">
										价格：<strong>19.88元</strong>
									</div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="item-comment">
								<textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
							</div>
							<div class="filePic">
								<input type="file" class="inputPic"
									allowexts="gif,jpeg,jpg,png,bmp" accept="image/*"> <span>晒照片(0/5)</span>
								<img src="/resources/front/images/self_img/image.jpg" alt="">
							</div>
							<div class="item-opinion">
								<li><i class="op1"></i>好评</li>
								<li><i class="op2"></i>中评</li>
								<li><i class="op3"></i>差评</li>
							</div>
						</div>

<!--多个商品评论-->
						<!-- <div class="comment-list">
							<div class="item-pic">
								<a href="#" class="J_MakePoint"> <img
									src="/resources/front/images/self_img/comment.jpg_400x400.jpg" class="itempic">
								</a>
							</div>

							<div class="item-title">

								<div class="item-name">
									<a href="#">
										<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
									</a>
								</div>
								<div class="item-info">
									<div class="info-little">
										<span>颜色：洛阳牡丹</span> <span>包装：裸装</span>
									</div>
									<div class="item-price">
										价格：<strong>19.88元</strong>
									</div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="item-comment">
								<textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
							</div>
							<div class="filePic">
								<input type="file" class="inputPic"
									allowexts="gif,jpeg,jpg,png,bmp" accept="image/*"> <span>晒照片(0/5)</span>
								<img src="/resources/front/images/self_img/image.jpg" alt="">
							</div>
							<div class="item-opinion">
								<li><i class="op1"></i>好评</li>
								<li><i class="op2"></i>中评</li>
								<li><i class="op3"></i>差评</li>
							</div>
						</div> 
 -->
						<!-- <div class="comment-list">
							<div class="item-pic">
								<a href="#" class="J_MakePoint"> <img
									src="/resources/front/images/self_img/comment.jpg_400x400.jpg" class="itempic">
								</a>
							</div>

							<div class="item-title">

								<div class="item-name">
									<a href="#">
										<p class="item-basic-info">美康粉黛醉美唇膏 持久保湿滋润防水不掉色</p>
									</a>
								</div>
								<div class="item-info">
									<div class="info-little">
										<span>颜色：洛阳牡丹</span> <span>包装：裸装</span>
									</div>
									<div class="item-price">
										价格：<strong>19.88元</strong>
									</div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="item-comment">
								<textarea placeholder="请写下对宝贝的感受吧，对他人帮助很大哦！"></textarea>
							</div>
							<div class="filePic">
								<input type="file" class="inputPic"
									allowexts="gif,jpeg,jpg,png,bmp" accept="image/*"> <span>晒照片(0/5)</span>
								<img src="/resources/front/images/self_img/image.jpg" alt="">
							</div>
							<div class="item-opinion">
								<li><i class="op1"></i>好评</li>
								<li><i class="op2"></i>中评</li>
								<li><i class="op3"></i>差评</li>
							</div>
						</div> -->
						<div class="info-btn">
							<div class="am-btn am-btn-danger">发表评论</div>
						</div>
						<script type="text/javascript">
							$(document)
									.ready(
											function() {
												$(
														".comment-list .item-opinion li")
														.click(
																function() {
																	$(this)
																			.prevAll()
																			.children(
																					'i')
																			.removeClass(
																					"active");
																	$(this)
																			.nextAll()
																			.children(
																					'i')
																			.removeClass(
																					"active");
																	$(this)
																			.children(
																					'i')
																			.addClass(
																					"active");

																});
											})
						</script>



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
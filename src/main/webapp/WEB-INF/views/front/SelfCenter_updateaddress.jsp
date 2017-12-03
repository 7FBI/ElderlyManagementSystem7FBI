<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String url = "";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>地址管理</title>


<link href="/resources/front/css/self_exchange/personal.css" 
	rel="stylesheet" type="text/css"> 
	
	
<link href="/resources/front/css/self_exchange/addstyle.css"
	rel="stylesheet" type="text/css">
<script src="/resources/front/js/self_exchange/js/jquery.min.js"
	type="text/javascript"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>

</head>

<c:choose>
	<c:when test="${empty profile}">
		<%
			url = "/front/oldUsers/insertProfileByUid.action";
		%>
	</c:when>
	<c:otherwise>
		<%
			url = "/front/oldUsers/updateAddressByPrimarykey.action";
		%>

	</c:otherwise>
</c:choose>

<body>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$(".new-option-r").click(
							function() {
								$(this).parent('.user-addresslist').addClass(
										"defaultAddr").siblings().removeClass(
										"defaultAddr");
							});

					var $ww = $(window).width();
					if ($ww > 640) {
						$("#doc-modal-1").removeClass(
								"am-modal am-modal-no-btn")
					}

				})
	</script>
	<!--头 -->
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

				<div class="user-address" >
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small>
						</div>
					</div>
					<hr />
					<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails" style="margin-left:100px;">
                               <c:forEach items="${profiles}" var="profiles" >
						<li class="user-addresslist defaultAddr" style="margin-bottom:10px;"><span
							class="new-option-r"></span>
							<p class="new-tit new-p-re">
								<span class="new-txt">${profiles.signname }</span> <span class="new-txt-rd2">${profile.signtell }</span>
							</p>
							<div class="new-mu_l2a new-p-re">
								<p class="new-mu_l2cw">
									<span class="title">地址：</span> <span class="province">湖北</span>省
									<span class="city">武汉</span>市 <span class="dist">洪山</span>区 <span
										class="street">${profiles.signaddress}</span>
								</p>
							</div>
							<div class="new-addr-btn">
								<a href="/front/oldUsers/updateAddressjsp?id=${profiles.id}&&uid=${profiles.uid}"><i class="am-icon-edit"></i>编辑</a> <span
									class="new-addr-bar">|</span> <a href="/front/oldUsers/deleteAddressByPrimarykey?id=${profiles.id}&&uid=${profiles.uid}"
									><i class="am-icon-trash"></i>删除</a>
							</div></li>

					  </c:forEach> 
						
					</ul>
					<div class="add-dress">
						<div class="am-cf am-padding">
							<div class="am-fl am-cf">
								<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small>
							</div>
						</div>
						<hr />

						<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;margin-left:100px;">
							<form class="am-form am-form-horizontal"  action=<%=url%> id="addr_form" method="post">
                             <input type="hidden" name="uid" value="${uid}"> <input
								type="hidden" name="sid" value="${profile.uid}"> <input
								type="hidden" name="id" value="${profile.id}">
								<div class="am-form-group">
									<label for="user-name" class="am-form-label">收货人</label>
									<div class="am-form-content">
										<input type="text" name="signname"
								value="${ profile.signname}" id="signname"  placeholder="收货人">
									</div>
								</div>

								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">手机号码</label>
									<div class="am-form-content">
										<input name="signtell"
								value="${ profile.signtell}" id="signtell" placeholder="手机号必填" type="text">
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-address" class="am-form-label">所在地</label>
									<div class="am-form-content address">
										<select data-am-selected>
											<option value="a">浙江省</option>
											<option value="b" selected>湖北省</option>
										</select> <select data-am-selected>
											<option value="a">温州市</option>
											<option value="b" selected>武汉市</option>
										</select> <select data-am-selected>
											<option value="a">瑞安区</option>
											<option value="b" selected>洪山区</option>
										</select>
									</div>
								</div>
								<div class="am-form-group">
									<label for="user-intro" class="am-form-label">详细地址</label>
									<div class="am-form-content">
										<textarea class="" rows="3" name="signaddress"
								value="${ profile.signaddress}" id="signaddress"
											placeholder="输入详细地址"></textarea>
									<!-- 	<small>100字以内写出你的详细地址...</small> -->
									</div>
								</div>

								<div class="am-form-group">
									<div class="am-u-sm-9 am-u-sm-push-3">
										<button type="submit" class="am-btn am-btn-danger" id="save_profile">保存</button> 
										<!-- <a
											href="javascript: void(0)"
											class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a> -->
									</div>
								</div>
							</form>
						</div>

					</div>

				</div>

				<script type="text/javascript">
					
							
							/* 地址修改保存 */
		  /*  $('#save_profile').click(function(){
			$('#addr_form').submit();
		}) */
							
				</script>

				<div class="clear"></div>

			</div>
		</div>

		<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
	</div>
</body>
</html>
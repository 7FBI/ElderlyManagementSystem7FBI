<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css"
	media="all">
<!-- <link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" /> -->

<style type="text/css">
.lables_d {
	width: auto;
	margin-left: 1px;
	float: left;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 13px;
	color: #5f5f5f;
	font-weight: bold;
	text-transform: uppercase;
	width: 60px;
	font-family: Arial, Helvetica, sans-serif;
}

.lables_v {
	font-family: Arial, Helvetica, sans-serif;
	line-height: 20px;
	font-size: 8px;
	width: 120px;
	margin-left: 2px;
	width: 120px;
}
}
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<!-- 查找最顶级栏目  -->

	<section id="news">
	<div class="cat_title wrapper">
		<h2>
			待付款订单详情<strong>order</strong>
		</h2>
		<p>
			感谢您的支持<br /> thank you for your support
		</p>
		<a href="news/index.htm" class="more">MORE+</a>
	</div>
	<div class="newsdata">
		<ul style="width: 90%; float: left;">
			<li style="height: 60px; width: 100%;">
				<div class="layui-row layui-col-space1">
					<div class="layui-col-md1"></div>
					<div class="layui-col-md8">
						<div style="width: 100%; float: left;">
							<div style="float: left; width: 230px;">
								<label class="lables_d">订单编号:</label> <label class="lables_v"
									id="oids">${orders.id}</label>
							</div>
							<div style="float: left; width: 200px;">
								<label class="lables_d">支付方式:</label> <label class="lables_v">余额支付</label>
							</div>
							<div style="float: left; width: 150px;">
								<label class="lables_d">订单状态:</label> <label class="lables_v">待付款</label>
							</div>
						</div>
						<div style="width: 100%; float: left;">
							<div class="layui-input-item" style="float: left; width: 230px;">

								<label class="lables_d">收货地址:</label> <select id="selectAddress"
									style="height: 20px; width: 150px; border: none;"
									class="layui-input" name="signaddress">
									<option id="uad" selected="selected" upd="upd"
										value="${oldUsers.address}">${oldUsers.address}</option>

									<c:forEach items="${profile}" var="pds">
										<option value="${pds.id}">${pds.signaddress}</option>
									</c:forEach>
									<option value="" disabled>————————</option>
									<option value="-1"
										style="border-top: 12px; border-top-color: #999;">添加新地址</option>
								</select>
							</div>
							<div style="float: left; width: 200px;">
								<label class="lables_d">下单时间:</label> <label class="lables_v">
								<fmt:formatDate value="${orders.ordertime}" pattern="yyyy-MM-dd HH:mm:ss" /></label>
							</div>
							<div style="float: left; width: 150px">
								<label class="lables_d">订单总价:</label> <label class="lables_v">
									<span style="color: red;">￥</span>${orders.money}
								</label>
							</div>
						</div>

						<div style="width: 100%; float: left;">
							<div style="float: left; width: 800px">
								<label class="lables_d">用户备注:</label> <input
									style="height: 20px; width: 450px;" name="" class="layui-input" />
							</div>
						</div>
					</div>
					<div class="layui-col-md3">
						<div style="width: 100%; float: left;">
							<div style="float: left; width: 200px;">
								<label class="lables_d">收货人:</label> <input class="lables_v"
									style="border: none;" id="signname" name="signname"
									readonly="readonly" value="${oldUsers.username }" />
							</div>
							<div style="float: left; width: 200px;">
								<label class="lables_d">预留电话:</label> <input class="lables_v"
									style="border: none;" id="signtell" name="signtell"
									readonly="readonly" value="${oldUsers.tell }" />
							</div>
						</div>
					</div>
				</div>
			</li>

			<!-- 分割 -->

			<c:forEach items="${orderdetails}" var="ord">
				<li style="height: 90px; width: 100%;">
					<div class="layui-row layui-col-space1">
						<div class="layui-col-md1"></div>
						<div class="layui-col-md2">
							<img style="margin-left: 28px; border: 2px lime;" alt="花果山"
								src="/files${ord.products.producturl}" width="90px"
								height="90px">
						</div>
						<div class="layui-col-md1"></div>
						<div class="layui-col-md6">
							<div style="background: float: left; width: 500px;">
								<label class="lables_d" style="width: 60px;">商品名称:</label> <label
									class="lables_d" style="width: 420px; margin-left: 3px;"><a
									href="/front/products/selectProductDetailByPrimaryKey?id=${ord.pid}">${ord.products.pname}</a></label>
							</div>
							<div style="float: left; width: 500px;">
								<label class="lables_d" style="width: 60px;">购买数量:</label> 
								<input type="text" style="height: 20px; width: 38px;" value="${ord.ordercount}" readonly="readonly" name="ordercount" class="layui-input" /> 
									<label class="lables_d" style="width: 60px;">商品单价:</label> 
									<label class="lables_v"><span style="color: red;">￥</span>${ord.products.price}</label>
							</div>
							<div style="float: left; width: 500px;">
								<label class="lables_d" style="width: 60px;">商品类型:</label> <label
									class="lables_v" style="width: 100px;"><a
									href="/front/products/selectAllProductsByType?tid=${ord.products.tid}">${ord.products.tid}</a></label>
							</div>
						</div>
						<div class="layui-col-md2"></div>
					</div>
				</li>
			</c:forEach>

			<!-- 分割 -->

			<li style="height: 30px; width: 100%; margin-top: 30px;">
				<div class="layui-row layui-col-space1">
					<div class="layui-col-md1"></div>
					<div class="layui-col-md8">
						<button type="button" id="overOrderBtn" value="${orders.id }"
							class="layui-btn layui-btn-small layui-btn-normal"
							style="font-size: 15px">
							直接结账<i class="layui-icon"
								style="font-size: 18px; margin-top: 2px;">&#xe65e;</i>
						</button>

					</div>
					<div class="layui-col-md3">
						<button type="button" id="deleteOrderBtn" value="${orders.id }"
							class="layui-btn layui-btn-small layui-btn-danger"
							style="font-size: 15px">
							去意已决<i class="layui-icon"
								style="font-size: 18px; margin-top: 2px;">&#xe640;</i>
						</button>
					</div>
				</div>
			</li>
		</ul>
	</div>
	</section>
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>
	<script type="text/javascript">
		layui.use('layer',
						function() {
							var $ = layui.jquery, layer = layui.layer;
							$("#selectAddress").change(
											function() {
												var s = $(this);
												var oids = $("#oids");
												var tells = $("#signtell");
												if (s.val() == -1) {
													layer
															.open({
																type : 1,
																title : false //不显示标题栏
																,
																closeBtn : false,
																offset : [ 180,
																		0 ],
																shade : 0.8,
																area : '580px',
																id : 'LAY_layuipro' //设定一个id，防止重复弹出
																,
																btn : [ '取消' ],
																btnAlign : 'c',
																moveType : 1 //拖拽模式，0或者1
																,
																content : '<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">'
																		+ '<legend>添加收货地址</legend></fieldset>'
																		+ '<form style="margin-top: 25px; padding: 0 15px;" id="f" class="layui-form layui-form-pane" action="">'
																		+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">收货人:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="signname" autocomplete="off" placeholder="请输入收货人名字" class="layui-input" style="width: 200px;float: left;"></div></div>'
																		+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">收货地址:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="signaddress" autocomplete="off" placeholder="请输入收货地址" class="layui-input" style="width: 200px;float: left;"></div></div>'
																		+ '<div class="layui-form-item" style="width: 500px;"><label class="layui-form-label" style="width: 110px">收货人电话:</label><div class="layui-input-block" style="width: 270px;"><input NoNull="" type="text" name="signtell" autocomplete="off" placeholder="请输入收货人电话" class="layui-input" style="width: 200px;float: left;"></div></div>'
																		+ '<div class="layui-form-item" style="width: 500px;"><a href="/gotoFront/register">未有帐号?</a></div>'
																		+ '<div class="layui-form-item"><div class="layui-input-block"><button id="loginBtn" type="button" class="layui-btn layui-btn-primary layui-btn-small" >Add</button></div></div>'
																		+ '</form>',
																success : function(
																		layero) {
																	//var btn = layero.find('.layui-layer-btn');
																	$(document)
																			.on(
																					"click",
																					"#loginBtn",
																					function() {
																						if (formInputNoNull()) {
																							$
																									.ajax({
																										type : 'post',
																										url : '/front/profile/addAddress',
																										data : $(
																												"#f")
																												.serialize(),
																										success : function(
																												data) {
																											if (data != null) {
																												s
																														.removeAttr("selected");
																												var ohtml = '<option pd="" selected="selected" value="'+data.id+'">'
																														+ data.signaddress
																														+ '</option>';
																												var fs = s
																														.closest("select[name='signaddress']");
																												fs
																														.prepend(ohtml);
																												$(
																														"#signtell")
																														.val(
																																data.signtell);
																												$(
																														"#signname")
																														.val(
																																data.signname);
																											} else {
																												alert("xian deng lu");
																												windo.location.href = "/gotoFront/login";
																											}
																											layer
																													.closeAll()
																										}
																									})

																						} else {
																							rmvErr()
																						}

																					})

																}
															});
												} else {
													if (s.val() == $("#uad")
															.val()) {
														$
																.ajax({
																	type : 'get',
																	url : '/front/oldUsers/getNowOldUsers',
																	success : function(
																			data) {
																		if (data != null) {
																			$(
																					"#signtell")
																					.val(
																							data.tell);
																		} else {
																			window.location.href = "/gotoFront/login";
																		}
																	}
																})
													} else {
														$
																.ajax({
																	type : 'get',
																	url : '/front/profile/',
																	success : function(
																			data) {
																		if (data != null) {
																			$(
																					"#signtell")
																					.val(
																							data.signtell);
																		} else {
																			window.location.href = "/gotoFront/login";
																		}
																	}
																})
													}
													$
															.ajax({
																type : 'post',
																url : '/front/orders/updateOrders?id='
																		+ oids
																				.text()
																		+ '&tell='
																		+ tells
																				.val()
																		+ '&orderaddress='
																		+ s
																				.text(),
																success : function(
																		data) {
																	if (data == "true") {
																		layer
																				.msg(
																						"修改成功",
																						{
																							time : 2000
																						},
																						{
																							icon : 1
																						});
																	} else {
																		layer
																				.msg(
																						"请先登录",
																						{
																							time : 2000
																						},
																						{
																							icon : 2
																						});
																		window.location.href = "/gotoFront/login";
																	}
																},
																error : function() {
																	alert("网络出错");
																}
															});
												}
											});

							$("#overOrderBtn").click(function() {
												var o = $(this);
												$.ajax({
															type : 'post',
															url : '/front/orders/overOrders?id='
																	+ o.val(),
															success : function(
																	data) {
																switch (data) {
																case "login":
																	window.location.href = "/gotoFront/login";
																	break;
																case "balance":
																	layer
																			.msg(
																					"余额不足",
																					{
																						tiem : 2000
																					},
																					{
																						icon : 2
																					});
																	break;
																default:
																	window.location.href = "/";
																	break;
																}
															},
															error : function() {
																alert("网络错误");
															}
														})
											})
							$("#deleteOrderBtn").click(function() {
									var o = $(this);
									window.location.href = "/front/orders/deleteOrders?id="+ o.val();
							})

						});
	</script>
	<jsp:include page="../footer.jsp" flush="true" />
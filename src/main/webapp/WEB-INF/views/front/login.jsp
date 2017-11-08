<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">

<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->
<!-- <link rel="stylesheet" href="/resources/css/login.css"> -->
<link rel="stylesheet" href="/resources/unity/layer/css/layui.css">
</head>
<body oncontextmenu="return false">
	<div class="page-container">
		<h1>欢迎登录</h1>
		<form action="/front/oldUsers/login" id="loginForm" method="post">
			<div>
				<input type="text" id="username" name="username" class="username"
					placeholder="请输入您的帐号" autocomplete="off" />
			</div>
			<div>
				<input type="password" id="password" name="password"
					class="password" placeholder="请输入您的密码" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<div>
				<input style="width: 30%; float: left;" type="password" name="code"
					class="password" placeholder="请输入验证码" oncontextmenu="return false"
					onpaste="return false" /> <img
					style="margin-top: 25px; padding: 0 15px;" code=""
					src="/code/front/getCode">
			</div>
			<button id="submit">点击登录</button>
		</form>
		<div>
			<a id="register" style="margin-top: 25px; padding: 0 15px;" href="#">还没有帐号?</a>
		</div>
		<div class="connect"></div>
	</div>
	<div class="alert" style="display: none">
		<h2>消息</h2>
		<div class="alert_con">
			<p id="ts"></p>
			<p style="line-height: 70px">
				<a class="btn">确定</a>
			</p>
		</div>
	</div>

	<!-- Javascript -->
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
	<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
	<script>
			layui.use('layer',function() { //独立版的layer无需执行这一句
				var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
				$("#submit")
						.click(
								function() {
									layer
											.open({
												type : 1,
												title : false //不显示标题栏
												,
												closeBtn : false,
												shade : 0.8,
												id : 'LAY_layuipro' //设定一个id，防止重复弹出
												,
												btn : [ '登录', '取消' ],
												btnAlign : 'c',
												moveType : 1 //拖拽模式，0或者1
												,
												content : '<fieldset class="layui-elem-field layui-field-title" style="margin-top: 10px;">'
													    +'<legend>用户帐号</legend></fieldset>'
													    +'<form style="margin-top: 25px; padding: 0 15px;" class="layui-form layui-form-pane" action="">'
														+ '<div class="layui-form-item"><label class="layui-form-label">帐号:</label><div class="layui-input-block"><input type="text" name="title" autocomplete="off" placeholder="请输入帐号" class="layui-input"></div></div>'
														+ '<div class="layui-form-item"><label class="layui-form-label">密码:</label><div class="layui-input-block"><input type="text" name="title" autocomplete="off" placeholder="请输入密码" class="layui-input"></div></div>'
														+ '<div class="layui-form-item"><img code="" class="layui-form-label" src="/code/front/getCode"/><div class="layui-input-block"><input type="text" name="title" autocomplete="off" placeholder="请输入验证码" class="layui-input"></div></div>'
														+'</form>',
												success : function(layero) {
													var btn = layero.find('.layui-layer-btn');
													btn.find('.layui-layer-btn0').attr({
																href : 'http://www.layui.com/',
																target : '_blank'
														});
												}
											});
								})
			})
			
			$(document).on("click","img[code]",function() {
				var m = $(this);
				m.attr("src", "/code/front/getCode" + "?" + new Date().getTime());
			})

		
</script>
</body>
</html>
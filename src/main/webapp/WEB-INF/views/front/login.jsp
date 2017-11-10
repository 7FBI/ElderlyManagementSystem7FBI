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
<body background="/resources/front/images/timg.jpg">

	<div class="layui-row layui-col-space1">
		<div class="layui-col-md5"></div>
		<div class="layui-col-md3">
			<div style="width: 100%; height: 120px"></div>
			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 10px;">
				<legend>用户登录</legend>
			</fieldset>
			<form style="margin-top: 25px; padding: 0 15px;" id="f"
				class="layui-form layui-form-pane" action="">
				<div class="layui-form-item" style="width: 480px;">
					<label class="layui-form-label" style="width: 110px">帐号:</label>
					<div class="layui-input-block" style="width: 270px;">
						<input NoNull="" type="text" name="username" autocomplete="off"
							placeholder="请输入帐号" class="layui-input"
							style="width: 200px; float: left;" />
					</div>
				</div>
				<div class="layui-form-item" style="width: 480px;">
					<label class="layui-form-label" style="width: 110px">密码:</label>
					<div class="layui-input-block" style="width: 270px;">
						<input NoNull="" type="password" name="password"
							autocomplete="off" placeholder="请输入密码" class="layui-input"
							style="width: 200px; float: left;" />
					</div>
				</div>
				<div class="layui-form-item" style="width: 480px;">
					<img code="" class="layui-form-label" src="/code/front/getCode"
						style="width: 110px" />
					<div class="layui-input-block" style="width: 270px;">
						<input NoNull="" type="text" name="code" autocomplete="off"
							placeholder="请输入验证码" class="layui-input"
							style="width: 200px; float: left;">
					</div>
				</div>
				<div class="layui-form-item">
					<a
						style="font-size: 10px; float: right; margin-right: 45px; margin-top: -5px"
						href="/gotoFront/register">未有帐号?</a>
				</div>
				<div class="layui-form-item" style="margin-top: -10px">
					<div class="layui-input-block">
						<button id="loginBtn" type="button"
							class="layui-btn layui-btn-primary layui-btn-small">登录</button>
					</div>
				</div>
			</form>
		</div>
		<div class="layui-col-md4"></div>

	</div>

	<!-- Javascript -->
	<script src="/resources/unity/jquery/jquery-3.2.0.js"
		type="text/javascript"></script>
	<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>
	<script>
		layui.use('layer', function() {
			var $ = layui.jquery, layer = layui.layer;
			$("#loginBtn").click(function() {
				if (formInputNoNull()) {
					var f = $("#f");
					layer.load(0);
					$.ajax({
						type : 'post',
						url : '/front/oldUsers/login',
						data : f.serialize(),
						success : function(data) {
							layer.close(layer.index);
							if (data=="true") {
								window.location.href="/";
							} else {
								layer.msg(data,{time:2000})
							}
						},
						error : function() {
							layer.msg("网络错误)_)",{time:2000});
						}
					})
				}else{
					rmvErr()
				}
			})
		})

		$(document).on("click", "img[code]", function() {
			var m = $(this);
			m.attr("src", "/code/front/getCode" + "?" + new Date().getTime());
		})
	</script>
</body>
</html>
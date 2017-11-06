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
<link rel="stylesheet" href="/resources/css/login.css">
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
				<input type="password" id="password" name="password" class="password"
					placeholder="请输入您的密码" oncontextmenu="return false"
					onpaste="return false" />
			</div>
			<div>
				<input type="password" id="password" name="password" class="password"
					placeholder="请输入验证码" oncontextmenu="return false"
					onpaste="return false" />
					<img src="/code/front/getCode" >
			</div>
			<button id="submit">点击登录</button>
		</form>
		<div class="connect"></div>
	</div>
	<div class="alert" style="display:none">
		<h2>消息</h2>
		<div class="alert_con">
			<p id="ts"></p>
			<p style="line-height:70px">
				<a class="btn">确定</a>
			</p>
		</div>
	</div>

	<!-- Javascript -->
		<script src="/resources/unity/jquery/jquery-3.2.0.js" type="text/javascript"></script>
		<script>
		$(".btn").click(function(){
			is_hide();
		})
		var u = $("input[name=username]");
		var p = $("input[name=password]");
		$("#submit").click(function(){
			if(u.val() == '' || p.val() =='')
			{
				$("#ts").html("用户名或密码不能为空~");
				is_show();
				return false;
			}
			else{
				var reg = /^[0-9A-Za-z]+$/;
				if(!reg.exec(u.val()))
				{
					$("#ts").html("用户名错误");
					is_show();
					return false;
				}
			}
		});
		window.onload = function()
		{
			$(".connect p").eq(0).animate({"left":"0%"}, 600);
			$(".connect p").eq(1).animate({"left":"0%"}, 400);
		}
		function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
		function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
		</script>
	
</body>
</html>
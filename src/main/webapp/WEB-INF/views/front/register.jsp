<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>宜嘉FBI用户注册</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
</head>

<body background="/resources/front/images/register.jpg">
	<center>
		<div style="height: 120px" class=".col-xs-12"></div>
		<div class=".col-xs-6 .col-md-4"></div>
		<form class="form-inline" id="f">
			<div class=".col-xs-6 .col-md-4">
				<div class="form-group" style="width: 100%">
					<label for="exampleInputName2">姓名:</label> <input type="text"
						style="width: 180px;" class="form-control" NoNull=""
						name="username" placeholder="请输入真实姓名">
				</div>
				<br /> <br />
				<div class="form-group" style="width: 100%">
					<label for="exampleInputName2">帐号:</label> <input type="text"
						style="width: 180px;" china="" class="form-control" NoNull=""
						name="uid" placeholder="登录帐号">
				</div>
				<br /> <br />
				<div class="form-group" style="width: 100%">
					<label for="exampleInputName2">密码:</label> <input type="password"
						style="width: 180px;" class="form-control" NoNull=""
						name="password" placeholder="密码">
				</div>
				<br /> <br />
				<div class="form-group" style="width: 100%">
					<label for="exampleInputName2">电话:</label> <input type="text"
						style="width: 180px;" phone="" class="form-control" NoNull=""
						name="tell" placeholder="手机号">
				</div>
				<br /> <br />
				<div class="form-group" style="width: 100%">
					<label for="exampleInputName2">证件:</label> <input type="text"
						style="width: 180px;" idcard="" class="form-control" NoNull=""
						name="idcard" placeholder="身份证">
				</div>
				<br /> <br />
				<div class="form-group">
					<button type="button" id="sbmit" class="btn btn-success">添加</button>
					<button type="reset" class="btn btn-warning">重置</button>
				</div>
			</div>
		</form>
		<div class=".col-xs-6 .col-md-4"></div>
	</center>

	<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>
	<script type="text/javascript">
		$("#sbmit").click(
				function() {
					if (formInputNoNull() & isChinese() & isPassword()
							& isPhones() & isCardNo()) {
						var f = $("#f");
						$.ajax({
							type : 'post',
							url : '/front/oldUsers/register',
							data : f.serialize(),
							success : function(data) {
								if (data == "true") {
									history.go(-1);
								} else {
									alert(data);
								}
							},
							error : function() {
								alert("网络错误!!");
							}
						})
					} else {
						rmvErr();
					}
				})
	</script>
</body>
</html>

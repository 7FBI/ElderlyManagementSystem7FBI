<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/resources/unity/layer/css/layui.css" />
<title>Friend</title>
</head>
<body>
	<div class="layui-container">
		<fieldset class="layui-elem-field layui-field-title"
			style="margin-top: 20px;">
			<legend>好友列表</legend>
		</fieldset>
		<div class="layui-row">
			<div class="layui-col-md8"
				style="padding-right: 10px; padding-left: 10px;border-right: dotted;" id="oldManFriends"></div>
			<div class="layui-col-md4"
				style="padding-right: 10px; padding-left: 10px">
				<form name="formFinds">
					<div class="layui-form-item">
						<label class="layui-form-label">查找好友</label>
						<div class="layui-input-block">
							<input type="text" name="username" NoNull=""
								placeholder="请输入姓名或账号" class="layui-input" /><br />
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">仅仅查找</label>
						<div class="layui-input-block">
							<select class="layui-input" name="sex">
								<option name="sex" selected="selected" value="-1">全部</option>
								<option name="sex" value="0">男</option>
								<option name="sex" value="1">女</option>
							</select> &nbsp;
							<button type="button" style="margin-top: 3px; float: right;"
								name="findsbtn"
								class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal">查询</button>
						</div>
					</div>
				</form>
				<hr />
				<div class="layui-form-item">
					<div id="findFriend"></div>
				</div>
			</div>
		</div>
	</div>


	<script type="application/javascript"
		src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	<script type="application/javascript"
		src="/resources/front/oldman/oldFriends.js"></script>

	<script>
		
	</script>
</body>
</html>
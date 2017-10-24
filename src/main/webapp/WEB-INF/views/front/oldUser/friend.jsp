<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/unity/layer/css/layui.css" />
<title>Friend</title>
</head>
<body>
	<div class="layui-container">
		<legend>好友列表</legend>
		<div class="layui-row">
			<div class="layui-col-md4" id="oldManFriends"></div>
			<div class="layui-col-md4" style="background-image: url('/resources/unity/back.jpg');">
				<div style="width: 100%; height: 90%;color: #ffffff">
				<div class="layui-form-item">
							<label class="layui-form-label" style="margin-left:10%;">欢迎登陆</label>
						</div>
					<form name="forms">
						<div class="layui-form-item">
							<label class="layui-form-label">账  号</label>
							<div class="layui-input-inline">
								<input type="text" name="uid" placeholder="请输入账号" class="layui-input" /><br />
							</div>
						</div>
							<div class="layui-form-item">
							<label class="layui-form-label">密  码</label>
							<div class="layui-input-inline">
						<input type="password" name="password" placeholder="请输入密码" class="layui-input" /><br />
						</div>
						</div>
							<div class="layui-form-item">
							<label class="layui-form-label">地  址</label>
							<div class="layui-input-inline">
						<input type="text" name="address" placeholder="请输入地址" class="layui-input" /><br /> 
						</div>
						</div>
							<div class="layui-form-item">
							<label class="layui-form-label">生  日</label>
							<div class="layui-input-inline">
						<input id="date" name="birthday" placeholder="yyyy-MM-dd" class="layui-input">
						<hr />
						</div>
						</div>
							<div class="layui-form-item">
							<label class="layui-form-label"> </label>
							<div class="layui-input-inline">
						<button name="loginBtn" type="button"
							class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal" >登录</button>
							</div>
						</div>
					</form><br/>
				</div>
				<div ErroyDiv='' class="layui-btn-radius" style="width: 100%; height: 8%; font-size: 18px; display: none">
				</div>
			</div>
			
			<div class="layui-col-md4" >
			<form  name="formFinds">
			<div class="layui-form-item">
							<label class="layui-form-label">查找好友</label>
							<div class="layui-input-inline">
								<input type="text" name="username" NoNull="" placeholder="请输入姓名或账号" class="layui-input" /><br/>
							</div>
							
							<label class="layui-form-label">仅查找</label>
							<div class="layui-input-inline">
								<select class="layui-form-label" name="sex">
									<option name="sex" selected="selected" value="-1">全部</option>
									<option name="sex" value="0">男</option>
									<option name="sex" value="1">女</option>
								</select>
								<button type="button" name="findsbtn" class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal">查询</button>
							</div>
			</div>
			</form>
			<div class="layui-form-item">
							<div class="layui-input-inline" id="findFriend">
							</div>
			</div>
			
		</div>
	</div>
</div>


	<script type="application/javascript"
		src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	<script type="application/javascript"
		src="/resources/unity/js/loginTip.js"></script>
	<script type="application/javascript"
		src="/resources/front/oldman/oldFriends.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							var uid = 'clong123';
							$
									.ajax({
										type : "get",
										url : '/front/oldman/friend/friends?uid='
												+ uid,
										success : function(data) {
											var divs = $("#oldManFriends");
											//清除好友列表
											divs.empty();
											//添加好友列表
											for ( var k in data) {
												var btns1 = '<div class="layui-col-md12" >'
														+ '<div class="layui-col-md3" >'
														+ '<img src="/resources/producat_3015.jpg" style="height:100%;width:100%;float:left" /></div>'
														+ '<div class="layui-col-md5">'
														+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">账号:</span>'
														+ data[k]['uidfoot']
														+ '</div>'
														+ '<div class="layui-col-md12" style="height:40%; float:left"><span style="font-size:16px">姓名:</span>'
														+ data[k]['oldUsers'][0]['username']
														+ '</div></div>'
														+ '<div class="layui-col-md4">'
														+ '<div class="layui-inline">'
														+ '<select class="layui-form-label" style="margin-top:10px;width:100%">'
														+ '<option value="1" selected="selected">查看信息</option>'
														+ '<option value="2" >聊天</option>'
														+ '<option value="3" >删除好友</option>'
														+ '</select></div></div></div><hr/>';
												divs.append(btns1);
											}
											var btnsOver = '<span class="layui-btn layui-btn-disabled">已经没有更多了</span>';
											divs.append(btnsOver);
										}
									})
						})
	</script>
</body>
</html>
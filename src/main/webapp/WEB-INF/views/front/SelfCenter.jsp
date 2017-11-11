<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />
<script type="text/javascript"
	src="../../../resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="../../../resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="../../../resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="single">
	<div class="cat_title"
		style="height: 168px; width: 100%; position: relative;">
		<div class="wrapper"
			style="height: 168px; width: 50%; position: absolute; top: 75px; left: 0;">
			<br>
			<br>
			<h2>
				<strong>SelfCenter</strong>个人中心
			</h2>
			<p>
				我们的作品，他们的故事<br /> Our work, their stories
			</p>

		</div>
	</div>
	<div class="category">
		<div class="wrapper">
			<h1>我的资料</h1>

		</div>
	</div>
	<article class="serv_detailed">
	<div class="selfcenter_detailed">
		<div class="selfcenter_left" style="">

			<ul>
				<li><a href="/front/oldUsers/selectByUid">个人资料</a></li>
				<br>
				<li><a href="/gotoFront/SelfCenter_updatepassword">修改密码</a></li>
				<br>
				<li><a href="/front/oldUsers/selectProfileByUid">地址管理</a></li>
				<br>
				<li><a href="####">个人交易信息</a></li>
			</ul>
		</div>
		<div class="selfcenter_cont">
			<form id="itemForm" action="/front/oldUsers/updateByUidSelective"
				method="post">
				<input type="hidden" name="uid" value="${uid}" /> <input
					type="hidden" name="id" value="${oldUsers.id }" />
				<!-- <div class="oldUsers_property"></div> -->
				<!--  头像-->
				<div class="oldUsers_property_userurl">
					<label for="userurl" class="oldUsers_lable_userurl">头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</label>
					<div class="oldUsers_value_userurl">
						<c:if test="${oldUsers.userurl !=null}">
							<img src="${oldUsers.userurl}" width=110 height=110 />
							<br />
						</c:if>
						<input type="file" name="userurl" />
					</div>
					<div class="oldUsers_warning">
						<font color="red"><p id="error8"></p></font> <font color="green"><p
								id="success8"></p></font>
					</div>
				</div>
				<!-- 姓名 -->
				<div class="oldUsers_property">
					<label for="username" class="oldUsers_lable">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
					<div class="oldUsers_value">
						<input type="text" class="form-control" name="username"
							value="${oldUsers.username}" id="username"
							onblur="usenameCheck()">
					</div>

					<div class="oldUsers_warning">
						<font color="red"><p id="error1"></p></font> <font color="green"><p
								id="success1"></p></font>
					</div>
				</div>
				<!-- 登录账号 -->
				<div class="oldUsers_property">
					<label for="uid" class="oldUsers_lable">登录账号</label>
					<div class="oldUsers_value">
						<input type="text" class="form-control" name="uid"
							value="${oldUsers.uid}" readonly>

					</div>
					<div class="oldUsers_warning">
						<p class="msg">
							<i class="ati"></i>
						</p>
					</div>
					<c:if test="${!empty error}">
						<div>
							<span style="color: red">${err}</span>
						</div>
					</c:if>
				</div>
				<!-- 性别 -->
				<div class="oldUsers_property_sex">
					<label for="sex" class="oldUsers_lable_sex">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
					<div class="oldUsers_value_sex ">
						<input type="radio" name="sex" id="group1" value="0"
							checked="checked"><label>男</label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
							type="radio" name="sex" id="group2" value="1"><label>女</label>
					</div>
					<div class="oldUsers_warning">
						<p class="msg">
							<i class="ati"></i>
						</p>
					</div>
				</div>
				<!--身份证号  -->
				<div class="oldUsers_property">
					<label for="idcard" class="oldUsers_lable">身份证号</label>
					<div class="oldUsers_value">
						<input type="text" class="form-control" name="idcard"
							value="${oldUsers.idcard}" id="idcard" onblur="checkCard()"
							readonly>
					</div>
					<div class="oldUsers_warning">
						<font color="red"><p id="error2"></p></font> <font color="green"><p
								id="success2"></p></font>
					</div>
				</div>

				<!--出生日期  -->
				<div class="oldUsers_property">
					<label for="birthday" class="oldUsers_lable">出生日期</label>
					<div class="oldUsers_value ">
						<input type="text" class="form-control" name="birthday"
							value="<fmt:formatDate value="${oldUsers.birthday}" pattern="yyyy-MM-dd" />"
							id="birthday" onblur="checkBirthday()">
					</div>
					<div class="oldUsers_warning">
						<font color="red"><p id="error9"></p></font> <font color="green"><p
								id="success9"></p></font>
					</div>
				</div>
				<!--电话号码  -->
				<div class="oldUsers_property">
					<label for="tell" class="oldUsers_lable">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label>
					<div class="oldUsers_value">
						<input type="hidden" name="id" value="${userbyid.id}" /> <input
							type="text" class="form-control" name="tell"
							value="${oldUsers.tell}" id="tell" onblur="checkTell()">
					</div>
					<div class="oldUsers_warning">
						<font color="red"><p id="error3"></p></font> <font color="green"><p
								id="success3"></p></font>
					</div>
				</div>
				<!-- 家庭住址 -->
				<div class="oldUsers_property">
					<label for="address" class="oldUsers_lable">家庭住址</label>
					<div class="oldUsers_value">
						<input type="text" class="form-control" name="address"
							value="${oldUsers.address}" id="address" onblur="checkAddress()">
					</div>
					<div class="oldUsers_warning">
						<font color="red"><p id="error4"></p></font> <font color="green"><p
								id="success4"></p></font>
					</div>
				</div>

				<!-- 按钮 -->
				<div class="oldUsers_property_submit">
					<br>
					<button type="submit" class="btn_btn_update"
						style="width: 100px; height: 27px;">修改</button>
				</div>
			</form>

		</div>
		<div class="selfcenter_right">

			<div class="oldUsers_property_dear">
				<h2 style="font-size: 18px;">
					亲爱的&nbsp;&nbsp;<i>${oldUsers.username}</i>&nbsp;&nbsp;,请填写真实信息！
				</h2>
			</div>

		</div>
	</div>

	</article> </section>

<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
	<script type="text/javascript">
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#birthday' //指定元素
			});
		});
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
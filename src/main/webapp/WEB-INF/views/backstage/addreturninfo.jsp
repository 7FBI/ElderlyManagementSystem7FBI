
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'register.jsp'</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<!-- 验证 -->

<script type="text/javascript" language="javascript"
	src="/resources/js/registercheck.js"></script>

</head>

<body>

	<a
		href="${pageContext.request.contextPath}/returninfo/querys.action?
															uid=${uid}"><font
		color="blue"> <span class="glyphicon glyphicon-backward"
			aria-hidden="true"></span>&nbsp;返回
	</font></a>
	<br>
	<form class="form-horizontal col-md-offset-2"
		action="/returninfo/add.action" method="post"
		enctype="multipart/form-data">

		<label class="register_title"> <strong> <span
				class="glyphicon glyphicon-user" aria-hidden="true"> </span>&nbsp;添加回访记录
		</strong></label>
			<div class="form-group col-md-offset-3">
				<label for="uid" class="col-sm-2 control-label">回访客户</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" name="uid" id="uid"
						value="${uid}" readonly="readonly">
					<input type="hidden" class="form-control" name="mid" id="mid" 
						value="${manager.id}" readonly="readonly">

				</div>
				<div class="pleft">
				<font color="red"><span id="error5"></span></font> <font color="green"><span
							id="success5"></span></font>
				</div>
				<c:if test="${!empty error}">
					<div>
						<span style="color: red">${err}</span>
					</div>
				</c:if>
			</div>
			<div class="form-group col-md-offset-3">
				<label for="uid" class="col-sm-2 control-label">回访者</label>
				<div class="col-sm-3">
					<input type="text" class="form-control"
						value="${manager.mnane}" readonly="readonly">

				</div>
				<div class="pleft">
					<font color="red"><span id="error5"></span></font> <font color="green">
					<span id="success5"></span></font>
				</div>
				<c:if test="${!empty error}">
					<div>
						<span style="color: red">${err}</span>
					</div>
				</c:if>
			</div>
			<div class="form-group col-md-offset-3">
				<label for="birthday" class="col-sm-2 control-label">回访时间</label>
				<div class="col-sm-3 am-datepicker-date">
					<input type="date" class="form-control" name="returndate"
						id="returndate" onblur="checkBirthday()">
				</div>
				<div class="pleft">
					<font color="red"><p id="error9"></p></font> <font color="green">
					<p id="success9"></p></font>
				</div>
			</div>

			<div class="form-group col-md-offset-3">
				<label for="address" class="col-sm-2 control-label">回访内容描述</label>
			
				<div class="col-sm-3">
				   <textarea rows="5" cols="50" class="form-control" name="returncontent" id="returncontent"
						onblur="checkAddress()"></textarea>	
				</div>
				<div class="pleft">
					<font color="red"><p id="error4"></p></font> <font color="green"><p
							id="success4"></p></font>
				</div>
			</div>



			
			<!-- 按钮 -->
			<div class="row">
				<div class="col-sm-offset-3 col-md-3">
					<br>
					<button type="submit" class="btn btn-success">提交</button>
					<button type="reset" class="btn btn-warning">重置</button>
				</div>
			</div>
	</form>

</body>
</html>

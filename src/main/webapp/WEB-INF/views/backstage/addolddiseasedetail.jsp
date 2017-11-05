
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
<script type="text/javascript"
	src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="/resources/js/registercheck.js"></script>
<script type="text/javascript" language="javascript" src="/resources/js/cloudjob.js" ></script>
<style type="text/css">
.autocomplete {
	border: 1px solid #9ACCFB;
	background-color: white;
	text-align: left;
}

.autocomplete li {
	list-style-type: none;
}

.clickable {
	cursor: default;
}

.highlight {
	background-color: #9ACCFB;
}
</style>

</head>

<body>

	<a
		href="${pageContext.request.contextPath}/backstageOldDiseasedetails/querys.action?uid=${uid}"><font
		color="blue"> <span class="glyphicon glyphicon-backward"
			aria-hidden="true"></span>&nbsp;返回
	</font></a>
	<br>
	<form class="form-horizontal col-md-offset-2"
		action="/backstageOldDiseasedetails/add.action" method="post"
		enctype="multipart/form-data">

		<label class="register_title"> <strong> <span
				class="glyphicon glyphicon-user" aria-hidden="true"> </span>&nbsp;添加病例记录
		</strong></label>

		<div class="form-group col-md-offset-3">
			<label for="idcard" class="col-sm-2 control-label">客户账号</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="uid" id="uid"
					value="${uid}" readonly="readonly">
			</div>
			<div class="pleft">
				<font color="red"><p id="error2"></p></font> <font color="green"><p
						id="success2"></p></font>
			</div>
			<!-- <div class="pleft"><p class="msg"><i class="ati"></i></p></div> -->
			<!-- <div class="float_left st-error" id="err3"></div> -->
		</div>
		<div class="form-group col-md-offset-3">
			<label for="birthday" class="col-sm-2 control-label">就诊时间</label>
			<div class="col-sm-3 am-datepicker-date">
				<input type="date" class="form-control" name="treatTiem"
					id="treatTiem">
			</div>
			<div class="pleft">
				<font color="red"><p id="error9"></p></font> <font color="green"><p
						id="success9"></p></font>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label class="col-sm-2 control-label">疾病填写</label>
			<div class="col-sm-3" id="diss_search">
				<input type="text" id="diseasename" name="diseasename"><input
					type="button" id="submitdis" value="确定">
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="address" class="col-sm-2 control-label">确诊疾病</label>
			<div class="col-sm-3">
				<textarea class="form-control" name="diseaselist" rows="3" cols="50"
					id="diseaselist"></textarea>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="address" class="col-sm-2 control-label">就诊意见</label>
			<div class="col-sm-3">
				<textarea class="form-control" name="suggest" rows="3" cols="50"></textarea>
			</div>
			<div class="pleft">
				<font color="red"><p id="error4"></p></font> <font color="green"><p
						id="success4"></p></font>
			</div>
		</div>



		<div class="form-group col-md-offset-3">
			<label for="uid" class="col-sm-2 control-label">就诊情况</label>
			<div class="col-sm-3">
				<textarea type="text" class="form-control" name="history" rows="3"
					cols="50"></textarea>

			</div>
			<div class="pleft">
				<font color="red"><p id="error5"></p></font> <font color="green"><p
						id="success5"></p></font>
			</div>
			<c:if test="${!empty error}">
				<div>
					<span style="color: red">${err}</span>
				</div>
			</c:if>
		</div>
		<div class="row">
			<div class="col-sm-offset-3 col-md-3">
				<br>
				<button type="submit" class="btn btn-success">确 定</button>
				<button type="reset" class="btn btn-warning">重 置</button>
			</div>
		</div>
	</form>

</body>
</html>

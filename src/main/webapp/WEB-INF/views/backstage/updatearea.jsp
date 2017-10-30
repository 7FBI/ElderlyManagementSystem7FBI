<%request.setCharacterEncoding("UTF-8");%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
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
<link
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/registercheck.js"></script>

</head>

<body>

	<a  href="${pageContext.request.contextPath}/area/addLocalArea.action" ><font  color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br>
	<form  class="form-horizontal col-md-offset-2"
		action="/area/updatearea.action" method="post"
		enctype="multipart/form-data">
        
		<label class="register_title"> <strong> <span
				class="glyphicon glyphicon-user" aria-hidden="true"> </span>&nbsp;添加地域
		</strong></label>

		<div class="form-group col-md-offset-3">
			<label for="area" class="col-sm-2 control-label">所属地域</label>
			<div class="col-sm-3">
				<select class="form-control" name="provincename">
					<option value="2">北京</option>
					<option value="3">江苏</option>
					<option value="4">上海</option>
					<option value="5">浙江</option>
					<option value="6">天津</option>
					<option value="7">南通</option>
					<option value="8">杭州</option>
				</select>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="area" class="col-sm-2 control-label">所属地域</label>
			<div class="col-sm-3">
				<select class="form-control" name="selftcityid">
					<option value="2">北京</option>
					<option value="3">江苏</option>
					<option value="4">上海</option>
					<option value="5">浙江</option>
					<option value="6">天津</option>
				</select>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="area" class="col-sm-2 control-label">简介</label>
			<div class="col-sm-3">
				<textarea cols="130" rows="4" name="localintroduce" placeholder="请输入简介......."></textarea>
			</div>
		</div>
		
		<!-- 按钮 -->
		<div class="row">
			<div class="col-sm-offset-3 col-md-3">
				<br>
				<button type="submit" class="btn btn-success">Sign in</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</div>
	</form>

</body>
</html>

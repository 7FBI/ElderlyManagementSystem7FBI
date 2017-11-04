
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
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>

</head>

<body>

	<a href="/gotoBackstage/index"><font color="blue"> <span
			class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回
	</font></a>
	<br>
	<center>
		<form class="form-inline" id=""
			action="/backstage/localarea/addAreaInfo" method="post">
			<div class="form-group">
				<label for="exampleInputName2">地域名称:</label> <input type="text"
					style="width: 360px;" class="form-control" NoNull=""
					name="provincename" placeholder="${localArea.provincename }">
			</div>
			<br /> <br />
			<div class="form-group">
				<label for="exampleInputName2">所属地域</label> <select
					style="width: 360px;" id="sele" class="form-control"
					name="selftcityid">
					<option value="-1">无</option>
				</select>
			</div>
			<br /> <br />
			<div class="form-group">
				<label for="exampleInputName2">地域简介</label>
				<textarea style="width: 360px; height: 120px" class="form-control"
					name="localintroduce" NoNull="" placeholder="请输入简介......."></textarea>
			</div>
			<br />
			<br />
			<!-- 按钮 -->
			<div class="form-group">
				<button type="button" id="sbmit" class="btn btn-success">添加</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</form>
	</center>
	<script type="text/javascript" src="/resources/unity/js/formNonull.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.ajax({
										type : 'get',
										url : '/backstage/localarea/selectAllInfo',
										success : function(data) {
											if (data != null) {
												var s = $("#sele");
												for ( var k in data) {
													var chtml = '<option value="'+data[k].id+'">'
															+ data[k].selftcityid
															+ '</option>';
													s.append(chtml);
												}
											}
										},
										error : function() {
											alert("网络错误!!");
										}
									})
						});

		$("#sbmit").click(function() {
			if (formInputNoNull() & formTextNoNull()) {
				$("#f").submit();
			}else {
				rmvErr();
			}
		})

		
	</script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
</head>
<body>
	<div style="width: 100%; padding: 5px 5px 5px 5px;">
		<a style="float: left;" class="btn btn-lg btn-default"
			href="/backstage/localarea/findAllArea">返回首页>>></a>
		<hr />
	</div>
	
	<center>
		<form action="/backstage/localarea/updateInfo?id=${localarea.id }" method="post" class="form-inline">
			<div class="form-group">
				<label for="exampleInputName2">名称:</label> <input style="width: 360px; height: 40px" type="text"
					class="form-control" name="provincename" value="${localarea.provincename }" placeholder="">
			</div>
			<br />
			<br />
			<div class="form-group">
				<label for="exampleInputEmail2">前置:</label> 
				<select style="width: 360px; height: 40px" name="selftcityid">
				<c:if test="${localarea.selftcityid==null }">
				<option value="0" selected="selected">无</option>
				</c:if>
				<c:if test="${localarea.selftcityid!=null }">
				<option value="${localarea.selftcityid }" selected="selected">${localarea.selftcityid }</option>
				</c:if>
					<c:forEach items="${list}" var="l" varStatus="i">
						<option value="${l.selftcityid}">${l.provincename}</option>
					</c:forEach>
				</select>
			</div>
			<br />
			<br />
			<div class="form-group">
				<label for="exampleInputEmail2">简介:</label>
				<textarea name="localintroduce" style="width: 360px; height: 120px" class="form-control">${localarea.localintroduce }</textarea>
			</div>
			<br />
			<br />
			<button type="submit" class="btn btn-default">确认修改</button>
		</form>
	</center>
</body>
</html>
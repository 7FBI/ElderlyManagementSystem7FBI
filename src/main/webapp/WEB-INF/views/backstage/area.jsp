<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<a href="${pageContext.request.contextPath}/area/findAllArea.action?">所有</a>
		<table>

			<tr>
				<td>id</td>
				<td>地域名称</td>
				<td>前置</td>
				<td>简介</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${localArea}" var="localArea">
				<tr>
					<td>${localArea.id}</td>
					<td>${localArea.provincename }</td>
					<td>${localArea.selfcityid }</td>
					<td>${localArea.localintroduce }</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>
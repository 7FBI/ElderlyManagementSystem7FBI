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
<base href="<%=basePath%>">

<title>Insert title here</title>
</head>
<body>
	<%-- <center>
<a href="register">添加</a>
		<table border="1">
		<a href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action">所有</a>
			<tr>
				<td>姓名</td>
				<td>性别</td>
				<td>身份证号</td>
				<td>出生日期</td>
				<td>电话</td>
				<td>住址</td>
				<td>地域</td>
				<td>登录账号</td>
				<td>密码</td>
				<td>照片</td>
				<td>操作</td>
			</tr>
	
			<c:forEach items="${oldUsers}" var="oldUsers">
			<tr>
				<td>${oldUsers.username}</td>
				<td>${oldUsers.sex}</td>
				<td>${oldUsers.idcard}</td>
				<td>${oldUsers.birthday}</td>
				<td>${oldUsers.tell}</td>
				<td>${oldUsers.address}</td>
				<td>${oldUsers.area}</td>
				<td>${oldUsers.uid}</td>
				<td>${oldUsers.password}</td>
				<td>${oldUsers.userurl}</td>
				<td><a href="${pageContext.request.contextPath}/oldusers/deleteUserById.action?id=${oldUsers.id}">删除</a> <a href="${pageContext.request.contextPath}/oldusers/queryUserById.action?id=${oldUsers.id}">修改</a></td>
		</tr>
		</c:forEach>
		</table>
</center> --%>
	<a href="register">添加</a>
	<table>
	<a href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action">所有</a>
		<tr>
			<td>姓名</td>
			<td>性别</td>
			<td>身份证号</td>
			<td>出生日期</td>
			<td>电话</td>
			<td>住址</td>
			<td>地域</td>
			<td>登录账号</td>
			<td>密码</td>
			<td>照片</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${olduser }" var="olduser">
		<tr>
			<td>${olduser.username}</td>
			<td>${olduser.sex}</td>
			<td>${olduser.idcard}</td>
			<td>${olduser.birthday}</td>
			<td>${olduser.tell}</td>
			<td>${olduser.address}</td>
			<td>${olduser.area}</td>
			<td>${olduser.uid}</td>
			<td>${olduser.password}</td>
			<td>${olduser.userurl}</td>
			<td><a
				href="${pageContext.request.contextPath}/oldusers/deleteUserById.action?id=${olduser.id}">删除</a>
				<a
				href="${pageContext.request.contextPath}/oldusers/queryUserById.action?id=${olduser.id}">修改</a></td>

		</tr>
		</c:forEach>
	</table>
</body>
</html>
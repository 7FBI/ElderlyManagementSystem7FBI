<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>详情页面</title>
</head>
<body  align="center">
<h1 align="center">公告详情</h1>
	
<form action="${pageContext.request.contextPath }/backstage/backinformation/updateByPrimaryKey" method="post">
<table width="100%"  class="cont tr_color" border="1">
	<tr>
		<td>序号</td>
		<td><input type="text" name=id value="${backinformation.id}" /> </td>
	</tr>
	<tr>
		<td>标题</td>
		<td><input type="text" name=title value="${backinformation.title}" /> </td>
	</tr>
	<tr>
		<td>时间</td>
		<td><input type="text" name=time value=" ${backinformation.time}" /></td>
	</tr>
	<tr>
		<td>内容</td>
		<td><input type="text" name=news value=" ${backinformation.news}" /></td>
	</tr>
</table><br/>

<button type="submit">确定修改</button>
</form>
</body>
</html>
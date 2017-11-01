<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改类别信息</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/Class/update_sucssful.action" method="post" >
<table>
<tr>
<td><p>类别id</p></td>
<td><input name="id" value="${classification.id }" type="text"></td>
<td><p>请输入你要修改的id</p></td>
</tr>
<tr>
<td><p>类名名称</p></td>
<td><input name="classname" value="${classification.classname }" type="text"/></td>
<td><p>请输入你要修改的类别名称</p></td>
</tr>
<tr>
<td></td>
<td><input type="submit" name="button" value="提交"></td>
<td></td>
</tr>
</table>

</form>
</body>
</html>
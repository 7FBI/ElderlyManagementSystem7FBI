<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'register.jsp'</title>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
<center>
    
	<form action="/oldusers/insterOldUsers.action" method="post" enctype="multipart/form-data"> 
	
	用户名：<input type="text"  name="username"> <br>
	性别：
        <input type="radio" name="sex" id="group1" value="0">男
        <input type="radio" name="sex" id="group2" value="1">女<br>
	身份证号：<input type="text" name="idcard"> <br>
	 出生日期：<input type="text" name="birthday"> <br>
	电话：<input type="text" name="tell"> <br>
	住址：<input type="text" name="address"> <br>
	地域：<input type="text" name="area"> <br>
	登录账号：<input type="text" name="uid"> <br>
	密码：<input type="text" name="password"> <br><br>
	
	头像： <input type="file" name="file" multiple="multiple" id="userurl"/>
	<%-- <c:if test="${oldUsers.url !=null}">
	<img src="/WEB-IF/upload/backstage/${oldUsers.url}" width=100 height=100>
	</c:if> --%>
	<br><br>
	 <input type="submit" value="提交"/>
     <input type="reset" value="重置"/>
	</form>
</center>
</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"  type="text/css" media="all" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section id="single">
	<div class="cat_title">
		<div class="wrapper"><br><br>
			<h2><strong>SelfCenter</strong>个人中心</h2>
			<p>健康到底有多重要？<br/>Who are we?</p>
		</div>
	</div>
	<div class="category">
		<div class="wrapper">
					<h1>我的资料</h1>
            
            <ul class="catbtn">
            
 			<li><a href="web/index.htm">安全设置</a></li>   
			
 			<li><a href="seo/index.htm">地址管理</a></li>   
			
 			<li><a href="yunying/index.htm">XXXX</a></li>   
			
			</ul>
		</div>
	</div>
	<article class="serv_detailed">
		<div id="detailed">
		<div id="cont">
	
		<form id="itemForm" action="/oldUserModify" method="post">
			<input type="hidden" name="id" value="${oldUsers.id }" />
			
			<table style="background:white;">
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username"
						value="${oldUsers.username }" /></td>
				</tr>
				<tr>
					<td>性别</td>
					<td><input type="text" name="sex" value="${oldUsers.sex }" /></td>
				</tr>
				<tr>
					<td>身份证号</td>
					<td><input type="text" name="idcard"
						value="${oldUsers.idcard }" /></td>
				</tr>
				<tr>
					<td>用户登录账号</td>
					<td><input type="text" name="uid" value="${oldUsers.uid }" /></td>
				</tr>
				<tr>
					<td>电话</td>
					<td><input type="text" name="tell" value="${oldUsers.tell }" /></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input type="text" name="password"
						value="${oldUsers.password }" /></td>
				</tr>
				<tr>
					<td>address</td>
					<td><input type="text" name="address"
						value="${oldUsers.address }" /></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="text" name="birthday"
						value="${oldUsers.birthday}" /></td>
				</tr>
				<tr>
					<td>头像</td>
					<td><c:if test="${oldUsers.userurl !=null}">
							<img src="/pic/${oldUsers.userurl}" width=100 height=100 />
							<br />
						</c:if> <input type="file" name="userurl" /></td>
				</tr>

				<tr>
					<td colspan="2" align="center"><input type="submit" value="修改" /></td>

				</tr>
			</table>
			
		</form>
	</div>
        </div>

	</article>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
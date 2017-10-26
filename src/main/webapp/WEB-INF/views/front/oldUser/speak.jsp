<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/resources/unity/layer/css/layui.css" />
</head>
<body>
	<div class="layui-container">
		<fieldset class="layui-elem-field layui-field-title"
			style="margin-top: 20px;">
			<legend><img style="width: 64;height: 64px" src="/files/${oldUser.userurl}"/>|留言中心</legend>
		</fieldset>
		<div class="layui-row">
			<label class="layui-form-label">留言板</label>
			<div class="layui-form-item" style="height: 320px; border: ridge;"
				id="message">
				<c:if test="${message!=null|message.size>0}">
					<c:forEach items="${message}" var="m" varStatus="vs">
					<label class="layui-form-label"><img style="height: 30px;width:30px;margin-top: -4px" src="/files/${m.oldUsers.userurl}" /></label>
						<div class="layui-input-block">
							<label class="layui-input">${m.content} &nbsp;<span style="font-size: 8px;float: right;">时间:<fmt:formatDate value="${m.speaktime}" pattern="yyyy-MM-dd" /></span><br/>
							<span style="font-size: 8px;float: right;">账号:${m.oldUsers.username}</span>
							</label>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${message==null|message.size<=0}">
				<span style="width:100%;height:100%;font-size: 128px;padding: 5% 5% 5% 5%;color: #ccc" class="layui-btn layui-input">尚未有留言</span>
				</c:if>
			</div>
			<hr />
			<label>留下足迹</label>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<textarea style="height: 180px;" class="layui-input"
						placeholder="输入留言内容" name="content"></textarea>
					<button type="button" style="margin-top: 3px; float: right;" value="${oldUser.uid}" name="messageBtn" class="layui-btn  layui-btn-radius layui-btn-small layui-btn-normal">给他留言</button>
				</div>
			</div>
		</div>
		
	</div>
	
	<script type="application/javascript"
		src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	<script type="application/javascript"
		src="/resources/front/oldman/speak.js"></script>
</body>
</html>
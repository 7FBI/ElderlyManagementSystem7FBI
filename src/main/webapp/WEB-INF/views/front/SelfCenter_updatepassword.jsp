<%@page import="com.bean.OldUsers"%>
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
<title>地址管理</title>

<link href="/resources/front/css/self_exchange/stepstyle.css"
	rel="stylesheet" type="text/css">
<script src="/resources/front/js/self_exchange/jquery.min.js"
	type="text/javascript"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>

</head>
<body style="background:#F8F8F8">


	<jsp:include page="Self_header.jsp"></jsp:include>
	<div class="nav-table">
		<div class="long-title">
			<span class="all-goods">全部分类</span>
		</div>
		<div class="nav-cont">
			<ul>
				<li class="index"><a href="#">首页</a></li>
				<li class="qc"><a href="#">闪购</a></li>
				<li class="qc"><a href="#">团购</a></li>
				<li class="qc last"><a href="#">大包装</a></li>
			</ul>
			<div class="nav-extra">
				<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利 <i
					class="am-icon-angle-right" style="padding-left: 10px;"></i>
			</div>
		</div>
	</div>
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">重置密码</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal" action="/front/oldUsers/setNewPassword" id="f">
					<input type="hidden" value="" />
						<div class="am-form-group">
							<label for="user-new-password" class="am-form-label">新密码</label>
							<div class="am-form-content">
								<input type="password" id="user-new-password" name="newPassword" placeholder="由数字、字母组合">
							</div>
						</div>
						<div class="am-form-group">
							<label for="user-confirm-password" class="am-form-label">确认密码</label>
							<div class="am-form-content">
								<input type="password" id="user-confirm-password" name="newPassword2" placeholder="请再次输入上面的密码">
							</div>
						</div>
						<div class="info-btn">
							<div class="am-btn am-btn-danger" id="saveP">保存</div>
						</div>

					</form>


			</div>
		</div>
		<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>

	</div>
	<jsp:include page="EC_footer.jsp"></jsp:include>
	<div style="width:100%;height:200px;"></div>
<script src="/resources/unity/layer/layui.js" type="text/javascript"></script>
<script type="text/javascript">
		layui.use('layer', function() {
			var $ = layui.jquery, layer = layui.layer;
			
			$("#saveP").on('click',function(){
				if(twoPassword()){
					if (isPassword()) {
						var f=$("#f");
						f.submit();
					} else {
						layer.msg("密码格式不正确",{time:2000})
					}
				}else{
					layer.msg("两次密码不一致",{time:2000})
				}
			})
		})
		
		
		
//两次密码验证
function twoPassword(){
	var p=$("#user-new-password");
	var p2=$("#user-confirm-password");
	var tgl = false;
	if(p.val()==p2.val()){
		tgl = true;
	}
	return tgl;
}
		//密码格式验证
		function isPassword(){
			var pattern=/^[0-9a-zA-Z_]{6,16}$/;
			var p=$("#user-new-password");
			var tgl = pattern.test(p.val());
			return tgl;
		}
		
</script>
		
</script>
</html>
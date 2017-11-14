<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<title>个人资料</title>

		<link href="/resources/front/css/self_exchange/admin.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/amazeui.css" rel="stylesheet" type="text/css">

		<link href="/resources/front/css/self_exchange/personal.css" rel="stylesheet" type="text/css">
		<link href="/resources/front/css/self_exchange/infstyle.css" rel="stylesheet" type="text/css">
		
<script src="/resources/front/js/self_exchange/jquery.min.js" type="text/javascript"></script>
		<script src="/resources/front/js/self_exchange/amazeui.js" type="text/javascript"></script>


</head>
<body>
<!--头 -->
		<jsp:include page="Self_header.jsp"></jsp:include>
            <div class="nav-table" >
					   <div class="long-title" ><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont" >
							<!-- <ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul> -->
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-info">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small></div>
						</div>
						<hr/>

						<!--头像 -->
						<div class="user-infoPic">

							<div class="filePic">
						<input type="file" class="inputPic"  name="userurl" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
								<img class="am-circle am-img-thumbnail" src="/resources/front/images/self_img/getAvatar.do.jpg" alt="" />
							</div>
<!-- 头像 -->
							<p class="am-form-help">头像</p>

							<div class="info-m">
								<div><b>用户名：<i>${oldUsers.username}</i></b></div>
								<div class="u-level">
									<span class="rank r2">
							             <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
						            </span>
								</div>
								<div class="u-safety">
									<a href="safety.html">
									 账户安全
									<span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
									</a>
								</div>
							</div>
						</div>

<!--个人信息 -->
						<div class="info-main">
							<form class="am-form am-form-horizontal" action="/front/oldUsers/updateByUidSelective"
				method="post">

								<div class="am-form-group">
									<label for="user-name2" class="am-form-label">姓名</label>
									<div class="am-form-content">
										<input type="text" id="username" value="${oldUsers.username}" readonly >

									</div>
								</div>
<!-- 登录账号 -->
								<div class="am-form-group">
									<label for="user-name" class="am-form-label">账号</label>
									<div class="am-form-content">
										<input type="text" name="uid" value="${oldUsers.uid}" readonly >

									</div>
								</div>
<!-- 身份证号 -->							
								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">身份证号</label>
									<div class="am-form-content">
					
										<input type="text" class="form-control" name="idcard"
							value="${oldUsers.idcard}" id="idcard" onblur="checkCard()"
							readonly>
									</div>
								</div>
<!-- 性別 -->
								<div class="am-form-group">
									<label class="am-form-label">性别</label>
									<div class="am-form-content sex">
										<label class="am-radio-inline">
											<input type="radio" name="sex" id="group1" value="0" data-am-ucheck> 男
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="sex" id="group2" value="1" data-am-ucheck> 女
										</label>
										<label class="am-radio-inline">
											<input type="radio" name="radio10" value="secret" data-am-ucheck> 保密
										</label>
									</div>
								</div>
<!-- 生日 -->
								<div class="am-form-group">
									<label for="user-birth" class="am-form-label">生日</label>
									<div class="am-form-content">
									
										<input type="date" class="form-control" name="birthday"
							value="${oldUsers.birthday}" id="birthday"
							onblur="checkBirthday()">
									</div>
									
								</div>
<!-- 电话 -->								
								<div class="am-form-group">
									<label for="user-phone" class="am-form-label">电话</label>
									<div class="am-form-content">
									<input type="hidden" name="id" value="${userbyid.id}" />
										<input
							type="text"  name="tell" value="${oldUsers.tell}" id="tell" onblur="checkTell()">

									</div>
								</div>
<!-- 家庭住址 -->								
								<div class="am-form-group">
									<label for="user-email" class="am-form-label">家庭住址</label>
									<div class="am-form-content">
										<input type="text" name="address"
							value="${oldUsers.address}" id="address" onblur="checkAddress()">

									</div>
								</div>
<!-- 保存修改按钮 -->						
								<div class="info-btn">
									<div class="am-btn am-btn-danger">保存修改</div>
								</div>

							</form>
						</div>

					</div>

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
							<a href="#">恒望科技</a>
							<b>|</b>
							<a href="#">商城首页</a>
							<b>|</b>
							<a href="#">支付宝</a>
							<b>|</b>
							<a href="#">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
							<a href="#">关于恒望</a>
							<a href="#">合作伙伴</a>
							<a href="#">联系我们</a>
							<a href="#">网站地图</a>
							<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
						</p>
					</div>
				</div>
			</div>
<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
			
		</div>


</body>
</html>
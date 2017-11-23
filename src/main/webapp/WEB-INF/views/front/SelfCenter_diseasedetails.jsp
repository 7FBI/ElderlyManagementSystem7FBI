<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的病历</title>

		<link href="/resources/front/css/self_exchange/footstyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
</head>
<body>
<jsp:include page="Self_header.jsp"></jsp:include>
<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
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

					<div class="user-foot">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的病历</strong> / <small>My medical records</small></div>
						</div>
						<hr/>

						<!-- 病例 -->
					<c:if test="${empty diseaseDetails }">
						<div style="margin-left: 60px;width: 92%;margin: 0 auto;">
							<font size="6" color="orange">您的身体很健康哦！无患病记录哟</font>
						</div>
					</c:if>
					<c:if test="${!empty diseaseDetails }">
						<c:forEach items="${diseaseDetails }" var="diseaseDetails"
							varStatus="c">
							<div style="margin-left: 30px;width: 92%;margin: 0 auto;">
								<table class="table table-hover table-bordered" align="center">
									<tr class="success">
										<th colspan="2"><font size="4">疾病${c.count}</font></th>

									</tr>
									<%-- <tr>
										<td width="15%">用户名</td>
										<td>${diseaseDetails.oldDiseasedetails.uid }</td>
									</tr> --%>
									<tr>
										<td width="15%">病名</td>
										<td>${diseaseDetails.diseaselibrary.diseasename }</td>
									</tr>
									<tr>
										<td>病别名</td>
										<td>${diseaseDetails.diseaselibrary.alias }</td>
									</tr>
									<tr>
										<td>就诊日期</td>
										<td><fmt:formatDate value="${diseaseDetails.oldDiseasedetails.treatTiem }" pattern="yyyy-MM-dd" /></td>
									</tr>
									<tr>
										<td>病描述</td>
										<td style="word-wrap:break-word">${diseaseDetails.diseaselibrary.description }</td>
									</tr>
									<tr>
										<td>医生建议</td>
										<td style="word-wrap:break-word">${diseaseDetails.oldDiseasedetails.suggest }</td>
									</tr>
								</table>
								<%-- <br> <br> <br>
								病史：${diseaseDetails.oldDiseasedetails.history }<br> <br>
								<br> --%>

							</div>
							<br>
						</c:forEach>
					</c:if>
</div></div>
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
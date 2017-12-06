<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的健康</title>

<link href="/resources/front/css/self_exchange/heathstyle.css"
	rel="stylesheet" type="text/css">

<script src="/resources/front/js/self_exchange/jquery.min.js"></script>
<script src="/resources/front/js/self_exchange/amazeui.js"></script>
</head>
<body style="background:#F8F8F8">
	<!--头 -->
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

					<div class="user-bonus">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">病例</strong> / <small>Cases</small></div>
						</div>
						<hr/>

						<div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">病例详情</a></li>
								
							</ul>

							<div class="am-tabs-bd" >
							<div class="am-tab-panel am-fade am-in am-active" id="tab1">

									<div class="cart-table-th">
										<div class="order-top">
											<div class="th th-from" >
												病名
											</div>
											<div class="th th-remainderprice">
												就诊时间
											</div>
											<div class="th th-term">
												就诊情况
											</div>
											<div class="th th-usestatus">
												就诊意见
											</div>
										</div>
										<div class="clear"></div>
										<div class="order-main">
<c:forEach items="${oldDiseasedetails}" var="oldDiseasedetails">
											<ul class="item-list" >
										
												<li class="td td-from" >
												
													<div class="item-info" >

														<%-- ${oldOldSickness.listOldDiseaselibraries.diseasename} --%>

													</div>
												</li>
												
												<li class="td td-remainderprice">
													<div class="item-remainderprice">
														${oldDiseasedetails.treatTiem}
													</div>
												</li>

												<li class="td td-term ">
													<div class="item-term">
														 ${oldDiseasedetails.history}
													</div>
												</li>

												<li class="td td-usestatus ">
													<div class="item-usestatus ">
														${oldDiseasedetails.suggest}
													</div>
												</li>
												
											</ul>
</c:forEach>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<!--底部-->
				
				

			</div>

			<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
		</div>
</body>
</html>
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<base href="<%=basePath%>">

<title>Insert title here</title>
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="/resources/backstage/Style/skin.css" />
</head>
<body>

	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top"
				background="/resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/left_top_right.gif" width="17"
				height="29" /></td>
			<td valign="top" width="100%"
				background="/resources/backstage/Images/content_bg.gif">
				<!--此处表示右边主体部分的小标题  --> <!-- <table width="100%" height="60px" border="0" cellpadding="0"
					cellspacing="0"
					background="/resources/backstage/Images/content_bg.gif">
					 --> <!-- <td height="31"><div class="title">用户列表</div></td> --> <!-- </table> -->
			</td>
			<td width="16" valign="top"
				background="/resources/backstage/Images/mail_right_bg.gif"><img
				src="/resources/backstage/Images/nav_right_bg.gif" width="16"
				height="29" /></td>
		</tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle"
				background="/resources/backstage/Images/mail_left_bg.gif">&nbsp;</td>
			<!--第一行中间内容-->
			<td valign="top" bgcolor="#F7F8F9">
				 <a href="#" onclick="javascript:history.go(-1);"><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br>
				
				<!-- <div   class="col-md-3  input-group addstyle">
						
                               <input type="text" class="form-control" name="" id="" />
								
								 <span
									class="input-group-btn">
									<a href="#" class="btn btn-primary btn-lg active" role="button"></a>
									
									</span>
								
						     
							
						</div> -->
						<!--  -->
				<%-- <div class="row">
					<div class="col-md-offset-1 col-md-4 addstyle">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-info" type="button">
									<a href="#">Search</a>
								</button>
							</span>
						</div>
						<!-- /input-group -->
					</div>

					<div class="col-md-3 col-md-offset-1 addstyle">
						<a
							href="${pageContext.request.contextPath}/gotoBackstage/register"
							class="btn btn-success"> <!-- <a href="register" class="btn btn-success"> -->
							<span class="glyphicon glyphicon-plus" aria-hidden="true">添加</span>
						</a>

						<!-- /input-group -->
					</div>
				</div> --%>
                <div class="col-md-3 col-md-offset-1 addstyle">
					<a href="${pageContext.request.contextPath}/backstageOldDiseasedetails/addjsp?uid=${uid}"
						class="btn btn-success"> <!-- <a href="register" class="btn btn-success"> -->
						<span class="glyphicon glyphicon-plus" aria-hidden="true">添加就诊记录</span>
					</a>

					<!-- /input-group -->
				</div>
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<!-- <div class="row div_width"> -->
					<!-- 
						<div class="col-md-3 col-md-offset-2">
						

								<a href="register" class="btn btn-success"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true">添加</span>
								</a>
						
							/input-group
						</div> -->


					<!-- <div class="col-md-5">
								
								<input type="text" class="form-control"
									placeholder="Search for..."> <span
									class="input-group-btn"> <a class="btn btn-default">查询</span>
                              
							</div> -->


					<!-- 一条线 -->
					<tr>
						<td height="40" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 商品分类开始 -->
					<tr>
						<td width="4%">&nbsp;&nbsp;&nbsp;</td>

						<td>

							<table width="100%">
								
								<tr>
									<td colspan="2">
										<form action="" method="">
											<table width="100%" class="cont tr_color"
												style="table-layout:fixed;">
											<tr align="center" height="40px"><td colspan="6"><font size="5px">就诊情况</font></td></tr>
												<tr align="center" height="40px" class="td_title_color">
													<th width="80px">序号</th>
													<th width="100px">患者账号</th>

													<th width="100px">就诊时间</th>
													<th width="300px">就诊意见</th>

													<th width="300px">就诊情况</th>

													<th width="150px">操作</th>
												</tr>
												<c:forEach items="${oldDiseasedetails}"
													var="oldDiseasedetails" varStatus="var">
													<tr align="left" class="d">

														<td>${var.count}</td>
														<td>${oldDiseasedetails.uid}</td>

														<td>${oldDiseasedetails.treatTiem}</td>
														<td>${oldDiseasedetails.suggest}</td>

														<td>${oldDiseasedetails.history}</td>

														<td><a
															href="${pageContext.request.contextPath}/backoldSickness/querys.action?oldDiseasedetail_id=${oldDiseasedetails.id}&&uid=${oldDiseasedetails.uid}">详情</a>
															 <a
															href="${pageContext.request.contextPath}/backstageOldDiseasedetails/updatejsp.action?id=${oldDiseasedetails.id}&&uid=${oldDiseasedetails.uid}">修改</a>

															<a
															href="${pageContext.request.contextPath}/backstageOldDiseasedetails/remove.action?id=${oldDiseasedetails.id}&&uid=${oldDiseasedetails.uid}">删除</a>
                                                              
														</td>


													</tr>
												</c:forEach>

											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 商品分类结束 -->
					<tr>
						<td height="100" colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<!--底部信息  -->
						<!-- <td width="2%">&nbsp;</td>
						<td width="51%" class="left_txt"><img
							src="/resources/backstage/Images/icon_mail.gif" width="16"
							height="11"> 客户服务邮箱：rainman@foxmail.com<br /> <img
							src="/resources/backstage/Images/icon_phone.gif" width="17"
							height="14"> 官方网站：<a href="http://h2design.taobao.com/"
							target="_blank">氢设计</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td> -->
					</tr>
				</table>
			</td>
			<td background="/resources/backstage/Images/mail_right_bg.gif">&nbsp;</td>
		</tr>
		<!-- 底部部分 -->
		<tr>
			<td valign="bottom"
				background="/resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/buttom_left.gif" width="17"
				height="17" /></td>
			<td background="/resources/backstage/Images/buttom_bgs.gif"><img
				src="/resources/backstage/Images/buttom_bgs.gif" width="17"
				height="17"></td>
			<td valign="bottom"
				background="/resources/backstage/Images/buttom_right.gif"><img
				src="/resources/backstage/Images/buttom_right.gif" width="16"
				height="17" /></td>
		</tr>
	</table>
</body>
</html>
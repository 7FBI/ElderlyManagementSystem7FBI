<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="/resources/backstage/Style/skin.css" />
</head>
<body>

	<!--  -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top"
				background="/resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/left_top_right.gif" width="17"
				height="29" /></td>
			<td valign="top" width="100%"
				background="/resources/backstage/Images/content_bg.gif">
				<!-- <table width="100%" height="60px" border="0" cellpadding="0"
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
			<a
				href="${pageContext.request.contextPath}/backstage/oldusers/findUserByManagerPage.action"><font
					size="2px" color="blue"> <span
						class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回
				</font></a> 
			<c:if
					test="${empty userdetail}">
					<a
						href="${pageContext.request.contextPath}/backstage/oldusers/findUserByManagerPage.action"><font
						size="2px" color="blue"> <span
							class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回
					</font></a>
					<br>
					<br>
					<div style="margin-left:150px; height: 260px;">
						<font color="green">sorry:<br>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的客官，目前还没有该内容！<br>&nbsp;&nbsp;&nbsp;&nbsp;小编会继续努力的哦！嘿嘿,给笑脸
						</font>
					</div>
				</c:if>


				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<!-- <div class="row div_width"> -->

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
					<c:if test="${!empty userdetail}">

						<!-- 商品分类开始 -->
						<tr>
							<td width="4%">&nbsp;&nbsp;&nbsp;</td>

							<td>

								<table width="100%">
									<tr>
										<td colspan="2">
											<form action="" method="">
												<table width=90% height=0 border=0 align=center>
													<tr>
														<td width="100%" align="center"><font size="+5"
															color="#AAAAAA" face="华文彩云">客户信息详情</font></td>
													</tr>
													<table cellspacing=0 cellpadding=0 border=1 width=90%
														height=400 align=center>
														<tr>
															<td colspan=1 height=5 align=center bgcolor=#D4D4D4 width=18%>姓名
															<td align=center width=25%>${userdetail.username}
															<td colspan=1 align=center bgcolor=#D4D4D4>性别
															<td align=center><c:if test="${userdetail.sex==1}">
                                                                                                                                                                           女
                                                             </c:if> <c:if test="${userdetail.sex==0}">
                                                                                                                                                                                                男
                                                               </c:if>
															<th width=130 rowspan=2><img src="/files${userdetail.userurl}" width="122px"  />
																
														<tr>
															<td colspan=1 height=5 align=center bgcolor=#D4D4D4>账号
															<td align=center>${userdetail.uid}
															<td colspan=1 align=center bgcolor=#D4D4D4>地域
															<td align=center>${userdetail.localarea.provincename}
														<tr>
															<td colspan=1 height=40 align=center bgcolor=#D4D4D4>出生日期
															<td align=center><fmt:formatDate value="${userdetail.birthday}" pattern="yyyy-MM-dd" />
																	
															<td colspan=1 align=center bgcolor=#D4D4D4>电话
															<td align=center colspan=2>${userdetail.tell}
														<tr>
															<td colspan=1 height=40 align=center bgcolor=#D4D4D4>idcard
															<td align=center>${userdetail.idcard}
															<td colspan=1 align=center bgcolor=#D4D4D4>余额
															<td align=center colspan=2>${userdetail.balance}
														<tr>
															<td colspan=1 height=40 align=center bgcolor=#D4D4D4>住址

															
															<td align=center colspan=4>${userdetail.address}</td>
														</tr>

													</table>
											</form>
										</td>
									</tr>
								</table>
					</c:if>
					</td>
					<td width="2%">&nbsp;</td>
					</tr>
					<!-- 商品分类结束 -->
					<tr>
						<td height="50" colspan="4">
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
				</table></td>
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
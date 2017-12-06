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
<link
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
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
			 <td valign="top"  width="100%"
				background="/resources/backstage/Images/content_bg.gif" > 
				
				
				<!-- <table width="100%" height="60px" border="0" cellpadding="0"
					cellspacing="0"
					background="/resources/backstage/Images/content_bg.gif">
					 -->
						<!-- <td height="31"><div class="title">用户列表</div></td> -->
				
					
					
				<!-- </table> -->
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
				<a  href="${pageContext.request.contextPath}/backstage/oldusers//findUserByManagerPage.action" ><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;用户列表</font></a>
              <a  href="${pageContext.request.contextPath}/backstageOldDiseasedetails/querys.action?
															uid=${uid}"><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;就诊情况</font></a>
	
	
				
			
						<div class="row addstyle">
						
						</div>
						
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行 可在此处添加描述或者其他内容-->
					
					
	
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

							<table  width="100%">
								<tr>
									<td colspan="2">
										<form action="" method="">
											<table width="100%" class="cont tr_color"
												style="table-layout:fixed;">
												<tr align="center" height="40px"><td colspan="3"><font size="5px">疾病详情请</font></td></tr>
												<tr align="center" height="40px" class="td_title_color">
													<!-- <th width="100px">序号</th> -->
													<th width="130px">病名</th>
													
													<th width="500px">病理特征</th>
													<th width="150px">&nbsp;&nbsp;别名</th>
				
													<!-- <th width="150px">操作</th> -->
												</tr>
												<c:forEach items="${oldSickness}" var="oldSicknes" varStatus="var">
													<tr align="left" class="d">

														<%--有序输出 <td >${var.count}</td> --%>
														<c:forEach items="${oldSicknes.listOldDiseaselibraries}"
					                                        var="listOldDiseaselibrarie">
				                                    	   <td>${listOldDiseaselibrarie.diseasename}</td>
					                                       <td>${listOldDiseaselibrarie.description}</td>
					                                       <td>&nbsp;&nbsp;${listOldDiseaselibrarie.alias}</td>
				                                       </c:forEach>
														<%-- <td ><a
															href="${pageContext.request.contextPath}/oldusers/deleteUserById.action?oldDiseasedetail_id=${oldDiseasedetails.id}">删除</a>
															<a
															href="${pageContext.request.contextPath}/oldusers/queryUserById.action?oldDiseasedetail_id=${oldDiseasedetails.id}">修改</a>
                                                          
															</td> --%>
                                      
								
													</tr>
												</c:forEach>

											</table>
										</form>
									</td>
								</tr>
						<!-------------------- 推荐商品-------------------------->
									
								<tr>
									<td colspan="2">
										<form action="" method="">
									
											<table width="100%" class="cont tr_color"
												>
												
												<tr align="center" height="40px" class="td_title_color" width="100%">
													<!-- <th width="100px">商品名称</th>
													<th width="180px">商品价格</th>
													
													<th width="120px">病理特征</th>
													<th width="150px">商品图片</th> -->
				
													<!-- <th  width="50%">推荐商品</th> -->
												</tr>
											<tr align="center" height="40px" class="td_title_color" width="100%">
											<td colspan="4"><font size="5px">推荐商品</font></td></tr>	
								
												<c:forEach items="${listMatchdiseaseMap}" var="listMatchdiseaseMap">
													<tr><td colspan="4"><font size="4px">适用${listMatchdiseaseMap.getKey()}</font></td></tr>
													<%-- <c:forEach items="${listMatchdiseaseMap.getValue()}" var="listMatchdisease"> --%>
												
													<tr align="left">
                                                      <c:forEach items="${listMatchdiseaseMap.getValue()}" var="listMatchdisease" varStatus="var">
														 <td >
														 <img src="${listMatchdisease.product.producturl}" width="240px" height="190px"/>${listMatchdisease.product.producturl}
														 <br>${listMatchdisease.product.pname}
					                                      
					                                    <br>
					                                       <font style="color: red ;font-size:3px;">￥:${listMatchdisease.product.price}</font>
														</td>
													  </c:forEach>
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
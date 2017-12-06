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
				<a  href="${pageContext.request.contextPath}/returninfo/querys.action?
															uid=${uid}" ><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br>
				<!-- <div   class="col-md-3  input-group addstyle">
						
                               <input type="text" class="form-control" name="" id="" />
								
								 <span
									class="input-group-btn">
									<a href="#" class="btn btn-primary btn-lg active" role="button"></a>
									
									</span>
								
						     
							
						</div> -->
				<div class="row">
				<form action="${pageContext.request.contextPath}/oldusers/selectuserbyconditions.action" method="post">
				<div class="col-md-offset-1 col-md-4 addstyle">
						<div class="input-group">
							<input type="text" class="form-control" name="findbycondition" 
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-info" type="submit">
								<!-- <a href="#">   </a> -->
								<!-- <a href="#" type="submit" role="button">Search</a> -->
			                   <!--  <input type="submit" value="Search"> -->
								Search
								</button> 
									
							</span>
						</div>
				</form>
					
					<%-- <div class="col-md-offset-1 col-md-4 addstyle">
						<div class="input-group">
							<input type="text" class="form-control" id="findbycondition" name="findbycondition"
								placeholder="Search for..."/>
								<span
								class="input-group-btn">
								<button class="btn btn-info" type="button">
								<a href="${pageContext.request.contextPath}/oldusers/selectuserbyconditions.action?findbycondition=${findbycondition}">Search</a>
								</button> 
									
							</span>
						</div> --%>
					
						<!-- /input-group -->
					</div>

					<div class="col-md-3 col-md-offset-1 addstyle">
						<a
							href="${pageContext.request.contextPath}/returnshopping/addjsp?returnid=${returnid}&&uid=${uid}"
							class="btn btn-success"> <!-- <a href="register" class="btn btn-success"> -->
							<span class="glyphicon glyphicon-plus" aria-hidden="true">添加回访销售记录</span>
						</a>

						<!-- /input-group -->
					</div>
				</div>

				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
				
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
												<tr align="center" height="50px"><td colspan="6"><font size="5px">回访销售列表</font></td></tr>
												<tr align="center" height="40px" class="td_title_color" width="100%">
													<th >商品名</th>
													<th >单价</th>
													<th >购买数量</th>
													<th >商品描述</th>	
													<th >图片</th>
													<th >总价</th>
													<th >操作</th>
												</tr>
												<%-- <c:forEach items="${localArea}" var="localArea" varStatus="var"> --%>
													<c:forEach items="${listReturnShoppings}" var="listReturnShopping">
													<tr align="left" class="d">
                                                       
														<%-- <td>${var.count}</td> --%>
														<td>${listReturnShopping.products.pname}</td>
					                                    <td>${listReturnShopping.products.price}</td>
					                                     <td>${listReturnShopping.shoppingcount}</td>
					                                    <td>${listReturnShopping.products.pdescription}</td>
					                                   <%--  <td>${listReturnShopping.products.count}</td> --%>
					                                    <td><img src="/fbiImage${listReturnShopping.products.producturl}" width="50px" height="60px"/></td>                     
					                                    <%-- <td>${listReturnShopping.id}</td>
					                                    <td>${listReturnShopping.returnid}</td> --%>
					                                    <td>${listReturnShopping.shoppingcount*listReturnShopping.products.price}</td>
					                                      <td><a href="${pageContext.request.contextPath}/returnshopping/updatejsp.action?returnid=${listReturnShopping.returnid}&&id=${listReturnShopping.id}&&uid=${uid}">修改</a> 
					                                          <a href="${pageContext.request.contextPath}/returnshopping/remove.action?returnid=${listReturnShopping.returnid}&&id=${listReturnShopping.id}&&uid=${uid}">删除</a> </td>	
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
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
				<%-- <a  href="${pageContext.request.contextPath}/backstage/oldusers/queryAllUsers.action" ><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br> --%>
				<!-- <div   class="col-md-3  input-group addstyle">
						
                               <input type="text" class="form-control" name="" id="" />
								
								 <span
									class="input-group-btn">
									<a href="#" class="btn btn-primary btn-lg active" role="button"></a>
									
									</span>
								
						     
							
						</div> -->
						<c:if test="${empty olduser}">
						<a  href="${pageContext.request.contextPath}/backstage/oldusers/findUserByManager.action" ><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br>
                                <div style="margin-left:150px; height: 260px;">
                               <font color="orange" >sorry:<br>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的客官，目前还没有该用户哦！<br>&nbsp;&nbsp;&nbsp;&nbsp;小编会继续努力的哦！嘿嘿,给笑脸</font> 
                                </div>  
                           </c:if>
                

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
					<c:if test="${!empty olduser}">
				<div class="row">
				<form action="${pageContext.request.contextPath}/backstage/oldusers/selectuserbyconditions.action" method="post">
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
							href="${pageContext.request.contextPath}/backstage/oldusers/gotoregister.action"
							class="btn btn-success"> <!-- <a href="register" class="btn btn-success"> -->
							<span class="glyphicon glyphicon-plus" aria-hidden="true">添加用户</span>
						</a>

						<!-- /input-group -->
					</div>
				</div>
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
												<tr align="center" height="50px"><td colspan="9"><font size="5px">用户列表</font></td></tr>
												<tr align="center" height="40px" class="td_title_color">
													<th width="100px">序号</th>
													<th width="180px">姓名</th>
													<!--  <td width="50px" nowrap>性别</td>
		                                          	   <td width="300px" nowrap>身份证号</td>
			                                           <td width="200px" nowrap>出生日期</td>
			                                           <td width="200px" nowrap>电话</td>
			                                           <td width="200px" nowrap>住址</td> -->
													<th width="120px">地域</th>
													<th width="150px">登录账号</th>
													<!--  <td width="300px" nowrap>密码</td>
			                                           <td width="600px" nowrap>照片</td> -->
													<th width="100px">回访情况</th>
													<th width="100px">病例情况</th>
													<th width="100px">参加活动</th>
													<th width="100px">购买记录</th>
													<th width="150px">操作</th>
												</tr>
												 <c:forEach items="${olduser }" var="olduser" varStatus="var"> 
													<%-- <c:forEach items="${requestScope.olduser.lists}" var="olduser" varStatus="var"> --%>
													<tr align="left" class="d">

														<td>${var.count}</td>
														<td>${olduser.username}</td>
														<%-- <td width="50px" nowrap>${olduser.sex}</td>
			<td width="300px" nowrap>${olduser.idcard}</td>
			<td width="200px" nowrap>${olduser.birthday}</td>
			<td width="200px" nowrap>${olduser.tell}</td>
			<td width="200px" nowrap>${olduser.address}</td> --%>
														<td>${olduser.localarea.provincename}</td>
														<td>${olduser.uid}</td>
														<%-- <td width="300px" nowrap>${olduser.password}</td>
			<td width="600px" nowrap>${olduser.userurl}</td> --%>
															<td><a href="${pageContext.request.contextPath}/returninfo/querys.action?
															uid=${olduser.uid}">回访记录</a></td>
														<td>
														<a
															href="${pageContext.request.contextPath}/backstageOldDiseasedetails/querys.action?
															uid=${olduser.uid}">病例详情</a>
															
															
														</td>
														<td></td>
														<td></td>
														<td><a
															href="${pageContext.request.contextPath}/backstage/oldusers/deleteUserById.action?id=${olduser.id}" onclick="return confirm('确定要删除吗')" role="button" class="btn btn-danger btn-sm">删除</a>
															<a
															href="${pageContext.request.contextPath}/backstage/oldusers/queryUserById.action?id=${olduser.id}" role="button" class="btn btn-warning btn-sm">修改</a>


															<a
															href="${pageContext.request.contextPath}/backstage/oldusers/queryUserdetail.action?id=${olduser.id}" role="button" class="btn btn-info btn-sm">详情</a></td>

													</tr>
												</c:forEach>

											</table>
											</c:if>
											<%-- <table  border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td class="td2">
   <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/backstage/oldusers/searchByPage.action?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/backstage/oldusers/searchByPage.action?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>

       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/backstage/oldusers/searchByPage.action?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/backstage/oldusers/searchByPage.action?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</td>
</tr>
</table> --%>
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
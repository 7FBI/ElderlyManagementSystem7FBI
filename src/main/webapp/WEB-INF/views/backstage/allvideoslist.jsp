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
				<%-- <a  href="${pageContext.request.contextPath}/backstage/video/allvideoslist.action" ><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	 --%>
				
						 
                  <c:if test="${empty allVideos}">
                               <a  href="${pageContext.request.contextPath}/backstage/video/allvideoslist.action?"><font size="2px" color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br><br>
                                <div style="margin-left:100px; height: 260px;">
                               <font color="pink" >sorry:<br>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的客官，目前还没有该内容！<br>&nbsp;&nbsp;&nbsp;&nbsp;小编会继续努力的哦！嘿嘿,给笑脸</font> 
                                </div>  
                           </c:if>
                    

				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					

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
					<c:if test="${!empty allVideos}">        
				<div class="row">
				<form action="${pageContext.request.contextPath}/backstage/video/findvideos.action" method="post">
				<div class="col-md-offset-1 col-md-4 addstyle">
						<div class="input-group">
							<input type="text" class="form-control" name="queryVideoByConditions" 
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
					
					
					</div>

					<div class="col-md-3 col-md-offset-1 addstyle">
						<a
							href="${pageContext.request.contextPath}/gotoBackstage/addvideo"
							class="btn btn-success"> <!-- <a href="register" class="btn btn-success"> -->
							<span class="glyphicon glyphicon-plus" aria-hidden="true">添加视频</span>
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
												<tr align="center" height="50px"><td colspan="5"><font size="5px">用户列表</font></td></tr>
												<tr align="center" height="40px" class="td_title_color">
													<th>序号</th>
													<th>视频名称</th>
													<!-- <th>主讲教师</th>
													
													<th>价格</th>
													<th>内容描述</th>
													
													<th>视频</th> -->
													<th>适用疾病</th>
													<th>推荐用户</th>
													<th>操作</th>
												</tr>
												<c:forEach items="${allVideos}" var="allVideos" varStatus="var">
													<tr align="left" class="d">

														<td>${var.count}</td>
														<td>${allVideos.vtitle}</td>
														<%-- <td>${allVideos.vteacher}</td>
														
														<td>${allVideos.vprice}</td>
														<td nowrap>${allVideos.vcontent}</td>
														<td>
														  <video width="200" height="160" controls>
                                                            <source src="/files${allVideos.vurl}"  type="video/mp4">
                                                            <source src="/files${allVideos.vurl}"  type="video/ogg">
                                                            <!-- 如果浏览器不支持video标签，则使用flash -->
                                                             <embed src="/files${allVideos.vurl}" type="application/x-shockwave-flash"
                                                                width="240" height="160" allowscriptaccess="always" allowfullscreen="true"></embed>
                                                                                                                                                                 您的浏览器不支持视频播放
                                                           </video>
														${allVideos.vurl}
														</td> --%>
														<td><a href="${pageContext.request.contextPath}/backstage/matchpeoplbyevideo/videoanddisease.action?vid=${allVideos.id}">适用疾病</a></td>
														<td>
														<a
															href="${pageContext.request.contextPath}/backstage/matchpeoplbyevideo/finduserbyvideo.action?id=${allVideos.id}">推荐用户</a>
														</td>
														<td><a
															href="${pageContext.request.contextPath}/backstage/video/deletevideo.action?id=${allVideos.id}" onclick="return confirm('确定要删除吗')" role="button" class="btn btn-danger btn-sm">删除</a>
															<a
															href="${pageContext.request.contextPath}/backstage/video/selectvideobyid.action?id=${allVideos.id}" role="button" class="btn btn-warning btn-sm">修改</a>
                                                           <a
															href="${pageContext.request.contextPath}/backstage/video/videodetailbyid.action?id=${allVideos.id}" role="button" class="btn btn-info btn-sm">详情</a>

															</td>

													</tr>
												</c:forEach>
                                 
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
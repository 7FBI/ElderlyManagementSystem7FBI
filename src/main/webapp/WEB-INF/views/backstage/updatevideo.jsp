<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!-- 引用c标签库 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'register.jsp'</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<link href="/resources/css/register.css" rel="stylesheet"
	type="text/css">
<!-- 验证 -->

<script type="text/javascript" language="javascript"
	src="/resources/js/videoandeducheck.js"></script>

</head>

<body>

	<%-- <a href="${pageContext.request.contextPath}/edu/alledu.action"><font
		color="blue"> <span class="glyphicon glyphicon-backward"
			aria-hidden="true"></span>&nbsp;返回
	</font></a>
	<br> --%>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top"
				background="/resources/backstage/Images/mail_left_bg.gif"><img
				src="/resources/backstage/Images/left_top_right.gif" width="17"
				height="29" /></td>
			<td valign="top" background="/resources/backstage/Images/content_bg.gif">
                    <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="././Images/content_bg.gif">
                        <tr><td height="31"><div class="title">
                        <!-- <strong><font color="blue">修改内容</font></strong> -->
                        
                        </div></td></tr>
                    </table>
                </td>
                <td width="16" valign="top" background="/resources/backstage/Images/mail_right_bg.gif"><img src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
            </tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle"
				background="/resources/backstage/Images/mail_left_bg.gif">&nbsp;</td>
			<!--第一行中间内容-->
			<td valign="top" bgcolor="#F7F8F9"><a
				href="${pageContext.request.contextPath}/backstage/video/allvideo.action"><font
					size="2px" color="blue"> <span
						class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回
				</font></a> <br> 

				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<!-- <div class="row div_width"> -->

					<!-- 一条线 -->
					<tr>
						<td colspan="4">
							<table width="100%" height="1" border="0" cellpadding="0"
								cellspacing="0" bgcolor="#CCCCCC">
								<tr>
									<td></td>
								</tr>
							</table>
						</td>
					</tr>
					<!-- 商品分类开始 -->
					<tr><td align="center">
								<div class="register_title">
											   <strong>内容修改 </strong>
											</div>
							<HR style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#987cb9,direction:145,strength:15)" width="80%" color=#987cb9 SIZE=3>
								<form class="form-horizontal col-md-offset-1" action="/backstage/video/modifyvideo.action" method="post" enctype="multipart/form-data" onsubmit="return videocheck()">
			                            <div class="form-group col-md-offset-2">
			                               <label for="vprice" class="col-sm-2 control-label">标&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;题</label>
			
			                                  <div class="col-sm-6">
				                                 <input type="text" class="form-control" name="vtitle" value="${oneVideoById.vtitle}"
					                                   placeholder="视频名称" id="vtitle" onblur="titleCheck()">
			
			                                  </div>
				                              <div class="pleft">
	  			                                  <font color="red"><p id="error1"></p></font>
		                                          <font color="green"><p id="success1"></p></font>
		                                       </div>
			
		                             </div>
											
											<div class="form-group col-md-offset-2">
												<label for="vteacher" class="col-sm-2 control-label">主讲老师</label>
												<input type="hidden" name="id" value="${oneVideoById.id}">
												<div class="col-sm-6">
													<input type="text" class="form-control" name="vteacher"
														value="${oneVideoById.vteacher}" placeholder="主讲老师"
														id="vteacher" onblur="teacherCheck()">

												</div>
												<div class="pleft">
													<font color="red"><p id="error5"></p></font>
		                                           <font color="green"><p id="success5"></p></font>
												</div>
												
											</div>

											<div class="form-group col-md-offset-2">
												<label for="vcontent" class="col-sm-2 control-label">内容描述</label>
												<div class="col-sm-6">
													<textarea  class="form-control" rows="10" cols="70" name="vcontent" id="vcontent" onblur="contentCheck()">${oneVideoById.vcontent}</textarea>
												</div>
												<div class="pleft">
													<font color="red"><p id="error3"></p></font> <font
														color="green"><p id="success3"></p></font>
												</div>

											</div>
										<div class="form-group col-md-offset-2">
			<label for="vprice" class="col-sm-2 control-label">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</label>
			
			<div class="col-sm-6">
				<input type="text" class="form-control" name="vprice" value="${oneVideoById.vprice}"
					placeholder="价格" id="vprice" onblur="priceCheck()">
			
			</div>
				<div class="pleft">
	  			 <font color="red"><p id="error2"></p></font>
		         <font color="green"><p id="success2"></p></font>
		         </div>
			
		</div>

											<div class="form-group col-md-offset-2">
												<label for="vurl" class="col-sm-2 control-label">视&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;频</label>
												<div class="col-sm-3">
													<input type="file" name="file" multiple="multiple"
														id="vurl" onfocus="checkvideoUrl()"
														onblur="checkUrl()" />
												</div>
												<div class="pleft">
													<font color="red"><p id="error7"></p></font> <font
														color="green"><p id="success7"></p></font>
												</div>
											</div>
											
											<!-- 按钮 -->
											<div class="row">
												<div class="col-sm-offset-3 col-md-3">
													<br>
													<button type="submit" class="btn btn-success">修改</button>
													<button type="reset" class="btn btn-warning">重置</button>
												</div>
											</div>
										</form>
								
							</td></tr>
						
					<!-- 商品分类结束 -->
					<tr>
						<td height="20" colspan="4">
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

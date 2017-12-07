<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="/resources/backstage/Style/skin.css" />
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top" background="./Images/mail_left_bg.gif">
				<img src="./Images/left_top_right.gif" width="17" height="29" />
			</td>
			<td valign="top" background="./Images/content_bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0" background="././Images/content_bg.gif">
					<tr>
						<td height="31"><div class="title">信息发布编辑</div></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top" background="./Images/mail_right_bg.gif"><img
				src="./Images/nav_right_bg.gif" width="16" height="29" /></td>
		</tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle" background="./Images/mail_left_bg.gif">&nbsp;</td>
			<!--第一行中间内容-->
			<td valign="top" bgcolor="#F7F8F9">
				<table width="100%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<!-- 空白行-->
					<tr>
						<td colspan="2" valign="top">&nbsp;</td>
						<td>&nbsp;</td>
						<td valign="top">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="4">
							<table>
								<tr>
									<td width="100" align="center"><img
										src="./Images/mime.gif" /></td>
									<td valign="bottom"><h3 style="letter-spacing: 1px;">在这里，您可以根据您的需求，填写网站参数！</h3></td>
								</tr>
							</table>
						</td>
					</tr>
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
					
					<!-- 产品列表开始 -->
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="96%">
							<table width="100%">
								<tr>
									<td colspan="2">
										<table width="100%" class="cont tr_color">
											<tr>
												<th>序列</th>
												<th>信息标题</th>
												<th>信息内容简介</th>
												<th>发布日期</th>
												<th>信息类型</th>
												<th>图片路径</th>
												<th>信息编辑</th>
											</tr>
											<c:forEach items="${frontinformation}" var="f" varStatus="d">
												<tr align="center" class="d">
													<td>${d.index}</td>
													<td>${f.newstitle }</td>
													<td>${f.newscontent }</td>
													<td><fmt:formatDate value="${f.sendtiem }" pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<td>${f.kinds }</td>
													<td>${f.frontpicture }</td>
													<td><button class="btn" do="delete" value="${f.id }">删除</button>
														<button class="btn" do="update" value="${f.id }">编辑</button></td>
												</tr>
											</c:forEach>
										</table>
										<table width="100%" class="cont tr_color">
											<tr>
												<td>
													<button page="page" class="btn" value="0">首页</button>&nbsp;
													<button page="page" class="btn" value="${page-1}">上一页</button>&nbsp;
													<button page="page" class="btn" value="${page}">${page+1}</button>&nbsp;
													<button page="page" class="btn" value="${page+1}">下一页</button>&nbsp;
													<button page="page" class="btn" value="${counts}">尾页(${counts+1})</button>&nbsp;
													跳至: <input page="page" type="text" style="width: 60px"
													class="text" />&nbsp;
													<button id="jumpBtn" class="btn">跳转</button>&nbsp;
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 产品列表结束 -->
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
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="51%" class="left_txt"><img
							src="./Images/icon_mail.gif" width="16" height="11">
							客户服务邮箱：rainman@foxmail.com<br /> <img
							src="./Images/icon_phone.gif" width="17" height="14"> 官方网站：<a
							href="http://h2design.taobao.com/" target="_blank">氢设计</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td background="./Images/mail_right_bg.gif">&nbsp;</td>
		</tr>
		<!-- 底部部分 -->
		<tr>
			<td valign="bottom" background="./Images/mail_left_bg.gif"><img
				src="./Images/buttom_left.gif" width="17" height="17" /></td>
			<td background="./Images/buttom_bgs.gif"><img
				src="./Images/buttom_bgs.gif" width="17" height="17"></td>
			<td valign="bottom" background="./Images/mail_right_bg.gif"><img
				src="./Images/buttom_right.gif" width="16" height="17" /></td>
		</tr>
	</table>


	<script type="text/javascript"
		src="/resources/unity/jquery/jquery-3.2.0.js"></script>
	
	<script type="text/javascript">
		$("button[page='page']").on('click', function() {
			var p = $(this).val();
			var f = $("form[name='sousuo']");
			window.location.href = "/backstage/info/allInfo?page=" + p;
			$.ajax({
				type : 'post',
				url : '',
				data : f,
				errory : function() {
					alert("网络出问题了");
				}
			})
		})
		$("#jumpBtn").on('click', function() {
			var p = $("input[page='page']").val() - 1;
			window.location.href = "/backstage/info/allInfo?page=" + p;
		})

		$("button[do='delete']").click(function() {
			var d = $(this).val();
			window.location.href = "/backstage/info/deleteInfo?id=" + d;
		})

		$("button[do='update']").click(function() {
			var d = $(this).val();
			window.location.href = "/backstage/info/updateInfo?id=" + d;
		})
	</script>

</body>
</html>
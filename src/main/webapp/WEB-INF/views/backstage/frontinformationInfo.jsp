<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="/resources/backstage/Style/skin.css" />

<style type="text/css">
img {
	width: auto;
	height: auto;
	max-width: 100%;
	max-height: 100%;
}
</style>
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
						<td height="31"><div class="title">信息详情页</div></td>
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
									<td valign="bottom"><h3 style="letter-spacing: 1px;">
											<a href="/backstage/info/allInfo">返回上页</a>
										</h3></td>
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
					<!-- 添加产品开始 -->
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="96%">
							<table width="100%">
								<tr>
									<td colspan="2">
										<form action="/backstage/info/updateInfoValues?id=${id}"
											method="post" enctype="multipart/form-data">
											<table width="100%" class="cont">

												<tr>
													<td width="2%">&nbsp;</td>
													<td width="15%">信息标题：</td>
													<td width="25%"><input class="text" type="text"
														name="newstitle" value="${frontinformation.newstitle}" /></td>
													<td>设置信息名称</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td width="15%">发布时间：</td>
													<td width="25%"><input class="text" type="text"
														name="sendtiem" id="date"
														value="${frontinformation.sendtiem}"/></td>
													<td>设置信息名称</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>描述(Description)：</td>
													<td><textarea name="newscontent">${frontinformation.newscontent}</textarea></td>
													<td>信息简短描述</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td colspan="3"><input class="btn" type="submit"
														value="修改" /></td>
													<td>&nbsp;</td>
												</tr>
											</table>
										</form>
										<form
											action="/backstage/info/updateInfoImage?id=${id}&frontpicture=${frontinformation.frontpicture}"
											method="post" enctype="multipart/form-data">
											<table width="100%" class="cont">
												<tr>
													<td width="2%">&nbsp;</td>
													<td>信息图片：</td>
													<td width="20%">
														<button upImage="up" class="btn">修改图片</button>
													</td>
													<td><button class="btn" type="submit">确认修改图片</button></td>
													<td><img src="/fbiImage${frontinformation.frontpicture}" /></td>
													<td width="2%">&nbsp;</td>
												</tr>
											</table>
										</form>
										<hr /> <!--  --> <c:forEach items="${list}" var="imgs"
											varStatus="i">
											<form
												action="/backstage/infoImage/updateInfoImageValue?infoid=${imgs.infoid}&id=${imgs.id}"
												name="file" method="post" enctype="multipart/form-data">
												<table width="100%" class="cont">
													<tr>
														<td><textarea name="imagecontent">${imgs.imagecontent}</textarea></td>
														<td><input class="btn" type="submit" value="修改" /></td>
													</tr>
												</table>
											</form>
											<!--  -->
											<form
												action="/backstage/infoImage/updateInfoImages?infoid=${imgs.infoid}&imagepath=${imgs.imagepath}&id=${imgs.id}"
												name="file" method="post" enctype="multipart/form-data">
												<table width="100%" class="cont">
													<tr>
														<td><button upImage="up" class="btn">修改图片</button></td>
														<td><input class="btn" type="submit" value="修改" /></td>
														<td><img width="60px" height="90px"
															src="/fbiImage${imgs.imagepath}"></td>
													</tr>
												</table>
											</form>
										</c:forEach>

										<form
											action="/backstage/infoImage/addInfoImages?infoid=${frontinformation.id}"
											method="post" enctype="multipart/form-data">
											<table width="100%" class="cont">
												<tr>
													<td valign="bottom" id="addBtnImage"><button
															type="button" class="btn">添加附加图片</button></td>
												</tr>
												<tr id="addImageContent"></tr>
											</table>
											<input class="btn" type="submit" value="确认添加图片" />
										</form>

									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 添加活动结束 -->
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
	<script src="/resources/unity/layer/layui.js"></script>
	<!-- 改成你的路径 -->
	<script>
		//执行一个laydate实例
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#date' //指定元素
			});
		});
	</script>
	<script type="text/javascript">
		$("#addBtnImage")
				.click(
						function() {
							var htmlf = '<td>&nbsp;</td><td><input type="file" name="files" /></td><td>&nbsp;</td>';
							var htmli = '<td>&nbsp;</td><td><textarea name="imageContent"></textarea></td><td>&nbsp;</td>';
							var fdiv = $("#addBtnImage");
							var idiv = $("#addImageContent");
							fdiv.before(htmlf);
							idiv.before(htmli);
						})
		$("button[upImage='up']").on('click', function() {
			var fhtml = '<input type="file" name="file" />';
			var b = $(this);
			b.before(fhtml);
			b.remove();
		})
	</script>

</body>

</html>
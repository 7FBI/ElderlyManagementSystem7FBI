<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<td height="31"><div class="title">管理员添加信息</div></td>
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
					<!-- 添加产品开始 -->
					<tr>
						<td width="2%">&nbsp;</td>
						<td width="96%">
							<table width="100%">
								<tr>
									<td colspan="2">
										<form action="/backstage/info/addInfo" method="post"
											enctype="multipart/form-data">
											<table width="100%" class="cont">

												<tr>
													<td width="2%">&nbsp;</td>
													<td width="15%">信息标题：</td>
													<td width="25%"><input class="text" type="text"
														name="newstitle" value="" /></td>
													<td>设置信息名称</td>
													<td width="2%">&nbsp;</td>
												</tr>

												<tr>
													<td width="2%">&nbsp;</td>
													<td>信息图片：</td>
													<td width="20%"><input type="file" name="file" /></td>
													<td>上传信息图片</td>
													<td width="2%">&nbsp;</td>
												</tr>

												<tr>
													<td>&nbsp;</td>
													<td>信息分类：</td>
													<td><select name="kinds">
															<option selected="true">新闻</option>
															<option>喜讯</option>
															<option>公告</option>
													</select></td>
													<td>设置产品分类</td>
													<td>&nbsp;</td>
												</tr>

												<tr>
													<td>&nbsp;</td>
													<td>描述内容：</td>
													<td><textarea name="newscontent"></textarea></td>
													<td>信息简短描述</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td width="15%">发布日期：</td>
													<td width="25%"><input class="text" id="date"
														type="text" name="sendtiem" value="" /></td>
													<td>设置信息发布日期</td>
													<td width="2%">&nbsp;</td>
												</tr>
											</table>
											<table>
												<tbody>
													<tr>
														<td valign="bottom" id="addBtnImage"><button
																type="button" class="btn">添加附加图片</button></td>
													</tr>
													<tr id="addImageContent">
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td>&nbsp;</td>
														<td colspan="3"><input class="btn" type="submit"
															value="提交" /></td>
														<td>&nbsp;</td>
													</tr>
												</tfoot>
											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 添加信息结束 -->
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
</body>
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript" src="/resources/unity/layer/layui.js"></script>
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
</script>
</html>
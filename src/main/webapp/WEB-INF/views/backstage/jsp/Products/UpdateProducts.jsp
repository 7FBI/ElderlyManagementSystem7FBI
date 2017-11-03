<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>商品信息修改</title>
 <link rel="stylesheet" type="text/css" href="../resources/ManagerInfo_login/css/skin.css" />
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
  	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<!-- 头部开始 -->
		<tr>
			<td width="17" valign="top"
				background="/resources/ManagerInfo_login/picuters/mail_left_bg.gif"><img
				src="/resources/ManagerInfo_login/picuters/left_top_right.gif" width="17"
				height="29" /></td>
			<td valign="top"
				background="/resources/ManagerInfo_login/picuters/content_bg.gif">
				<table width="100%" height="31" border="0" cellpadding="0"
					cellspacing="0"
					background="/resources/ManagerInfo_login/picuters/content_bg.gif">
					<tr>
						<td height="31"><div class="title">添加商品</div></td>
					</tr>
				</table>
			</td>
			<td width="16" valign="top"
				background="/resources/ManagerInfo_login/picuters/mail_right_bg.gif"><img
				src="/resources/ManagerInfo_login/picuters/nav_right_bg.gif" width="16"
				height="29" /></td>
		</tr>
		<!-- 中间部分开始 -->
		<tr>
			<!--第一行左边框-->
			<td valign="middle"
				background="/resources/ManagerInfo_login/picuters/mail_left_bg.gif">&nbsp;</td>
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
										src="/resources/ManagerInfo_login/picuters/mime.gif" /></td>
									<td valign="bottom"><h3 style="letter-spacing:1px;">在这里，您可以根据您要上架的商品，填写商品参数！</h3></td>
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
										<form action="${pageContext.request.contextPath }/backstage/Store/updateProducts.action" method="post" enctype="multipart/form-data">
											 <input class="text" type="hidden" name="id" value="${products2.id }" />
											<table width="100%" class="cont">	  
												<tr>
													<td width="2%">&nbsp;</td>
													<td width="15%">产品名称：</td>
													<td width="25%"><input class="text" type="text"
														name="pname" value="${products2.pname }" /></td>
													<td>修改产品名称</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品大小：</td>
													<td width="20%"><input class="text" type="text"
														name="size" value="${products2.size }" /></td>
													<td>设置产品大小 尺寸</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品颜色：</td>
													<td width="20%"><input class="text" type="text"
														name="productscolor" value="${products2.productscolor }" /></td>
													<td>设置产品颜色</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品属性1：</td>
													<td width="20%"><input class="text" type="text"
														name="ProductsType1" value="${products2.productstype1 }" /></td>
													<td>设置产品其他属性</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品属性2：</td>
													<td width="20%"><input class="text" type="text"
														name="ProductsType2" value="${products2.productstype2 }" /></td>
													<td>设置产品其他属性</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品价格：</td>
													<td width="20%"><input class="text"
														style="width:100px;" type="text" name="price" value="${products2.price }" /></td>
													<td>填写产品价格</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>库存量：</td>
													<td width="20%"><input class="text"
														style="width:50px;" type="text" name="count" value="${products2.count }" /></td>
													<td>添加商品数量</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>产品分类：</td>
													<td><select name="tid">
															<option selected="true" >请选择...</option>
															<c:forEach items="${calssification }" var="calssification">
															<option value="${calssification.id}" name="tid">${calssification.classname}</option>
															</c:forEach> 
													</select>
													</td>
													<td>该产品属于 ${type}类</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td>描述(Description)：</td>
													<td><textarea name="pdescription" value="${products2.pdescription }"></textarea></td>
													<td>产品简短描述</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td width="2%">&nbsp;</td>
													<td>产品展示图片：</td>
													<td width="20%"><input type="file" name="file"/></td>
													<td>上传产品图片</td>
													<td width="2%">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
													<td colspan="3">
													<input class="btn" type="submit"
														value="提交" /></td>
													<td>&nbsp;</td>
												</tr>
											</table>
										</form>
									</td>
								</tr>
							</table>
						</td>
						<td width="2%">&nbsp;</td>
					</tr>
					<!-- 添加产品结束 -->
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
							src="/resources/ManagerInfo_login/picuters/icon_mail.gif" width="16"
							height="11"> 客户服务邮箱：rainman@foxmail.com<br /> <img
							src="/resources/ManagerInfo_login/picuters/icon_phone.gif" width="17"
							height="14"> 官方网站：<a href="http://h2design.taobao.com/"
							target="_blank">有问题，请找隔壁老王！</a></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			</td>
			<td background="/resources/ManagerInfo_login/picuters/mail_right_bg.gif">&nbsp;</td>
		</tr>
		<!-- 底部部分 -->
		<tr>
			<td valign="bottom"
				background="/resources/ManagerInfo_login/picuters/mail_left_bg.gif"><img
				src="/resources/ManagerInfo_login/picuters/buttom_left.gif" width="17"
				height="17" /></td>
			<td background="/resources/ManagerInfo_login/picuters/buttom_bgs.gif"><img
				src="/resources/ManagerInfo_login/picuters/buttom_bgs.gif" width="17"
				height="17"></td>
			<td valign="bottom"
				background="/resources/ManagerInfo_login/picuters/mail_right_bg.gif"><img
				src="/resources/ManagerInfo_login/picuters/buttom_right.gif" width="16"
				height="17" /></td>
		</tr>
	</table>
</body>
</html>


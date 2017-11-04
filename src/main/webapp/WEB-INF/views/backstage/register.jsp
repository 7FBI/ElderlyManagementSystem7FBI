<%request.setCharacterEncoding("UTF-8");%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
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

<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/registercheck.js"></script>

</head>

<body>
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
				href="${pageContext.request.contextPath}/backstage/oldusers/queryAllUsers.action"><font
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
					<tr><td >
							<div class="col-md-offset-2"
								style="font-size: 26px;color: #9fdfdc;font-family: "楷体";text-align:left;width:80%; margin: 0 auto;">
								<span class="glyphicon glyphicon-user" aria-hidden="true">
								</span>&nbsp;注册新会员

								<HR
									style="FILTER: progid:DXImageTransform.Microsoft.Shadow(color:#987cb9,direction:145,strength:15)"
									width="80%" color=#987cb9 SIZE=3>
							</div>


							<form  class="form-horizontal col-md-offset-2"
		action="/backstage/oldusers/insterOldUsers.action" method="Post"
		enctype="multipart/form-data" onsubmit="return userscheck()">
        
		<!-- <div><div>姓名:<input onblur="username()" id="uname"></div><div id="xm"></div></div>
		<div><div>密码:<input onblur="passwod()" id="passwd"></div><div id="mm"></div></div>
 -->		<div class="form-group col-md-offset-3">
			<label for="username" class="col-sm-2 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="username"
					placeholder="用户姓名" id="username" onblur="usenameCheck()">
			
			</div>
				<div class="pleft">
	  			 <font color="red"><p id="error1"></p></font>
		         <font color="green"><p id="success1"></p></font>
		         </div>
			<!--  -->
			<!-- <div class="pleft"><p class="msg"><i class="ati"></i></p></div>
			<div class="pleft"><label><span></span><b id="count"></b></label></div>	 -->
		</div>
		<div class="form-group col-md-offset-3">
			<label for="sex" class="col-sm-2 control-label">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
			<div class="col-sm-3 ">
				&nbsp;&nbsp;<input type="radio" name="sex" id="group1" value="0" checked="checked"><label>男</label>
				&nbsp;&nbsp; <input type="radio" name="sex" id="group2" value="1"><label>女</label>
			</div>
			<div class="pleft"><p class="msg"><i class="ati"></i></p></div>
			<!-- <div class="float_left st-error" id="err2"></div> -->
		</div>
		<div class="form-group col-md-offset-3">
			<label for="idcard" class="col-sm-2 control-label">身份证号</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="idcard" id="idcard" onblur="checkCard()"
					placeholder="身份证号">
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error2"></p></font>
		         <font color="green"><p id="success2"></p></font>
		         </div>
			<!-- <div class="pleft"><p class="msg"><i class="ati"></i></p></div> -->
			<!-- <div class="float_left st-error" id="err3"></div> -->
		</div>
		<div class="form-group col-md-offset-3">
			<label for="birthday" class="col-sm-2 control-label">出生日期</label>
			<div class="col-sm-3 am-datepicker-date">
					<input type="date" class="form-control" name="birthday" id="birthday" onblur="checkBirthday()"
					> 
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error9"></p></font>
		         <font color="green"><p id="success9"></p></font>
		         </div>
		</div> 
		<!-- <div class="form-group col-md-offset-3">
			<label class="col-sm-2 control-label" for="birthday">出生年月</label>
			<div class="col-sm-3  ">
				<div class="input-group date">

					<input type="text" class="form-control" name="birthday"
						id="datetimepicker" placeholder="yyyy/MM/dd"> <span class="input-group-addon"><i
						class="glyphicon glyphicon-th"></i></span>
				</div>
			</div>
		</div> -->
		<div class="form-group col-md-offset-3">
			<label for="tell" class="col-sm-2 control-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="tell" id="tell" onblur="checkTell()" placeholder="电话">
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error3"></p></font>
		         <font color="green"><p id="success3"></p></font>
		         </div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="area" class="col-sm-2 control-label">所属地域</label>
			<div class="col-sm-3">
				<!--  <select class="form-control" name="area">
					<option value="2">北京</option>
					<option value="3">江苏</option>
					<option value="4">上海</option>
					<option value="5">浙江</option>
					<option value="6">天津</option>
				</select>-->
				<input type="hidden" class="form-control" name="area" value="${manager.locaid}" readonly>
				<input type="text" class="form-control" value="${mangerArea.localarea.provincename}" readonly>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="address" class="col-sm-2 control-label">家庭住址</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="address" id="address" onblur="checkAddress()"
					placeholder="住址">
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error4"></p></font>
		         <font color="green"><p id="success4"></p></font>
		         </div>
		</div>


	
		<div class="form-group col-md-offset-3">
			<label for="uid" class="col-sm-2 control-label">登录账号</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="uid" id="uid" onblur="uidCheck()"
					placeholder="登录账号">
					 
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error5"></p></font>
		         <font color="green"><p id="success5"></p></font>
		         </div>
			<c:if test="${!empty error}">
                <div><span style="color: red">${err}</span></div>
            </c:if>
		</div>
		
            
		<div class="form-group col-md-offset-3">
			<label for="password" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" name="password" id="password" onblur="passwordCheck()"
					placeholder="密码">
			 
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error6"></p></font>
		         <font color="green"><p id="success6"></p></font>
		         </div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="password" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="pass_wd" onblur="pass_wdCheck()"/>
				
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error7"></p></font>
		         <font color="green"><p id="success7"></p></font>
		         </div>
			 
		</div>
		
   
    
		<div class="form-group col-md-offset-3">
			<label for="userurl" class="col-sm-2 control-label">头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</label>
			<div class="col-sm-3">
				<input type="file" name="file" multiple="multiple" id="userurl" onblur="checkUrl()"/>
			</div>
			
			<div class="pleft">
	  			 <font color="red"><p id="error8"></p></font>
		         <font color="green"><p id="success8"></p></font>
		         </div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-sm-offset-3 col-md-3">
				<br>
				<button type="submit" class="btn btn-success">Sign in</button>
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

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

<script type="text/javascript"
	src="/resources/unity/datetimepicker/jquery.js"></script>
<!-- 验证 -->

<script type="text/javascript" language="javascript" src="/resources/js/registercheck.js"></script>

</head>

<body>
	
	<a  href="${pageContext.request.contextPath}/oldusers/queryAllUsers.action" ><font  color="blue"> 
	
              <span class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回</font></a>
	<br>
	<form  class="form-horizontal col-md-offset-2"
		action="/oldusers/modifyUserById.action" method="post"
		enctype="multipart/form-data">

		<label class="register_title"> <strong> <span
				class="glyphicon glyphicon-user" aria-hidden="true"> </span>&nbsp;注册新会员
		</strong></label>
		<div class="form-group col-md-offset-3">
			<label for="username" class="col-sm-2 control-label">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="username" value="${userbyid.username}"
					id="username" onblur="usenameCheck()">
			
			</div>
			<!--  -->
			<div class="pleft">
	  			 <font color="red"><p id="error1"></p></font>
		         <font color="green"><p id="success1"></p></font>
		         </div>	
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
				<input type="text" class="form-control" name="idcard" value="${userbyid.idcard}"
					id="idcard" onblur="checkCard()">
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error2"></p></font>
		         <font color="green"><p id="success2"></p></font>
		         </div>
		</div>
		<!-- <div class="form-group col-md-offset-3">
			<label for="birthday" class="col-sm-2 control-label">出生日期</label>
			<div class="col-sm-3 am-datepicker-date">
					<input type="text" class="form-control" name="birthday"
					placeholder="yyyy/MM/dd"> 
			</div>
		</div> -->
		<div class="form-group col-md-offset-3">
			<label for="birthday" class="col-sm-2 control-label">出生日期</label>
			<%-- <div class="col-sm-3 ">
					<input type="date"  name="birthday" value="${userbyid.birthday}" id="birthday" onblur="checkBirthday()"
					> 
			</div> --%>
			<div class="col-sm-3 am-datepicker-date">
					<input type="date" class="form-control" name="birthday" value="${userbyid.birthday}" id="birthday" onblur="checkBirthday()"
					> 
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error9"></p></font>
		         <font color="green"><p id="success9"></p></font>
		         </div>
		</div> 
		
		<div class="form-group col-md-offset-3">
			<label for="tell" class="col-sm-2 control-label">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label>
			<div class="col-sm-3">
			    <input type="hidden" name="id" value="${userbyid.id}"/>
				<input type="text" class="form-control" name="tell" value="${userbyid.tell}" id="tell" onblur="checkTell()">
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error3"></p></font>
		         <font color="green"><p id="success3"></p></font>
		         </div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="address" class="col-sm-2 control-label">家庭住址</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="address" value="${userbyid.address}" id="address" onblur="checkAddress()"
					>
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error4"></p></font>
		         <font color="green"><p id="success4"></p></font>
		         </div>
		</div>


		<div class="form-group col-md-offset-3">
			<label for="area" class="col-sm-2 control-label">所属地域</label>
			<div class="col-sm-3">
				<select class="form-control" name="area">
					<option value="1" selected="selected">北京</option>
					<option value="2">江苏</option>
					<option value="3">上海</option>
					<option value="4">浙江</option>
					<option value="5">天津</option>
				</select>
			</div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="uid" class="col-sm-2 control-label">登录账号</label>
			<div class="col-sm-3">
				<input type="text" class="form-control" name="uid" value="${userbyid.uid}" readonly
					>
					 
			</div>
			<div class="pleft"><p class="msg"><i class="ati"></i></p></div>
			<c:if test="${!empty error}">
                <div><span style="color: red">${err}</span></div>
            </c:if>
		</div>
		
            
		<div class="form-group col-md-offset-3">
			<label for="password" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" name="password" value="${userbyid.password}" id="password" onblur="passwordCheck()"
					>
			 
			</div>
			<div class="pleft">
	  			 <font color="red"><p id="error6"></p></font>
		         <font color="green"><p id="success6"></p></font>
		         </div>
		</div>
		<div class="form-group col-md-offset-3">
			<label for="password" class="col-sm-2 control-label">确认密码</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" value="${userbyid.password} id="pass_wd" onblur="pass_wdCheck()"/>
				
			</div>
			 <div class="pleft">
	  			 <font color="red"><p id="error7"></p></font>
		         <font color="green"><p id="success7"></p></font>
		         </div>
		</div>
		
   
    
		<%-- <div class="form-group col-md-offset-3">
			<label for="userurl" class="col-sm-2 control-label">头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</label>
			<div class="col-sm-3">
				<input type="file" name="file" multiple="multiple" id="userurl" value="${oldUsers.userurl}"/>
			</div>
			<div class="pleft"><p class="msg"><i class="ati"></i></p></div>
		</div> --%>
		<div class="form-group col-md-offset-3">
			<label for="userurl" class="col-sm-2 control-label">头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</label>
			<div class="col-sm-3">
				<input type="file" name="file" multiple="multiple" id="userurl" value="${userbyid.userurl}" onblur="checkUrl()"/>
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
				<button type="submit" class="btn btn-success">修改</button>
				<button type="reset" class="btn btn-warning">重置</button>
			</div>
		</div>
	</form>

</body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String url = "";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/front/css/style.css"
	type="text/css" media="all" />

<script type="text/javascript"
	src="../../../resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="../../../resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="../../../resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>

</head>
<c:choose>
	<c:when test="${empty profile}">
		<%
			url = "/front/oldUsers/insertProfileByUid.action";
		%>
	</c:when>
	<c:otherwise>
		<%
			url = "/front/oldUsers/updateAddressByPrimarykey.action";
		%>

	</c:otherwise>
</c:choose>

<body>



	<jsp:include page="header.jsp"></jsp:include>


	<section id="single">
		<div class="cat_title" style=" /*  background:yellow;  */  height:168px;width:100%;position:relative;">
    <div class="wrapper" style=" /*  background:green; */    height:168px;width:50%;position:absolute;top:75px;left:0;"><br><br>
      <h2><strong>SelfCenter</strong>个人中心</h2>
      <p>我们的作品，他们的故事<br/>
        Our work, their stories </p>
    
		</div>
  </div>
	<div class="category" >
		<div class="wrapper" >
			<h1>我的资料</h1>

		</div>
	</div>
	<article class="serv_detailed" >
	<div class="selfcenter_detailed" >
		<div class="selfcenter_left">
			<ul>
				<li><a href="/front/oldUsers/selectByUid">个人资料</a></li>
				<br>
				<li><a href="/gotoFront/SelfCenter_updatepassword">修改密码</a></li>
				<br>
				<li><a
					href="/front/oldUsers/selectProfileByUid">地址管理</a></li>
				<br>
				<li><a href="####">个人交易信息</a></li>
			</ul>
		</div>
		<div class="selfcenter_cont">
			<div class="add_address">
				<form id="itemForm" action=<%=url%> method="post">
					<div class="oldUsers_property_dear"></div>
					<!-- 收货人姓名 -->
					<div class="oldUsers_property">
						<label for="username" class="oldUsers_lable">收货人</label>
						<div class="oldUsers_value">
							<input type="hidden" name="uid" value="${uid}"> <input
								type="hidden" name="sid" value="${profile.uid}"> <input
								type="hidden" name="id" value="${profile.id}"> <input
								type="text" class="form-control" name="signname"
								value="${ profile.signname}" id="signname"
								placeholder="长度不超过25个字符" onblur="checkAddress()">


						</div>


						<!-- <div class="oldUsers_warning">
							<font color="red"><p id="error1"></p></font> <font color="green"><p
									id="success1"></p></font>
						</div> -->
					</div>

					<!-- 收货人地址 -->
					<div class="oldUsers_property">
						<label for="address" class="oldUsers_lable">收货地址</label>
						<div class="oldUsers_value">
							<input type="text" class="form-control" name="signaddress"
								value="${ profile.signaddress}" id="signaddress"
								onblur="checkAddress()">
						</div>
						<!-- <div class="oldUsers_warning">
							<font color="red"><p id="error4"></p></font> <font color="green"><p
									id="success4"></p></font>
						</div> -->
					</div>
					<!--电话号码  -->
					<div class="oldUsers_property">
						<label for="tell" class="oldUsers_lable">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话</label>
						<div class="oldUsers_value">
							<input type="hidden" name="id" value="" /> <input type="text"
								class="form-control" name="signtell"
								value="${ profile.signtell}" id="signtell" onblur="checkTell()">
						</div>
						<!-- <div class="oldUsers_warning">
							<font color="red"><p id="error3"></p></font> <font color="green"><p
									id="success3"></p></font>
						</div> -->
					</div>


					<!-- 按钮 -->
					<div class="oldUsers_property_submit">
						<br>
						<button type="submit">保存</button>
					</div>
				</form>


			</div>

			<br> <br> <br>
			<div class="show_address">

				<h4>已保存的地址：</h4>

				<div style="width: 90%; margin: 0 auto;">
					<table class="table table-hover table-bordered">
						<tr class="success">
							<!--  <th>收货人ID</th> -->
							<th>收货人</th>
							<th>收货地址</th>
							<th>电话号码</th>
							<th>用户UID</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${profiles}" var="profiles">
							<tr>

								<td>${ profiles.signname}</td>
								<td>${ profiles.signaddress}</td>
								<td>${ profiles.signtell}</td>
								<td>${ profiles.uid}</td>
								<td><a
									href="/front/oldUsers/updateAddressjsp?id=${profiles.id}&&uid=${profiles.uid}">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="/front/oldUsers/deleteAddressByPrimarykey?id=${profiles.id}&&uid=${profiles.uid}">删除</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>



			</div>

		</div>
		<div class="selfcenter_right" style="float: left;">

			<!-- <h5>大家好</h5>
			<h5>大家好</h5>
			<h5>大家好</h5>
			<h5>大家好</h5>
			<h5>大家好</h5> -->

		</div>
		</div>

		
	

	</article> </section>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
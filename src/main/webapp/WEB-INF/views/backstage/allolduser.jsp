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
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
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
	<br><br> --%> <!-- <div   class="col-md-3  input-group addstyle">
						
                               <input type="text" class="form-control" name="" id="" />
								
								 <span
									class="input-group-btn">
									<a href="#" class="btn btn-primary btn-lg active" role="button"></a>
									
									</span>
								
						     
							
						</div> --> <c:if test="${empty olduser}">
					<a
						href="${pageContext.request.contextPath}/backstage/oldusers/findUserByManager.action"><font
						size="2px" color="blue"> <span
							class="glyphicon glyphicon-backward" aria-hidden="true"></span>&nbsp;返回
					</font></a>
					<br>
					<br>
					<div style="margin-left:150px; height: 260px;">
						<font color="orange">sorry:<br>&nbsp;&nbsp;&nbsp;&nbsp;亲爱的客官，目前还没有该用户哦！<br>&nbsp;&nbsp;&nbsp;&nbsp;小编会继续努力的哦！嘿嘿,给笑脸
						</font>
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
							<form
								action="${pageContext.request.contextPath}/backstage/oldusers/selectuserbyconditions.action"
								method="post">
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

						<!-- 商品分类开始 -->
						<tr>
							<td width="4%">&nbsp;&nbsp;&nbsp;</td>

							<td>

								<table width="100%">
									<tr>
										<td colspan="2">
											<form action="" method="">
												<table width="100%" class="cont tr_color">

													<tr align="center" height="50px">
														<td colspan="7"><font size="5px">用户列表</font></td>
													</tr>
													<tr align="center" height="40px" class="td_title_color">
														<th width="100px">序号</th>
														<th width="180px">姓名</th>

														<th width="120px">地域</th>
														<th width="150px">登录账号</th>
														<!--  <td width="300px" nowrap>密码</td>
			                                           <td width="600px" nowrap>照片</td> -->
														<th width="100px">回访情况</th>
														<th width="100px">病例情况</th>
                                                        <th width="100px">余额</th>
														<th width="200px">操作</th>
													</tr>
													<c:forEach items="${olduser }" var="olduser" varStatus="var">
														
														<%-- <c:forEach items="${requestScope.olduser.lists}" var="olduser" varStatus="var"> --%>
						                                 <tr align="left" class="d" p="${olduser.uid }" n="${olduser.username }">

							                             <td>${var.count}</td>
							                             <td>${olduser.username}</td>

							                             <td>${olduser.localarea.provincename}</td>
							                             <td>${olduser.uid}</td>

							                             <td><a
								                            href="${pageContext.request.contextPath}/returninfo/querys.action?
															uid=${olduser.uid}">回访记录</a></td>
							                            <td><a
								                             href="${pageContext.request.contextPath}/backstageOldDiseasedetails/querys.action?
															    uid=${olduser.uid}">病例详情</a>
 
						                            	</td>
                                                      <td><a
								                        href="${pageContext.request.contextPath}/backstage/oldusers//queryUserByIdaddMoney.action?id=${olduser.id}"
								                        role="button" class="btn btn-success btn-xs">充值</a>
						                             </td>
							                         <td width="200px"><a
							                        	href="${pageContext.request.contextPath}/backstage/oldusers/deleteUserById.action?id=${olduser.id}"
								                        onclick="return confirm('确定要删除吗')" role="button"
								                        class="btn btn-danger btn-xs">删除</a> <a
								                        href="${pageContext.request.contextPath}/backstage/oldusers/queryUserById.action?id=${olduser.id}"
								                        role="button" class="btn btn-warning btn-xs">修改</a> <a
								                        href="${pageContext.request.contextPath}/backstage/oldusers/queryUserdetail.action?id=${olduser.id}"
								                        role="button" class="btn btn-info btn-xs">详情</a></td>

						                           </tr>
						                  </c:forEach>
				                     </table>

				               </form>
			                 </td>
		               </tr>
	           </table>
	    <br>
	<table class="table">
		<tr>
			<td class="form-inline">
				<button page="page" value="0" class="btn btn-default">首页</button>&nbsp;
				<button page="page" class="btn btn-default" value="${page-1}">上一页</button>&nbsp;
				<button page="page" class="btn btn-default" value="${page}">${page+1}</button>&nbsp;
				<button page="page" class="btn btn-default" value="${page+1}">下一页</button>&nbsp;
				<button page="page" class="btn btn-default" value="${counts}">尾页(${counts+1})</button>
				<div class="form-group">
					<label for="exampleInputName2">跳到:</label><input page="page"
						style="width: 60px" type="text" class="form-control"><label
						for="exampleInputName2">&nbsp;页</label>
				</div>
				<button id="jumpBtn" class="btn btn-default">跳转</button>&nbsp;
			</td>
		</tr>
	</table>

	</c:if>
	
	<!-- 商品分类结束 -->
	<tr>
		<td height="50" colspan="4">
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
	
	<center>
		<div style="width: 32%; height: 280px;float: left;" id="pviews1"></div>
		<div style="width: 32%; height: 280px;float: left;" id="pviews2"></div>
		<div style="width: 32%; height: 280px;float: left;" id="pviews3"></div>
	</center>
	
	<script type="text/javascript" src="/resources/unity/js/echarts.min.js"></script>
	<script type="text/javascript" src="/resources/backstage/Js/statisticsProduct.js"></script>
	<script type="text/javascript">
	
	$(document).on('click',".d",function(){
   	 	var trId=$(this);
   	 	loginsNum(trId);
   	 	xiaofeis(trId);
   	 	yearXiaoFei(trId);
    })
    
    function loginsNum(trId) {
		var trHtmls='';
   	 	var titles = '用户每月登录情况';
			var legends = "销售量";
			var documentsId = 'pviews1';
			var col='#0E4ACC';
			$.ajax({
				type:"get",
				url:'/statistics/backStageOluser/loginCount?uid='+trId.attr("p"),
				success:function(data){
					//返回数据
					var xnames = getDates(data.usersLogins);
					var numbers = getSumNum(data.usersLogins);
					setTypeOptionX('件',titles, legends, xnames, numbers,documentsId,col);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			});
	}
    
    
    function  xiaofeis(trId) {
   	 	var trHtmls='';
   	 	var titles = '用户每季消费情况';
			var legends = "销售量";
			var documentsId = 'pviews2';
			var col='#0E4ACC';
			$.ajax({
				type:"get",
				url:'/statistics/backStageOluser/usersGoodsMoneysNow?uid='+trId.attr("p"),
				success:function(data){
					//返回数据
					var xnames = getDates(data.usersLogins);
					var numbers = getSumMoney(data.usersLogins);
					setTypeOptionX('元',titles, legends, xnames, numbers,documentsId,col);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			});
	}
    
    function  yearXiaoFei(trId) {
   	 	var trHtmls='';
   	 	var titles = '用户每年消费情况';
			var legends = "销售量";
			var documentsId = 'pviews3';
			var col='#0E4ACC';
			$.ajax({
				type:"get",
				url:'/statistics/backStageOluser/usersGoodsMoneysYear?uid='+trId.attr("p"),
				success:function(data){
					//返回数据
					var xnames = getDatesYear(data.usersLogins);
					var numbers = getSumMoney(data.usersLogins);
					setTypeOptionX('元',titles, legends, xnames, numbers,documentsId,col);
				},
				error : function() {
					alert("网络错误无法获取数据");
				}
			});
	}
    
    
    
    function getDatesYear(collections) {
    	var pnames = new Array();
    	for ( var k in collections) {
    		pnames[k] = collections[k].dateYear;
    	}
    	return pnames;
    }
	
	
	
		$("#jumpBtn").click(function() {
			var b = $("input[page='page']").val();
			window.location.href = "/backstage/oldusers/findUserByManagerPage.action?page=" + b;
		})
	
		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/backstage/oldusers/findUserByManagerPage.action?page=" + b;
		})
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的活动</title>

		<link href="/resources/front/css/self_exchange/footstyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
</head style="background:#F8F8F8">
<body>
<jsp:include page="Self_header.jsp"></jsp:include>
<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-foot">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我参与的活动</strong> / <small>My Join Activity</small></div>
						</div>
						<hr/>
                  <c:if test="${!empty cancelinfo }">
                  <div style="margin-left: 60px;width: 92%;margin: 0 auto;">
                    <p><font color="red" size="5">${cancelinfo}</font></p>
                    </div> 
                  </c:if>
                  <br>
                   <c:if test="${!empty info }">
                   <div style="margin-left: 60px;width: 92%;margin: 0 auto;">
                    <p><font color="green">${info}</font></p>
                    </div> 
                  </c:if>
                    <br>
						<!-- 活动 -->
					<c:if test="${empty myJoinActivies }">
						<div style="margin-left: 60px;width: 92%;margin: 0 auto;">
							<font size="5" color="orange">您还没有任何参与记录！<br>我们的活动都很精彩，很有趣哦<br>我们期待与您的相见</font>
						</div>
					</c:if>
					<c:if test="${!empty myJoinActivies }">	
							<div style="margin-left: 30px;width: 92%;margin: 0 auto;">
								<table class="table table-hover table-bordered" align="center">
									<tr class="success">
										<th>序号</th>
                                        <th>活动名称</th>
                                        <th>报名日期</th>
                                        <th>操作</th>
									</tr>
							     <c:forEach items="${myJoinActivies }" var="myJoinActivies" varStatus="c">
								   <tr>
										<td>${c.count }</td>
										<td>${myJoinActivies.activitydetailinfo.activitytitle }</td>
										<td><fmt:formatDate value="${myJoinActivies.singtime }" pattern="yyyy-MM-dd hh:mm:ss"/> </td>
										<form action="" id="f">
										    <input value="${myJoinActivies.id}" name="id" type="hidden">			        
			                                <input value="${myJoinActivies.activitydetailinfo.activitystoptime}" name="activitystoptime" type="hidden">
			                                <input value="${myJoinActivies.activitydetailinfo.activityprice}" name="activitypri ce" type="hidden">
			                             
										<td>
										   <a role="button" class="btn btn-xs btn-info" href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${myJoinActivies.activityid}">详情</a> 
										    <button type="button" id="sbmit" class="btn btn-xs btn-warning" onclick="return confirm('您真的要取消吗')">取消</button>		
										   <%--  <a id="sbmit" role="button" class="btn btn-xs btn-warning" href="${pageContext.request.contextPath}/front/joinActive/cancelJoinActive?activitystoptime=${myJoinActivies.activitydetailinfo.activitystoptime}&activityprice=${myJoinActivies.activitydetailinfo.activityprice}&id=${myJoinActivies.id}">取消</a>  --%>
										
										   <a role="button" class="btn btn-xs btn-danger" href="${pageContext.request.contextPath}/front/joinActive/deleteMyJoinActive?id=${myJoinActivies.id}" onclick="return confirm('确定要删除吗')">删除</a> 
										</td>
										   </form>
									</tr> 
							     </c:forEach>
							</table>
							<table class="table" width="100%" style="margin-left: 30px;">
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
						</div>
						
						
					</c:if>
      </div></div>
				<!--底部-->
				
			</div>

			<jsp:include page="SelfCenter_Menu.jsp"></jsp:include>
		</div>
		<script type="text/javascript">
	 $("#jumpBtn").click(function(){
			var b = $("input[page='page']").val();
			window.location.href = "/front/joinActive/selectMyJoinActive?page=" + b;
		})

		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/front/joinActive/selectMyJoinActive?page=" + b;
		})
	</script>
	
	<script type="text/javascript">
		$("#sbmit").click(
				function() {	
						var f = $("#f");
						$.ajax({
							type : 'post',
							url : '/front/joinActive/cancelJoinActive',
							data : f.serialize(),
							success : function(data) {
								if (data == "true") {
									window.location.href='/front/joinActive/selectMyJoinActive';
								} else {
									alert(data);
								}
							},
							error : function() {
								alert("网络错误!!");
							}
						})					
				})
	</script>		
</body>
</html>
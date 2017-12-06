<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<title>活动中心</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="../../../../resources/css/frontactivity.css"
	type="text/css" />
	<!--  -->
	<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.0.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
</head>
<body>
	<jsp:include page="../index_header.jsp" flush="true" />
	<jsp:include page="../header.jsp" flush="true" />

	<%-- <div class="infomation">

<div class="infomation_img">
<img alt="" src="/resources/front/images/infomation_bg.jpg">
</div> 

<div class="infomation_localpostions">
<h3>活动</h3>
<hr>
</div>
<ul class="infomation_list">
<c:forEach items="${allActivities }" var="allActivities">
<li class="list">
<div>
<div><img alt="" src="/files/${onePicture }"></div>

</div>
<div class="list_title"><a href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivities.id}">${allActivities.activitytitle }</a></div>
<div class="list_time"><span><fmt:formatDate value="${allActivities.activitystarttime}" pattern="yyyy-MM-dd " /></span></div>
</li>
</c:forEach>
</ul>
</div>
 --%>
	<div class="activitylist">
		<div class="imgs">
		<c:if test="${!empty onePicture }">
			<img alt="" src="/fbiImage${onePicture.activeimageurl }" width="100%" height="100%">
		</c:if>
		<c:if test="${empty onePicture }">
			<img alt="" src="/resources/upload/front/jianshnegcao2.jpg" width="100%" height="100%">
			<img alt="" src="/resources/upload/front/douniuwu2.jpg" width="100%" height="100%">
		</c:if>
		</div>
		<div class="activitycontent">
			<ul>
				<c:forEach items="${allActivitiyAndPicture }" var="allActivitiyAndPicture">				
					<li>
					<div style="width: 620px;height: 300px;padding: 4px 8px; background-color: white;">
				       <a href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}">
							 <c:if test="${empty onePicture }">
							  <img alt="" src="/resources/upload/front/douniuwu.jpg" width="100%" height="100%"> 
						     </c:if>
							   <img alt="" src="/fbiImage${allActivitiyAndPicture.activeimageurl }" width="100%" height="100%">
							</a>
							</div>
							<div>
						<a
						href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}">&nbsp;&nbsp;&nbsp;&nbsp;<font size="5px">${allActivitiyAndPicture.activitytitle }</font></a>
						<c:if test="${allActivitiyAndPicture.activityStatus==0 }">
						<a 
						   href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}" >&nbsp;&nbsp;&nbsp;&nbsp;
						   <div style="background-color: orange;float: right;margin-right: 10px;width: 180px;height: 50px;text-align: center;border-radius: 10px;">
						   <font size="6px" color="white">
						         活动已结束
						   </font></div></a>
						</c:if>
						<c:if test="${allActivitiyAndPicture.activityStatus==1 }">					
						 <a
						  href="${pageContext.request.contextPath}/front/activity/activeDetailInfo?id=${allActivitiyAndPicture.id}">&nbsp;&nbsp;&nbsp;&nbsp;
						    <div style="background-color:red;float: right;margin-right: 10px;width: 180px;height: 50px;text-align: center;border-radius: 10px;">
						  <font size="6px" color="white">火热进行中</font></div></a>
						</c:if>
						
						<br><br>&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatDate value="${allActivitiyAndPicture.activitystarttime}"
							pattern="yyyy-MM-dd " /> ~ <fmt:formatDate value="${allActivitiyAndPicture.actitvityendtime}" pattern="yyyy-MM-dd"/>
			
			     </div><br>
					</li>
	      </c:forEach>
				
			</ul>	
		</div>
		<br>
		<div class="activitycontent" >
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
	</div>

	<jsp:include page="../footer.jsp" flush="true" /> 
	<script type="text/javascript">
	 $("#jumpBtn").click(function(){
			var b = $("input[page='page']").val();
			window.location.href = "/front/activity/allActive?page=" + b;
		})

		$("button[page='page']").click(function() {
			var b = $(this).val();
			window.location.href = "/front/activity/allActive?page=" + b;
		})
	</script>
</body>
</html>

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
  <title>活动详情</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="stylesheet" href="/resources/front/css/active/style.css"/>
<link href="/resources/front/css/self_exchange/footstyle.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/resources/css/frontactivity.css" type="text/css" media="all"/>
<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="/resources/unity/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="/resources/unity/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<script type="text/javascript"
	src="/resources/unity/jquery/jquery-3.2.1.min.js"></script>
</head>
<body>	
<jsp:include page="../index_header.jsp" flush="true" />
<jsp:include page="../header.jsp" flush="true" />	
	<!--图片轮播  -->
			 
  <div id="lunbo">
    <ul>
       <!--  <li><img src="../../../resources/upload/front/ad5.jpg" alt="..." width="100%"
						height="100%"></li> -->
		<c:forEach items="${activepicutre }" var="activepicutre">			
          <li><img src="/files${activepicutre.activeimageurl }" alt="..." width="100%" height="100%"></li>				
       </c:forEach>	
    </ul>
</div>
	<div style="width: 70%;margin: 0 auto;">
			<c:if test="${!empty err }">
			 <p><font color="red">${err }</font></p>
			</c:if>
			<c:if test="${!empty info }">
			 <p><font color="green">${info }</font></p>
			</c:if>
  <div>
			<div style="margin-left: 300px;">
			<font size="8px" color="pink">${activiteDetail.activitytitle }</font>
			<br><br>
			</div>
			<font size="6px" color="orange">活动日期</font>
				<hr class="hrstyle">
			<div style="margin-left: 150px;font-size: 20px;">
			<br><fmt:formatDate value="${activiteDetail.activitystarttime }" pattern="yyyy-MM-dd" />~
			<fmt:formatDate value="${activiteDetail.actitvityendtime}" pattern="yyyy-MM-dd"/>
			</div><br><br>
			<font size="6px" color="orange">活动地点</font><br>
				<hr class="hrstyle">
			<br><br><div style="margin-left: 150px;font-size: 20px;">${activiteDetail.activitylocation }
			</div><br><br>
			<font size="6px" color="orange">活动内容</font>
			<hr class="hrstyle">
			<br><br><br><div style="margin-left: 150px;font-size: 20px;text-indent: 2em;">${activiteDetail.activitycontent }
			</div><br><font size="6px" color="orange"> 参与价格</font>
				<hr class="hrstyle">
			<br><br><br><div style="margin-left: 150px;font-size: 20px;"><font color="red">${activiteDetail.activityprice }</font>
			</div><br><font size="6px" color="orange">报名截止日期</font>
				<hr class="hrstyle">
			<br><br><br><div style="margin-left: 150px; font-size: 20px;"><fmt:formatDate value="${activiteDetail.activitystoptime }" pattern="yyyy-MM-dd" />
			</div><br>
			<hr>
			<div style="float: right;margin-right: 200px;">
			<form id="f">
			<input value="${activiteDetail.id}" name="id" type="hidden">
			<input value="${activiteDetail.mid}" name="mid" type="hidden">
			<input value="${activiteDetail.activitystoptime}" name="activitystoptime" type="hidden">
			<input value="${activiteDetail.activityprice}" name="activityprice" type="hidden">
			<button type="button" id="sbmit" class="btn btn-info">我要报名</button>
			<%-- <a role="button" class="btn btn-info"
			    href="${pageContext.request.contextPath}/front/joinActive/takeUpInActive?
			    id=${activiteDetail.id}
			    &mid=${activiteDetail.mid}
			    &activitystoptime=${activiteDetail.activitystoptime}
			    &activityprice=${activiteDetail.activityprice }">我要报名</a>	 --%>							
			</form>
			</div>
			<br><br>
			
			</div>
			</div>
			<br><br>
<jsp:include page="../footer.jsp" flush="true" />
</style>
	<script type="text/javascript">
		//因为使用了document，所以js需要放在需要执行的代码下面生效才能生效
		var li = document.getElementById('lunbo').getElementsByTagName("li");
		var num = 0;
		var len = li.length;
	
		setInterval(function() {
			li[num].style.display = "none";
			num = ++num == len ? 0 : num;
			li[num].style.display = "inline-block";
	
		}, 2000); //切换时间
	</script>
	
	<script type="text/javascript">
		$("#sbmit").click(
				function() {	
						var f = $("#f");
						$.ajax({
							type : 'post',
							url : '/front/joinActive/takeUpInActive',
							data : f.serialize(),
							success : function(data) {
								if(data=="login"){
								window.location.href="/gotoFront/login";
								}else if (data == "true") {
									window.location.href="/front/joinActive/selectMyJoinActive";
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
